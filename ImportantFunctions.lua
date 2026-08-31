local catchRepeats = {}
local indexReps = {}
local indexes = {}
local totalTables = 0

local rebuildString = function(s)
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
	
	for i = 1, s:len() do
		local letter = s:sub(i,i)
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
	local s = ""
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

		s = ("-- Created on %s\n-- Table names:\n%s = {}"):format(getDate(args.dateFormat), getName(Table))
		local reps = {}
	 
		local function defineTables(f)

			for i, v in pairs(f) do
		
				local function isTable(x)
				if type(x) == "table" and not table.find(reps, x) and not table.find(catchRepeats, x) then
					local tname
					if x == i then
						tname = v
					else
						tname = i
					end
					setName(x, tname)
					s = s..("\n%s = {}"):format(getName(x))
					table.insert(reps,x)
					defineTables(x)
				end
				end
			
				isTable(i)
				isTable(v)
			end
		end

		defineTables(Table)
		s = s.."\n-- Properties:"
	 else
		s = getName(Table)
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
			
			local part1 = ""
			local part1formatted, failed1 = Format(index, value, args, true)
			local part2, failed2 = Format(value, index, args, true)
			if failed2 then
				part2 = isRecursive(value)
			end
			if type(index) == "table" then
				local findwhitespace = part1formatted:find("\n")
				local tname = ""
				if findwhitespace then
					tname = part1formatted:sub(1, part1formatted:find("\n") - 1)
					part2 = part2.."\n"..part1formatted:sub(tname:len() + 2)
				else
					tname = part1formatted
				end
				part1 = ("\n%s[%s]"):format(name, tname)
			else
				part1 = ("\n%s[%s]"):format(name, part1formatted)
			end
			if failed1 then
				part1 = ("\n%s[%s]"):format(name, isRecursive(index))
			end
			local failstring = ""
			local failignore = {"function", "RBXScriptConnection", "RBXScriptSignal", "table"}
			if failed1 or failed2 then
				if args.ignoreUnsupportedValues then
					return ""
				end
				failstring = " --failed to convert types:"
				if failed1 and not table.find(failignore, typeof(index)) then
					failstring = failstring.." "..typeof(index)
				end
				if failed2 and not table.find(failignore, typeof(value)) then
					failstring = failstring.." "..typeof(value)
				end
				if failstring == " --failed to convert types:" then
					failstring = ""
				end
			end
			return part1.." = "..part2..failstring
			
		end
		
		local extraTables = {}
		local function contextCheck(v1, v2, v3)
			local context = args.additionalCtx and args.additionalCtx(v1, v2, v3) or function() end
			if type(context) == "string" and context ~= "" then
				s = s.." --"..context
			end
		end
		
		local customVals = args.customValues and args.customValues(Table) or {}
		for i, v in pairs(Table) do
			if type(v) ~= "table" then
				if customvals[i] == nil then
					s = s..writeValue(i, v)
				end
				contextCheck(Table, i, v)
			else
				extraTables[i] = v
			end
		end
		for index, value in pairs(customVals) do
			s = s..("\n%s[%s] = %s"):format(name, Format(index), tostring(value))
		end
		for i, v in pairs(extraTables) do
			s = s.."\n"..writeValue(i, v)
			contextCheck(Table, i, v)
		end
		if not isInternalTable then
			s = s.."\n\nreturn "..name
		end
		return s
end

getgenv().tabletostring = TableToString

getgenv().Format = function(var, ...)
	local failedConversion = false
	local st = ""
        if typeof(var) == "EnumItem" or type(var) == "boolean" then
            st = tostring(var)
		elseif type(var) == "number" then
			if var == math.huge then
				st = "math.huge"
			elseif var == math.huge * -1 then
				st = "-math.huge"
			else
				st = tostring(var)
			end
        elseif type(var) == "string" then
            st = "\""..rebuildString(var).."\""
        elseif type(var) == "table" then
            if not table.find(catchRepeats, var) then
				st = TableToString(var, ...)
			else
				failedConversion = true
			end
		elseif typeof(var) == "Instance" then
			st = GetFullName(var)
		elseif typeof(var) == "Vector3" or typeof(var) == "Vector2" or typeof(var) == "CFrame" or typeof(var) == "Color3" or typeof(var) == "UDim2" or typeof(var) == "NumberRange" then
			st = ("%s.new(%s)"):format(typeof(var), tostring(var)):gsub("{", ""):gsub("}", "")
		elseif typeof(var) == "BrickColor" then
			st = ("%s.new(\"%s\")"):format(typeof(var), tostring(var))
		elseif typeof(var) == "Enum" then
		    st = "Enum."..tostring(var)
		elseif typeof(var) == "Enums" then
			st = "Enum"
		else
			failedConversion = true
			st = tostring(var)
		end
	return st, failedConversion
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
