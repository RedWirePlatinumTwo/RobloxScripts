local catchRepeats = {}
local indexReps = {}
local indexes = {}
local totalTables = 0

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

getgenv().TableToString = function(Table, TableName, args, isInternalTable)
	local output = ""
	args = args or {}

	local function setName(t, name)
		if not args.simplify then
		    
    		local function checkRepititions()
    			local amount = indexReps[name] or 0
				indexReps[name] = amount + 1
    			if (amount + 1) > 1 then
    				indexes[t] = name.."_"..(amount + 1)
    			else
    				indexes[t] = name
    			end
    		end
			name = tostring(name):gsub("%W", "")
			
			local success = pcall(function()
				return loadstring("local "..name)()
			end)
			
			if not success then
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
						local tblName
						if x == i then
							tblName = v
						else
							tblName = i
						end
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
				if table.find(catchRepeats, tbl) then
					return getName(tbl)
				else
					return tostring(tbl)
				end
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

getgenv().Format = function(var, ...)
	local failedConversion = false
	local output = ""
	if typeof(var) == "EnumItem" or type(var) == "boolean" then
		output = tostring(var)
	elseif type(var) == "number" then
		if var == math.huge then
			output = "math.huge"
		elseif var == -math.huge then
			output = "-math.huge"
		else
			output = tostring(var)
		end
	elseif type(var) == "string" then
		output = "\""..rebuildString(var).."\""
	elseif type(var) == "table" then
		if not table.find(catchRepeats, var) then
			output = TableToString(var, ...)
		else
			failedConversion = true
		end
	elseif typeof(var) == "Instance" then
		output = GetFullName(var)
	elseif typeof(var):find("Vector") or typeof(var) == "CFrame" or typeof(var) == "Color3" or typeof(var) == "UDim2" or typeof(var) == "NumberRange" then
		output = ("%s.new(%s)"):format(typeof(var), tostring(var)):gsub("{", ""):gsub("}", "")
	elseif typeof(var) == "BrickColor" then
		output = ("%s.new(\"%s\")"):format(typeof(var), tostring(var))
	elseif typeof(var) == "Enum" then
		output = "Enum."..tostring(var)
	elseif typeof(var) == "Enums" then
		output = "Enum"
	else
		failedConversion = true
		output = tostring(var)
	end
	return output, failedConversion
end

getgenv().GetFamily = function(ins, reverseOrder)
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
			if i == 2 then
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

getgenv().LogFunctions = true
LoggedFunctions = {}

local excludedfunctions = {print, pairs, format, tabletostring, getcallingscript, warn, error}

getgenv().FunctionLogger = function(funcparent, funcname, customfname)
if not customfname then customfname = funcname end
	if funcparent[funcname] == FunctionLogger or table.find(excludedfunctions, funcparent[funcname]) then error("No.") end
		local oldfunc = funcparent[funcname]
		if typeof(oldfunc) ~= "function" then error("function expected, got "..typeof(oldfunc)) end
		
		local newfunc = function(...)
			local args = {...}
			local str = "Function "..customfname.." was called!"
			str = str.."\nCalling script: "..if getcallingscript() ~= nil then GetFullName(getcallingscript()) else "nil"
			if #args == 0 then
				str = str.."\nArguments: none!"
			else
			
			for i,v in pairs(args) do
				str = str..("\nArgument %d: %s"):format(i, Format(v))
			end
			
			end
			local returnval = {oldfunc(...)}
			if #returnval == 0 then
				str = str.."\nReturn values: none!"
			else
				for i,v in pairs(returnval) do
					str = str..("\nReturn value %d: %s"):format(i, Format(v))
				end
			end
			if LogFunctions then
				print(str)
			end
		    return unpack(returnval)
	    end
		local isFunctionLogged = false
		for i,v in pairs(LoggedFunctions) do
			if v.parent == funcparent and v.name == funcname then
				isFunctionLogged = true
				break
			end
		end
	if isFunctionLogged then
		error("This function has already been logged!")
	else
		local hook
		hook = hookfunction(funcparent[funcname], function(self, ...)
			if self == funcparent then
				newfunc(self, ...)
			end
			return hook(self, ...)
		end)
		table.insert(LoggedFunctions, {["parent"] = funcparent, ["name"] = funcname})
		print("logging", customfname.."!")
		return newfunc
	end
end
