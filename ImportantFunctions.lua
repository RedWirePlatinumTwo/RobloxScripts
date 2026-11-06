local rebuildString = function(str)
	local serializedString = ""
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
	
	for i = 1, str:len() do
		local letter = str:sub(i,i)
		local keyCheck = backKeys[letter]
		serializedString = serializedString..(if keyCheck then keyCheck else letter)
	end
	
	return serializedString
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
	simplify (boolean): if true, makes table-naming more straightforward with (presumably) less function work
	additionalCtx (function: string): a function with the arguments: (table, index, value). allows one to provide additional comments when the value is written
		- context will not show up to any index/value line that cannot be serialized
		- it also won't show up in customValues (you'd have to manually include it as part of the value)
	ignoreUnsupportedValues (boolean): if true, any values that Serialize fails at will be omitted from the table output
	customValues (function: table): a function that passes the current Table to supply values for it. values within the table will simply be emitted as a string, ignoring writeValue checks
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

getgenv().TableToString = function(Table, TableName, args, state) --the state param should basically never actually be manually created, but idk how to prevent that
	typeCheck(Table, "table")
	local properties = {}
	local standardIndexTemplate = "%s[%s] = %s"
	args = args or {}
	TableName = TableName or "Root"
	state = state or {
		nameOccurrences = {};
		tableNames = {};
		iTableNames = {};
		totalTables = 0;
		initialized = false;
		dependencies = {};
		dependenciesString = "";
		totalProperties = {};
	}
	local nameOccurrences, tableNames, dependencies, iTableNames, totalProperties =
		state.nameOccurrences, state.tableNames, state.dependencies, state.iTableNames, state.totalProperties

	local function setName(t, name)
		local function addName()
			table.insert(iTableNames, "\n"..tableNames[t].." = {}")
		end
		state.totalTables += 1
		if not args.simplify then
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

	local isRoot = not state.initialized --this is just so "return [table]" can be supplied at the end
	if isRoot then
		state.initialized = true
	end
	setName(Table, TableName)
	local name = getName(Table)
	local customs
	if type(args.customValues) == "function" then
		local customValsSuccess, customValues = thread(args.customValues, false, Table)
		if customValsSuccess and type(customValues) == "table" then
			customs = customValues
		end
	end

	local function addEntry(index, value, doubleNewline)
		local newlines = if doubleNewline then 2 else 1
		local function serializeValue(val, name)
			local nestedContents
			local serialized, failed = Serialize(val, name, args, state) --this needs to run first so nested tables get named + listed properties
			if type(val) == "table" then
				return getName(val), false, serialized
			end
			return serialized, failed
		end
		local serializedIndex, failed1, nested1 = serializeValue(index, value)
		local serializedValue, failed2, nested2 = serializeValue(value, index)
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
			if args.ignoreUnsupportedValues then
				return
			end
			contextString = " (failed to serialize"
			if failed1 then
				contextString = contextString.." [index]:"..typeof(index)
			end
			if failed2 then
				contextString = contextString.." [value]:"..typeof(value)
			end
			contextString = contextString..")"
		end
		local ret = (if indexMayBeNil(index) then "_addNonNilIndex(%s, %s, %s)" else standardIndexTemplate):format(name, serializedIndex, serializedValue)
		table.insert(properties, ("\n"):rep(newlines)..(if isFailure then "--"..ret else ret)..contextString)
		if nested1 then
			table.insert(properties, nested1)
		end
		if nested2 then
			table.insert(properties, nested2)
		end
	end
	
	local extraTables = {}
	for index, value in pairs(Table) do
		if (typeof(index) == "Instance" or typeof(value) == "Instance") and not dependencies.instance then
			dependencies.instance = true
			state.dependenciesString = state.dependenciesString..readInsFunction
		end
		if indexMayBeNil(index) and not dependencies.nilIndex then
			dependencies.nilIndex = true
			state.dependenciesString = state.dependenciesString..nonNilIndexFunction
		end
		if type(index) ~= "table" and type(value) ~= "table" then
			if not customs or customs[index] == nil then
				addEntry(index, value)
			end
		else
			extraTables[index] = value
		end
	end
	
	if customs then
		for index, value in pairs(customs) do
			table.insert(properties, "\n"..standardIndexTemplate:format(name, Serialize(index), tostring(value)))
		end
	end
	
	for index, nestedTbl in pairs(extraTables) do
		addEntry(index, nestedTbl, true)
	end
	local propsString = table.concat(properties)
	if isRoot then
		table.insert(totalProperties, propsString)
		return ("--Table names:%s%s\n--Properties:%s\n\nreturn %s"):format(
			table.concat(iTableNames),
			state.dependenciesString,
			table.concat(totalProperties),
			name
		)
	end
	return propsString
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

addSerializer(function(var, name, args, state)
	if state == nil or not state.tableNames[var] then
		return TableToString(var, name, args, state)
	end
end, "table")

addSerializer(function(var, _, _, state)
	local output = GetFullName(var)
	if not state then
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
	return ("%s.new(\"%s\")"):format(typeof(var), tostring(var))
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
