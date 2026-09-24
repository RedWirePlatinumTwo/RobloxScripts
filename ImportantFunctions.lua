local rebuildString = function(str)
	local reformattedString = ""
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
		["\""] = "\\\"",
		["\\"] = "\\\\"
	}
	
	for i = 1, str:len() do
		local letter = str:sub(i,i)
		local keyCheck = backKeys[letter]
		if keyCheck then
		    reformattedString = reformattedString..keyCheck
		else
		    reformattedString = reformattedString..letter
		end
	end
	
	return reformattedString
end

local function typeCheck(var, type, arg)
	local varType = typeof(var)
	assert(varType == type, ("bad argument #%d (expected %s, got %s)"):format(arg, type, varType))
end

getgenv().GetFamily = function(ins, reverseOrder)
	typeCheck(ins, "Instance", 1)
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

getgenv().GetFullName = function(ins)
	local Pathway = GetFamily(ins)
	
	local function formatChild(name)
		name = rebuildString(name)
		if name:find("%A") then
			return "[\""..name.."\"]"
		else
			return "."..name
		end
	end
	local fullName = ""
	for i, v in ipairs(Pathway) do
		if i == 1 then
			if v == game then
				fullName = "game"
			else
				fullName = v.Name
			end
		else
			if i == 2 and Pathway[1] == game then
				local success, result = pcall(function() return game:GetService(v.ClassName) end)
				if success and result == v then
					fullName = fullName..(":GetService(\"%s\")"):format(v.ClassName)
				else
					fullName = fullName..formatChild(v.Name)
				end
			else
				fullName = fullName..formatChild(v.Name)
			end
		end
	end
	return fullName
end

local catchRepeats = {}
local indexReps = {}
local indexes = {}
local totalTables = 0

getgenv().TableToString = function(Table, TableName, args, isInternalTable)
	typeCheck(Table, "table", 1)
	local output = ""
	args = args or {}
	TableName = TableName or "Table"

	local function setName(t, name)
		if not args.simplify then
    		local function checkRepititions()
    			local amount = (indexReps[name] or 0) + 1
				indexReps[name] = amount
				indexes[t] = if amount > 1 then name.."_"..amount else name
    		end
			name = tostring(name):gsub("%W", "")
			if not loadstring("local "..name) then
				name = "Table_"..name
			end
			if name:len() == 0 or name == "Table_nil" then
				name = "Table"
				checkRepititions()
				return
			end
			checkRepititions()
		else
		    totalTables = totalTables + 1
		    indexes[t] = "Table"..totalTables
		end
	end

	local function getName(t)
		return indexes[t]
	end

	table.insert(catchRepeats, Table)
	if not isInternalTable then
		catchRepeats = {Table}
		indexReps = {}
		indexes = {}
		totalTables = 0
		setName(Table, TableName)
		
		local function getDate(dateFormat)
			local timeStamp = os.time()
			local year = os.date("%Y", timeStamp)
			local month = os.date("%m", timeStamp)
			local day = os.date("%d", timeStamp)
			local format = dateFormat or {"m", "d", "y"}
			local dateStamp = ""
			for i,v in pairs(format) do
				if v == "y" then
					dateStamp = dateStamp..year.."/"
				elseif v == "m" then
					dateStamp = dateStamp..month.."/"
				else
					dateStamp = dateStamp..day.."/"
				end
			end
			dateStamp = dateStamp:sub(1, dateStamp:len() - 1)
			return dateStamp
		end

		output = ("-- Created on %s\n-- Table names:\n%s = {}"):format(getDate(args.dateFormat), getName(Table))
		local reps = {}
	 
		local function defineTables(f)
			for i, v in pairs(f) do
				local function isTable(x)
					if type(x) == "table" and not table.find(reps, x) and not table.find(catchRepeats, x) then
						local tblName = if x == i then v else i
						setName(x, tblName)
						output = output..("\n%s = {}"):format(getName(x))
						table.insert(reps,x)
						defineTables(x)
					end
				end
				isTable(i)
				isTable(v)
			end
		end
		defineTables(Table)
		output = output.."\n-- Properties:"
	 else
		output = getName(Table)
	end
	local name = getName(Table)

		local function writeValue(index, value)
		
			local function isRecursive(tbl)
				return if table.find(catchRepeats, tbl) then getName(tbl) else tostring(tbl)
			end
			
			local serializedIndex = ""
			local indexFormatted, failed1 = Format(index, value, args, true)
			local valueFormatted, failed2 = Format(value, index, args, true)
			if failed2 then
				valueFormatted = isRecursive(value)
			end
			if type(index) == "table" then
				local findNewLine = indexFormatted:find("\n")
				local tblName = ""
				if findNewLine then
					tblName = indexFormatted:sub(1, findNewLine - 1)
					valueFormatted = valueFormatted.."\n"..indexFormatted:sub(findNewLine + 1)
				else
					tblName = indexFormatted
				end
				serializedIndex = ("\n%s[%s]"):format(name, tblName)
			else
				serializedIndex = ("\n%s[%s]"):format(name, indexFormatted)
			end
			if failed1 then
				serializedIndex = ("\n%s[%s]"):format(name, isRecursive(index))
			end
			local failString = ""
			local failIgnore = {"function", "RBXScriptConnection", "RBXScriptSignal", "table"}
			if failed1 or failed2 then
				if args.ignoreUnsupportedValues then
					return ""
				end
				local failPrefix = " --failed to convert types:"
				failString = failPrefix
				if failed1 and not table.find(failIgnore, typeof(index)) then
					failString = failString.." "..typeof(index)
				end
				if failed2 and not table.find(failIgnore, typeof(value)) then
					failString = failString.." "..typeof(value)
				end
				if failString == failPrefix then
					failString = ""
				end
			end
			return serializedIndex.." = "..valueFormatted..failString
			
		end
		
		local extraTables = {}
		local function contextCheck(v1, v2, v3)
			local context = args.additionalCtx and args.additionalCtx(v1, v2, v3) or function() end
			if type(context) == "string" and context ~= "" then
				output = output.." --"..context
			end
		end
		
		local customVals = args.customValues and args.customValues(Table) or {}
		for i, v in pairs(Table) do
			if type(v) ~= "table" then
				if customVals[i] == nil then
					output = output..writeValue(i, v)
				end
				contextCheck(Table, i, v)
			else
				extraTables[i] = v
			end
		end
		for index, value in pairs(customVals) do
			output = output..("\n%s[%s] = %s"):format(name, Format(index), tostring(value))
		end
		for i, v in pairs(extraTables) do
			output = output.."\n"..writeValue(i, v)
			contextCheck(Table, i, v)
		end
		if not isInternalTable then
			output = output.."\n\nreturn "..name
		end
		return output
