catchrepeats = {}
indexreps = {}
indexs = {}
local reformatstring = function(s)
	local restring = ""
	local backkeys = {}
    backkeys["0"] = "\0"
    backkeys["a"] = "\a"
    backkeys["b"] = "\b"
    backkeys["f"] = "\f"
    backkeys["n"] = "\n"
    backkeys["r"] = "\r"
    backkeys["t"] = "\t"
    backkeys["v"] = "\v"
    backkeys["'"] = "\'"
    backkeys['"'] = '\"'
	
	for i = 1, s:len() do
	   local letter = s:sub(i,i)
	   local keyfound = false
		
		for i,v in pairs(backkeys) do
		    if letter == v then
		        keyfound = true
		        restring = restring.."\\"..i
		    end
		end
		
		if not keyfound then
		    if letter == "\\" then
		        restring = restring.."\\\\"
		    else
			    restring = restring..letter
			end
		end
	end
	
	return restring
end

getgenv().TableToString = function(Table, TableName, IsInternalTable)
	local s = ""

	local function setname(t, name)
		
		local function checkreps()
			local reps = 0
			table.insert(indexreps,name)
			
			for i,v in pairs(indexreps) do
				if v == name then
					reps = reps + 1
				end
			end
			
			if reps > 1 then
				indexs[name.."_"..reps] = t
			else
				indexs[name] = t
			end
		end
			name = tostring(name):gsub("%W", "")
			
			local success = pcall(function()
				return loadstring("local "..name)()
			end)
			
			if not success then
				name = "Table"..name
			end
			if name:len() == 0 or name == "Tablenil" then
				name = "Table"
				checkreps()
				return
			end
			checkreps()
	end

	local function getname(t)
		
		for i,v in pairs(indexs) do
			if v == t then
				return i
			end
		end
		
	end

	table.insert(catchrepeats, Table)
	if not IsInternalTable then
		catchrepeats = {Table}
		indexreps = {}
		indexs = {}
		setname(Table, TableName)
		s = "-- Table names:\n"..getname(Table).." = {}"
		local reps = {}
	 
		local function definetables(f)

			for i,v in pairs(f) do
		
				local function istable(x)
				if type(x) == "table" and not table.find(reps,x) and not table.find(catchrepeats,x) then
					local tname
					if x == i then
						tname = v
					else
						tname = i
					end
					setname(x, tname)
					s = s.."\n"..getname(x).." = {}"
					table.insert(reps,x)
					definetables(x)
				end
				end
			
				istable(i)
				istable(v)
			end
		end

		definetables(Table)
		s = s.."\n-- Properties:"
	 else
		s = getname(Table)
	end
	local name = getname(Table)

		local function stringmethod(i,v)
		
			local function isrecursivetable(x)
				if table.find(catchrepeats,x) then
					return getname(x)
				else
					return tostring(x)
				end
			end
			
			local part1 = ""
			local part1formatted = Format(i,v,true)
			local part2 = Format(v,i,true)
			
			if part2 == "" then
				part2 = isrecursivetable(v)
			end
			
			if type(i) == "table" then
				local findwhitespace = part1formatted:find("\n")
				local tname = ""
				if findwhitespace then
					tname = part1formatted:sub(1,part1formatted:find("\n")-1)
					part2 = part2.."\n"..part1formatted:sub(tname:len()+2)
				else
					tname = part1formatted
				end
				part1 = "\n"..name.."["..tname.."]"
			else
				part1 = "\n"..name.."["..part1formatted.."]"
			end
			if part1 == "\n"..name.."[]" then
				part1 = "\n"..name.."["..isrecursivetable(i).."]"
			end
			return part1.." = "..part2
			
		end
		
		for i,v in pairs(Table) do
			s = s..stringmethod(i,v)
		end
		s = s.."\n"
		if not IsInternalTable then
			s = s.."\nreturn "..name
		end
		return s
end

getgenv().Format = function(var, tname, IsInternalTable)
	local st = ""
	local supportedtypes = {"number", "boolean", "string", "EnumItem", "table", "Instance", "Vector2", "Vector3", "CFrame", "Color3", "BrickColor","Enum","Enums","UDim2","NumberRange"}
        if typeof(var) == "EnumItem" or type(var) == "boolean" then
            st = tostring(var)
		elseif type(var) == "number" then
			if var == math.huge then
				st = "math.huge"
			elseif var == math.huge * -1 then
				st = "math.huge * -1"
			else
				st = tostring(var)
			end
        elseif type(var) == "string" then
            st = "'"..reformatstring(var).."'"
        elseif type(var) == "table" then
            if not table.find(catchrepeats, var) then
				st = TableToString(var, tname, IsInternalTable)
			end
		elseif typeof(var) == "Instance" then
			st = GetFullName(var)
		elseif typeof(var) == "Vector3" or typeof(var) == "Vector2" or typeof(var) == "CFrame" or typeof(var) == "Color3" or typeof(var) == "UDim2" or typeof(var) == "NumberRange" then
			st = typeof(var)..".new("..tostring(var)..")"
		elseif typeof(var) == "BrickColor" then
			st = typeof(var)..".new('"..tostring(var).."')"
		elseif typeof(var) == "Enum" then
		    st = "Enum."..tostring(var)
		elseif typeof(var) == "Enums" then
		st = "Enum"
		end
	return st
