local backKeys = {
	["\0"] = "\\0",
	["\a"] = "\\a",
	["\b"] = "\\b",
	["\f"] = "\\f",
	["\n"] = "\\n",
	["\r"] = "\\r",
	["\t"] = "\\t",
	["\v"] = "\\v",
	["\'"] = "\\'",
	['"'] = "\\\"",
	["\\"] = "\\\\"
}

local rebuildString = function(str)
	local serializedString = {}
	for i = 1, str:len() do
		local letter = str:sub(i,i)
		serializedString[i] = backKeys[letter] or letter
	end
	
	return table.concat(serializedString)
end

getgenv().thread = function(f, ignoreWarn, ...) --Potassium (the executor) currently fucks up xpcall and pcall in hookmetamethod, so this has become a necessity
	local results = table.pack(coroutine.resume(coroutine.create(f), ...))
	if not results[1] and not ignoreWarn then
		warn(results[2])
	end
	return unpack(results, 1, results.n)
end

getgenv().pthread = function(f, ...) --thread, but with warn automatically suppressed
	return thread(f, true, ...)
end

getgenv().xpthread = function(func, errFunc, ...) --a thread version of xpcall, just because
	local results = table.pack(pthread(func, ...))
	if not results[1] then
		local errResults = table.pack(pthread(errFunc, results[2]))
		if not errResults[1] then
			return false, "error in error handling"
		end
		return false, unpack(errResults, 2, errResults.n)
	end
	return unpack(results, 1, results.n)
end

local function typeCheck(var, type, arg)
	arg = arg or 1
	local varType = typeof(var)
	assert(varType == type, ("invalid argument #%d (expected %s, got %s)"):format(arg, type, varType))
end

getgenv().GetFamily = function(ins, reverseOrder)
	typeCheck(ins, "Instance")
	local Pathway = {ins}
	local par = ins.Parent
	while par ~= nil do
		if reverseOrder then
			table.insert(Pathway, par)
		else
			table.insert(Pathway, 1, par)
		end
		par = par.Parent
	end
	return Pathway
end

getgenv().GetFullName = function(instance)
	local Pathway = GetFamily(instance)
	
	local function serializeChild(ins)
		local name = rebuildString(ins.Name)
		if name:find("%A") then
			return "[\""..name.."\"]"
		else
			return "."..name
		end
	end
	local fullName = ""
	for i, ins in ipairs(Pathway) do
		if i == 1 then
			fullName = if ins == game then "game" else ins.Name
		else
			if i == 2 and Pathway[1] == game then
				local success, result = pthread(game.GetService, game, ins.ClassName)
				if success and result == ins then
					fullName = if result ~= workspace then ("game:GetService(\"%s\")"):format(ins.ClassName) else "workspace"
				else
					fullName = fullName..serializeChild(ins)
				end
			else
				fullName = fullName..serializeChild(ins)
			end
		end
	end
	return fullName