end

getgenv().tabletostring = TableToString

local formatters = {}

local function addFormat(toStr, ...)
	local args = {...}
	assert(#args ~= 0, "There's no fucking types to assign to!!!!!!!!!!!!!!!!!!!!!!")
	for _, type in pairs(args) do
		formatters[type] = toStr
	end
end

--start of formatters registry
addFormat(function(var)
	return "\""..rebuildString(var).."\""
end, "string")

addFormat(function(var)
	return tostring(var)
end, "EnumItem", "boolean")

addFormat(function(var)
	if var == math.huge then
		return "math.huge"
	elseif var == -math.huge then
		return "-math.huge"
	else
		return tostring(var)
	end
end, "number")

addFormat(function(var, ...)
	if not table.find(catchRepeats, var) then
		return TableToString(var, ...)
	end
end, "table")

addFormat(GetFullName, "Instance")

addFormat(function(var)
	return ("%s.new(%s)"):format(typeof(var), tostring(var)):gsub("{", ""):gsub("}", "")
end, "Vector2", "Vector3", "CFrame", "UDim2", "NumberRange")

addFormat(function(var)
	local function toRGB(num)
		return math.clamp(math.round(num * 255), 0, 255)
	end
	return ("Color3.fromRGB(%d, %d, %d)"):format(toRGB(var.R), toRGB(var.G), toRGB(var.B))
end, "Color3")

addFormat(function(var)
	return ("%s.new(\"%s\")"):format(typeof(var), tostring(var))
end, "BrickColor")

addFormat(function() return "Enum" end, "Enums")

addFormat(function(var)
	return "Enum."..tostring(var)
end, "Enum")

addFormat(function(var)
	local number = formatters.number
	return ("TweenInfo.new(%s, %s, %s, %s, %s, %s)"):format(
		number(var.Time),
		tostring(var.EasingStyle),
		tostring(var.EasingDirection),
		number(var.RepeatCount),
		tostring(var.Reverses),
		number(var.DelayTime)
	)
end, "TweenInfo")
--end of formatters registry

getgenv().Format = function(var, ...)
	local failedConversion = false
	local result = tostring(var)
	local formatter = formatters[typeof(var)]
	if formatter then
		result = formatter(var, ...)
		failedConversion = result == nil
	else
		failedConversion = true
	end
	return result, failedConversion
end

local loggedFunctions = {}
getgenv().loggerSettings = loggerSettings or {
	enabled = true,
	ignored = {},
	ignoreExecutorCalls = false,
	scriptCheck = {}
}

local function ifExecutorCall(caller)
	local ignoreExecutor = loggerSettings.ignoreExecutorCalls
	return (not caller and ignoreExecutor) or not ignoreExecutor
end
local excludedFunctions = {print, pairs, format, tabletostring, getcallingscript, warn, error}

local function createLoggedFunction(original, customLoggerName, unhookedFunc)
	return function(...)
		local args = table.pack(...)
		local retVal = table.pack(original(...))
		local str = "Function "..customLoggerName.." was called!"
		local callingScript = getcallingscript()
		local caller = checkcaller()
		str = str.."\nCalling script: "..if callingScript ~= nil then GetFullName(callingScript) else "nil"
		str = str.."\nCaller type: "..if caller then "Executor" else "Game"
		
		local function listData(tbl, title)
			if tbl.n == 0 then
				str = str..("\n%ss: none!"):format(title)
			else
				for i = 1, tbl.n do
					local formatted = Format(tbl[i])
					str = str..("\n%s %d: %s"):format(title, i, formatted)
				end
			end
		end
		listData(args, "Argument")
		listData(retVal, "Return value")
		
		local scriptSource = loggerSettings.scriptCheck[unhookedFunc]
		if loggerSettings.enabled and not table.find(loggerSettings.ignored, unhookedFunc)
		and ifExecutorCall(caller) and (scriptSource == callingScript or scriptSource == nil) then
			print(str)
		end
		return unpack(retVal, 1, retVal.n)
	end
end

local function scriptAssert(scr, arg)
	if scr then
		assert(typeof(scr) == "Instance" and scr:IsA("Script"), "Expected script source for arg #"..arg)
	end
end

getgenv().FunctionLogger = function(toLog, customLoggerName, fromScript)
	customLoggerName = customLoggerName or "Function"..(#loggedFunctions + 1)
	typeCheck(toLog, "function", 1)
	assert(toLog ~= FunctionLogger and not table.find(excludedFunctions, toLog), "Ignoring requested function to log to prevent recursions")
	scriptAssert(fromScript, 3)

	if table.find(loggedFunctions, toLog) then
		error("This function has already been logged!")
	else
		local loggerFunction
		local funcHook = hookfunction(toLog, function(...)
			return loggerFunction(...)
		end)
		loggerFunction = createLoggedFunction(funcHook, customLoggerName, toLog)
		table.insert(loggedFunctions, toLog)
		loggerSettings.scriptCheck[toLog] = fromScript
		print("logging", customLoggerName.."!")
		return loggerFunction
	end
end

getgenv().rLoggedFunctions = rLoggedFunctions or {Any = {}}
getgenv().ignoredInstances = ignoredInstances or {}

getgenv().RobloxFunctionLogger = function(funcParent, funcName, logAny, fromScript)
    local result = funcParent[funcName]
	assert(typeof(funcParent) == "Instance" and typeof(result) == "function", "Not a roblox function")
	scriptAssert(fromScript, 4)
	if not logAny then
		rLoggedFunctions[funcParent] = rLoggedFunctions[funcParent] or {}
	end
    local data = if logAny then rLoggedFunctions.Any else rLoggedFunctions[funcParent]
	local key = if logAny then funcName..funcParent.ClassName else funcName
	assert(data[key] == nil, "This roblox function is already logged")
	data[key] = createLoggedFunction(result, funcName, result)
	loggerSettings.scriptCheck[result] = fromScript
	if logAny then
		print("Logged all roblox calls for", funcName)
	else
		print("Logged roblox calls for", funcName, "for Instance", GetFullName(funcParent))
	end
end

getgenv().customNameCalls = customNameCalls or {
	GetFamily = GetFamily,
	GetFullPath = GetFullName,
	LogFunction = RobloxFunctionLogger
}

if not ImportantFuncs_initNameCallHook then
	getgenv().ImportantFuncs_initNameCallHook = true
	local logHook; logHook = hookmetamethod(game, "__namecall", function(self, ...)
		local callMethod = getnamecallmethod()
		
		local logData = rLoggedFunctions[self] --rblx function logger logic
		local any = rLoggedFunctions.Any[callMethod..self.ClassName]
		if not table.find(ignoredInstances, self) then
			if logData and logData[callMethod] then
				return logData[callMethod](self, ...)
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