end
getgenv().GetFamily = function(ins, reverseorder)
	local Pathway = {}

	local function _getFamily(v)
		if v.Parent ~= nil then
			if reverseorder then
				table.insert(Pathway, v)
			else
				table.insert(Pathway, 1, v)
			end
			_getFamily(v.Parent)
		else
			if reverseorder then
				table.insert(Pathway, v)
			else
				table.insert(Pathway, 1, v)
			end
		end
	end
		
	_getFamily(ins)
	return Pathway
end

getgenv().GetFullName = function(ins)
	local Pathway = GetFamily(ins)
	local Services = {'Workspace','RunService','GuiService','Stats','SoundService','NonReplicatedCSGDictionaryService','CSGDictionaryService','LogService','ContentProvider','KeyframeSequenceProvider','Chat','MarketplaceService','Players','PointsService','AdService','NotificationService','ReplicatedFirst','HttpRbxApiService','TweenService','TextService','StudioData','StarterPlayer','StarterPack','StarterGui','CoreGui','LocalizationService','TeleportService','JointsService','CollectionService','PhysicsService','BadgeService','Geometry','FriendService','InsertService','GamePassService','Debris','TimerService','CookiesService','UserInputService','KeyboardService','MouseService','VRService','ContextActionService','ScriptService','AssetService','TouchInputService','BrowserService','AppStorageService','AnalyticsService','ScriptContext','','Selection','MeshContentProvider','Lighting','SolidModelContentProvider','GamepadService','ControllerService','CorePackages','RuntimeScriptService','ABTestService','HttpService','RobloxReplicatedStorage','HapticService','RbxAnalyticsService','NetworkClient','EventIngestService','ChangeHistoryService','Visit','GuidRegistryService','PermissionsService','Teams','ReplicatedStorage','TestService','SocialService','PolicyService','MemStorageService','GroupService','SpawnerService','PathfindingService'}

	local function formatchild(s)
		local s = reformatstring(s)
		if s:find("%A") then
			return "['"..s.."']"
		else
			return "."..s
		end
	end

	local fns = ""

	for i,v in pairs(Pathway) do
		if i == 1 then
			fns = v.Name
		else
			if i == 2 then
				if table.find(Services, v.ClassName) then
					fns = fns..":GetService('"..v.ClassName.."')"
				else
					fns = fns..formatchild(v.Name)
				end
			else
				fns = fns..formatchild(v.Name)
			end
		end
	end
	return fns
end

getgenv().LogFunctions = true
LoggedFunctions = {}

getgenv().FunctionLogger = function(funcparent, funcname, customfname)
if not customfname then customfname = funcname end
	if funcparent[funcname] == FunctionLogger or funcparent[funcname] == print or funcparent[funcname] == getrenv().print then error("No.") end
		local oldfunc = funcparent[funcname]
		if typeof(oldfunc) ~= "function" then error("function expected, got "..typeof(oldfunc)) end
		
		local newfunc = function(...)
		
			local function canFormat(thing)
				if type(thing) ~= "table" then
					if Format(thing) == "" then
						return tostring(thing)
					else
						return Format(thing)
					end
				else
					return TableToString(thing)
				end
			end
			
			local args = {...}
			local str = "Function "..customfname.." was called!"
			if getcallingscript() ~= nil then
				str = str.."\nCalling script: "..GetFullName(getcallingscript())
			else
				str = str.."\nCalling script: nil"
			end
			if #args == 0 then
				str = str.."\nArguments: none!"
			else
			
			for i,v in pairs(args) do
				str = str.."\nArgument "..i..": "..canFormat(v)
			end
			
			end
			local returnval = {oldfunc(...)}
			if #returnval == 0 then
				str = str.."\nReturn values: none!"
			else
				
				for i,v in pairs(returnval) do
					str = str.."\nReturn value "..i..": "..canFormat(v)
				end
				
			end
			if LogFunctions == true then
				print(str)
			end
		    return unpack(returnval)
	    end
		local isFunctionLogged = false
		
		for i,v in pairs(LoggedFunctions) do
			if i == funcparent and v == funcname then
				isFunctionLogged = true
				break
			end
		end
		
	if isFunctionLogged then
		error("This function has already been logged!")
	else
		LoggedFunctions[funcparent] = funcname
		funcparent[funcname] = newfunc
		return newfunc
	end
end

local meta 
meta = hookmetamethod(game,"__namecall",function(Self,...)
	local method = getnamecallmethod()
	if getcallingscript() == nil then
		if method == "GetFamily" then
			return GetFamily(Self,...)
		elseif method == "GetFullName" then
			return GetFullName(Self)
		else
			return meta(Self,...)
		end
	else
		return meta(Self,...)
	end
end)