end
--[[ list of contents that args can include:
	simplifyNames (boolean): if true, makes table-naming more straightforward, which can speed up serialization depending on the amount of nested tables
	additionalCtx (function: string): a function with the arguments: (table, index, value). allows one to provide additional comments when the value is written
		- context will not show up to any index/value line that cannot be serialized
	ignoreUnsupportedEntries (boolean): if true, any values that Serialize fails at will be omitted from the table output
	functionEntries (table): A table containing (manually) stringified functions for tables to include.
		- The general layout should be as such, starting from the root of args:
		local args = {
			functionEntries = {
				[Table] = {
					functionOne = "function() print(\"hello world\") end";
				}
			}
		}
		
	If you pass a table *as* an index, you may also pass the following as a nested table:
		indexOrder (table): a plain integer-index table that allows you to set a custom ordering style
			- An example of how this should look, starting from the root of args:
			(for this example, we will say Table = {Value1 = 100, Value2 = 1000, Value3 = 10000})
			local args = {
				[Table] = {
					indexOrder = {"Value1, "Value2", "Value3"} --makes stringified result appear as ordered
				}
			}
		
]]
local readInsFunction = [[

local function _readInstance(fullName)
	local success, result = pthread(function()
		return loadstring("return "..fullName)()
	end)
	return if typeof(result) == "Instance" then result else nil
end]]
local nonNilIndexFunction = [[

local function _addNonNilIndex(tbl, index, value)
	if index ~= nil then
		tbl[index] = value
	end
end]]

local function tableToStringInternal(Table, TableName, args, state)
	typeCheck(Table, "table")
	local properties = {}
	args = args or {}
	typeCheck(args, "table", 3)
	local tableArgs = args[Table]
	TableName = TableName or "Root"
	state = state or {
		nameOccurrences = {};
		tableNames = {};
		iTableNames = {};
		totalTables = 0;
		initialized = false;
		dependencies = {};
		dependenciesString = "";
		failedEntries = {};
	}
	local nameOccurrences, tableNames, dependencies, iTableNames, failedEntries = state.nameOccurrences, state.tableNames, state.dependencies, state.iTableNames, state.failedEntries
	local isRoot = not state.initialized --this is just so "return [table]" can be supplied at the end
	if tableNames[Table] then return end
	if isRoot then
		state.initialized = true
	end
	
	local function setName(t, name)
		local function addName()
			table.insert(iTableNames, "\n"..tableNames[t].." = {}")
		end
		state.totalTables += 1
		if not args.simplifyNames then
    		local function checkRepetitions()
    			local amount = (nameOccurrences[name] or 0) + 1
				nameOccurrences[name] = amount
				tableNames[t] = if amount > 1 then name.."_"..amount else name
				addName()
    		end
			name = tostring(name):gsub("%W", "")
			if not loadstring("local "..name) then
				name = "Table_"..name
			end
			if name == "Table_nil" then
				name = "Table"
				return checkRepetitions()
			end
			return checkRepetitions()
		else
		    tableNames[t] = "Table"..(state.totalTables)
			addName()
		end
	end

	local function getName(t)
		return tableNames[t]
	end
	
	local function indexMayBeNil(index)
		return typeof(index) == "Instance"
	end

	setName(Table, TableName)
	local name = getName(Table)
	local functionEntries = args.functionEntries and args.functionEntries[Table] or {}
	local processed = {}
	local extraTables = {}
	
	local function serializeValue(val, name)
		if type(val) == "table" then
			local nestedContents = tableToStringInternal(val, name, args, state) --this needs to run first so nested tables get named + listed properties
			return getName(val), false, nestedContents
		else
			return Serialize(val, true)
		end
	end

	local function addEntry(index, value)
		if processed[index] then return end
		processed[index] = true
		local serializedIndex, failed1, nested1 = serializeValue(index, value)
		local serializedValue, failed2, nested2
		if functionEntries[index] then
			local funcEntry = tostring(functionEntries[index])
			local func = loadstring("return "..funcEntry)
			func = func and func()
			failed2 = type(func) ~= "function"
			serializedValue = if not failed2 then funcEntry else funcEntry:gsub("\n", "")
		else
			serializedValue, failed2, nested2 = serializeValue(value, index)
		end
		local contextString = ""
		local isFailure = false
		
		if type(args.additionalCtx) == "function" then
			local ctxSuccess, context = thread(args.additionalCtx, false, Table, index, value)
			if ctxSuccess and type(context) == "string" then
				contextString = " --"..context
			end
		end
		
		if failed1 or failed2 then
			isFailure = true
			contextString = " (entry failure"
			if failed1 then
				local indexType = typeof(index)
				contextString = contextString..(" (unserializable index: %s)"):format(indexType)
				failedEntries[indexType] = (failedEntries[indexType] or 0) + 1
			end
			if failed2 then
				if not functionEntries[index] then
					local valueType = typeof(value)
					contextString = contextString..(" (unserializable value: %s)"):format(valueType)
					failedEntries[valueType] = (failedEntries[valueType] or 0) + 1
				else
					contextString = contextString.. " (failed to add function entry)"
				end
			end
			contextString = contextString..")"
		end
		local newlines = if nested1 or nested2 then 2 else 1
		local ret = (if indexMayBeNil(index) then "_addNonNilIndex(%s, %s, %s)" else "%s[%s] = %s"):format(name, serializedIndex, serializedValue)
		if (args.ignoreUnsupportedEntries and not isFailure) or not args.ignoreUnsupportedEntries then
			table.insert(properties, ("\n"):rep(newlines)..(if isFailure then "--"..ret else ret)..contextString)
		end
		if nested1 then
			table.insert(properties, nested1)
		end
		if nested2 then
			table.insert(properties, nested2)
		end
	end
	
	local function dependencyCheck(condition, property, funcString)
		if condition and not dependencies[property] then
			dependencies[property] = true
			state.dependenciesString = state.dependenciesString..funcString
		end
	end
	
	for _, index in ipairs(tableArgs and tableArgs.indexOrder or {}) do
		if Table[index] ~= nil then
			addEntry(index, Table[index])
		end
	end
	
	for index, value in pairs(Table) do
		dependencyCheck(typeof(index) == "Instance" or typeof(value) == "Instance", "readInstance", readInsFunction)
		dependencyCheck(indexMayBeNil(index), "nilIndex", nonNilIndexFunction)
		if type(index) ~= "table" and type(value) ~= "table" then
			addEntry(index, value)
		else
			extraTables[index] = value
		end
	end
	
	table.foreach(extraTables, addEntry)
	table.foreach(functionEntries, addEntry)
	
	local propsString = table.concat(properties)
	if isRoot then
		local fails = ""
		if next(failedEntries) and not args.ignoreUnsupportedEntries then
			fails = {"\n-- failed type(of) totals:"}
			for type, count in pairs(failedEntries) do
				table.insert(fails, ("\n-- %s: %d"):format(type, count))
			end
			fails = table.concat(fails)
		end
		return ("-- Table names:%s%s\n-- Properties:%s\n\nreturn %s%s"):format(
			table.concat(iTableNames),
			state.dependenciesString,
			propsString,
			name,
			fails
		)
	end
	return propsString
end

getgenv().TableToString = function(Table, TableName, args)
	return tableToStringInternal(Table, TableName, args)
end

getgenv().tabletostring = TableToString

local serializers = {}

local function addSerializer(toStr, ...)
	local args = {...}
	assert(#args ~= 0, "There's no fucking types to assign to!!!!!!!!!!!!!!!!!!!!!!")
	for _, type in pairs(args) do
		serializers[type] = toStr
	end
end

--start of serializers registry
addSerializer(function(var)
	return '"'..rebuildString(var)..'"'
end, "string")

addSerializer(function(var)
	return tostring(var)
end, "EnumItem", "boolean")

addSerializer(function(var)
	if var == math.huge then
		return "math.huge"
	elseif var == -math.huge then
		return "-math.huge"
	else
		return tostring(var)
	end
end, "number")

addSerializer(function(var)
	return tableToStringInternal(var)
end, "table")

addSerializer(function(var, forTable)
	local output = GetFullName(var)
	if not forTable then
		return output
	else
		return ("_readInstance(%s)"):format(serializers.string(output))
	end
end, "Instance")

addSerializer(function(var)
	return ("%s.new(%s)"):format(typeof(var), tostring(var)):gsub("{", ""):gsub("}", "")
end, "Vector2", "Vector3", "CFrame", "UDim2", "NumberRange")

addSerializer(function(var)
	local function toRGB(num)
		return math.clamp(math.round(num * 255), 0, 255)
	end
	return ("Color3.fromRGB(%d, %d, %d)"):format(toRGB(var.R), toRGB(var.G), toRGB(var.B))
end, "Color3")

addSerializer(function(var)
	return ("BrickColor.new(\"%s\")"):format(tostring(var))
end, "BrickColor")

addSerializer(function() return "Enum" end, "Enums")
addSerializer(function() return "nil" end, "nil") --i don't think this one will ever apply to anything, but eh

addSerializer(function(var)
	return "Enum."..tostring(var)
end, "Enum")

addSerializer(function(var)
	local number = serializers.number
	return ("TweenInfo.new(%s, %s, %s, %s, %s, %s)"):format(
		number(var.Time),
		tostring(var.EasingStyle),
		tostring(var.EasingDirection),
		number(var.RepeatCount),
		tostring(var.Reverses),
		number(var.DelayTime)
	)
end, "TweenInfo")
--end of serializers registry

getgenv().Serialize = function(var, ...)
	local failedConversion = false
	local result = tostring(var)
	local formatter = serializers[typeof(var)]
	if formatter then
		result = formatter(var, ...)
		failedConversion = result == nil
	else
		failedConversion = true
	end
	return result, failedConversion
end

getgenv().serialize = Serialize

local loggedFunctions = {}
getgenv().loggerSettings = loggerSettings or {
	enabled = true;
	ignored = {};
	ignoreExecutorCalls = false;
	scriptCheck = {};
	rblx = {
		logged = {Any = {}};
		ignoredInstances = ignoredInstances or {};
	};
}

local excludedFunctions = {
	[pairs] = true;
	[ipairs] = true;
	[GetFamily] = true;
	[GetFullName] = true;
	[serialize] = true;
	[tabletostring] = true;
	[getcallingscript] = true;
	[checkcaller] = true;
	[print] = true;
	[warn] = true;
	[error] = true;
	[table.find] = true;
	[table.pack] = true;
	[unpack] = true;
	[table.unpack] = true;
	[pcall] = true;
	[xpcall] = true;
}

local function ifExecutorCall(caller)
	local ignoreExecutor = loggerSettings.ignoreExecutorCalls
	return (not caller and ignoreExecutor) or not ignoreExecutor
end

local function createLoggedFunction(toHook, customLoggerName, funcIdentity, isRblxFunction)
	local stkOverflow = false
	local overflowWarn = false
	return function(...)
		local args = table.pack(...)
		local returnVals = table.pack(toHook(...))
		local scriptSource = loggerSettings.scriptCheck[funcIdentity]
		local callingScript = getcallingscript()
		local caller = checkcaller()
		
		local function unpackReturn()
			return unpack(returnVals, 1, returnVals.n)
		end
		
		if stkOverflow or loggerSettings.ignored[funcIdentity] or not loggerSettings.enabled
		or not ifExecutorCall(caller) or not (scriptSource == callingScript or scriptSource == nil) then
			return unpackReturn()
		end
		
		local str = "Function "..customLoggerName.." was called!"
		str = str.."\nCalling script: "..if callingScript ~= nil then GetFullName(callingScript) else "nil"
		str = str.."\nCaller type: "..if caller then "Executor" else "Game"
		
		local function listData(tbl, title)
			if stkOverflow then
				return false
			end
			local success = xpcall(function()
				tbl.n = tbl.n or #tbl
				if tbl.n == 0 then
					str = str..("\n%ss: none!"):format(title)
				else
					for i = 1, tbl.n do
						local serialized = Serialize(tbl[i])
						str = str..("\n%s %d: %s"):format(title, i, tostring(serialized))
					end
				end
			end, function(err)
				if err:find("stack overflow") then
					stkOverflow = true
					if not overflowWarn then
						overflowWarn = true
						warn("Stack overflow occurred! blocking logs for "..customLoggerName)
					end
				else
					warn("Unexpected logger error: "..err)
				end
			end)
			return success
		end
		local logSuccess = true
		if not isRblxFunction then
			logSuccess = logSuccess and listData(getupvalues(toHook), "Upvalue")
		end
		logSuccess = logSuccess and listData(args, "Argument") and listData(returnVals, "Return value")
		if not logSuccess then return unpackReturn() end
		print(str)
		return unpackReturn()
	end
end

local function scriptAssert(scr, arg)
	local str = ""
	if scr then
		assert(typeof(scr) == "Instance" and scr:IsA("Script"), "Expected script source for arg #"..arg)
		str = "from script source: "..GetFullName(scr)
	end
	return str
end

getgenv().LogFunction = function(toLog, customLoggerName, fromScript)
	customLoggerName = customLoggerName or "Function"..(#loggedFunctions + 1)
	typeCheck(toLog, "function")
	assert(toLog ~= LogFunction and not excludedFunctions[toLog], "Ignoring requested function to log to prevent recursions")
	local scrLine = scriptAssert(fromScript, 3)
	assert(loggedFunctions[toLog] == nil, "This function has already been logged!")
	
	local loggerFunction
	local funcHook = hookfunction(toLog, function(...)
		return loggerFunction(...)
	end)
	loggerFunction = createLoggedFunction(funcHook, customLoggerName, toLog)
	loggedFunctions[toLog] = true
	loggerSettings.scriptCheck[toLog] = fromScript
	print("Logging function", customLoggerName, scrLine)
	return loggerFunction
end

local rLoggedFunctions = loggerSettings.rblx.logged
local ignoredInstances = loggerSettings.rblx.ignoredInstances

getgenv().LogRobloxFunction = function(funcParent, funcName, logAny, fromScript)
    local result = funcParent[funcName]
	assert(typeof(funcParent) == "Instance" and typeof(result) == "function", "Not a roblox function")
	local scrLine = scriptAssert(fromScript, 4)
	if not logAny then
		rLoggedFunctions[funcParent] = rLoggedFunctions[funcParent] or {}
	end
    local data = if logAny then rLoggedFunctions.Any else rLoggedFunctions[funcParent]
	assert(data[result] == nil, "This roblox function is already logged!")
	data[result] = createLoggedFunction(result, funcName, result, true)
	loggerSettings.scriptCheck[result] = fromScript
	if logAny then
		print("Logging all roblox calls for", funcName, scrLine)
	else
		print("Logging roblox calls for", funcName, "from Instance", GetFullName(funcParent), scrLine)
	end
end

getgenv().customNameCalls = customNameCalls or {
	GetFamily = GetFamily;
	GetFullPath = GetFullName;
	LogFunction = LogRobloxFunction;
	IsDestroyed = function(ins)
		return GetFamily(ins)[1] ~= game
	end;
}

if not ImportantFuncs_initNameCallHook then
	getgenv().ImportantFuncs_initNameCallHook = true

	local logHook; logHook = hookmetamethod(game, "__namecall", function(self, ...)
		if typeof(self) ~= "Instance" then --prevent anticheats from using non-Instances to trip detection
			return logHook(self, ...)
		end
		local callMethod = getnamecallmethod()
		local success, result = pthread(function()
			return self[callMethod]
		end)
		if not ignoredInstances[self] and success and typeof(result) == "function" then
			local logData = rLoggedFunctions[self]
			local any = rLoggedFunctions.Any[result]
			if logData and logData[result] then
				return logData[result](self, ...)
			elseif any then
				return any(self, ...)
			end 
		end
		
		local customCall = customNameCalls[callMethod] --custom namecall logic
		if checkcaller() and customCall then
			return customCall(self, ...)
		end
		return logHook(self, ...)
	end)
end
