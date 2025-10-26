local catchrepeats = {}
local indexreps = {}
local indexes = {}
local totaltables = 0
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

getgenv().TableToString = function(Table, TableName, args, IsInternalTable)
	local s = ""
	args = args or {}

	local function setname(t, name)
		if not args.simplify then
		    
    		local function checkreps()
    			local amount = indexreps[name] or 0
				indexreps[name] = amount + 1
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
				checkreps()
				return
			end
			checkreps()
		else
		    totaltables = totaltables + 1
		    indexes[t] = "Table"..totaltables
		end
		
	end

	local function getname(t)
		return indexes[t]
	end

	table.insert(catchrepeats, Table)
	if not IsInternalTable then
		catchrepeats = {Table}
		indexreps = {}
		indexes = {}
		totaltables = 0
		setname(Table, TableName)
		
		local getdate = function(dateformat)
			local timestamp = os.time()
			local year = os.date("%Y", timestamp)
			local month = os.date("%m", timestamp)
			local day = os.date("%d", timestamp)
			local format = dateformat or {"m","d","y"}
			local datestamp = ""
			for i,v in pairs(format) do
				if v == "y" then
					datestamp = datestamp..year.."/"
				elseif v == "m" then
					datestamp = datestamp..month.."/"
				else
					datestamp = datestamp..day.."/"
				end
			end
			datestamp = datestamp:sub(1,datestamp:len()-1)
			return datestamp
		end

		s = "-- Created on "..getdate(args.dateformat).."\n-- Table names:\n"..getname(Table).." = {}"
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
			local part1formatted, failed1 = Format(i,v,args,true)
			local part2, failed2 = Format(v,i,args,true)
			if failed2 then
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
			if failed1 then
				part1 = "\n"..name.."["..isrecursivetable(i).."]"
			end
			local failstring = ""
			local failignore = {"function", "RBXScriptConnection", "RBXScriptSignal", "table"}
			if failed1 or failed2 then
				if args.ignoreunsupported then
					return ""
				end
				failstring = " --failed to convert types:"
				if failed1 and not table.find(failignore, typeof(i)) then
					failstring = failstring.." "..typeof(i)
				end
				if failed2 and not table.find(failignore, typeof(v)) then
					failstring = failstring.." "..typeof(v)
				end
				if failstring == " --failed to convert types:" then
					failstring = ""
				end
			end
			return part1.." = "..part2..failstring
			
		end
		
		local extratables = {}
		local function contextcheck(v1, v2, v3)
			local context = args.contextfunc and args.contextfunc(v1, v2, v3) or function() end
			if type(context) == "string" and context ~= "" then
				s = s.." --"..context
			end
		end
		
		local customvals = args.customvalues and args.customvalues(Table) or {}
		for i,v in pairs(Table) do
			if type(v) ~= "table" then
				if customvals[i] == nil then
					s = s..stringmethod(i,v)
				end
				contextcheck(Table,i,v)
			else
				extratables[i] = v
			end
		end
		for index, val in pairs(customvals) do
			s = s.."\n"..name.."["..Format(index).."] = "..tostring(val)
		end
		for i,v in pairs(extratables) do
			s = s.."\n"..stringmethod(i,v)
			contextcheck(Table,i,v)
		end
		if not IsInternalTable then
			s = s.."\n\nreturn "..name
		end
		return s
end

getgenv().tabletostring = TableToString

getgenv().Format = function(var, ...)
	local failedconversion = false
	local st = ""
	local supportedtypes = {"number", "boolean", "string", "EnumItem", "table", "Instance", "Vector2", "Vector3", "CFrame", "Color3", "BrickColor","Enum","Enums","UDim2","NumberRange"}
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
            st = "\""..reformatstring(var).."\""
        elseif type(var) == "table" then
            if not table.find(catchrepeats, var) then
				st = TableToString(var, ...)
			else
				failedconversion = true
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
		else
			failedconversion = true
			st = tostring(var)
		end
	return st, failedconversion
end

getgenv().format = Format

getgenv().GetFamily = function(ins, reverseorder)
	local Pathway = {ins}
	local par = ins.Parent

	while par ~= nil do
		if reverseorder then
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

	local function formatchild(s)
		local s = reformatstring(s)
		if s:find("%A") then
			return "[\""..s.."\"]"
		else
			return "."..s
		end
	end

	local fns = ""
	local Services = {} Services[1] = 'Workspace' Services[2] = 'RunService' Services[3] = 'GuiService' Services[4] = 'Stats' Services[5] = 'TimerService' Services[6] = 'SoundService' Services[7] = 'VideoCaptureService' Services[8] = 'NonReplicatedCSGDictionaryService' Services[9] = 'CSGDictionaryService' Services[10] = 'LogService' Services[11] = 'ContentProvider' Services[12] = 'KeyframeSequenceProvider' Services[13] = 'AnimationClipProvider' Services[14] = 'Chat' Services[15] = 'MarketplaceService' Services[16] = 'Players' Services[17] = 'PointsService' Services[18] = 'AdService' Services[19] = 'HttpRbxApiService' Services[20] = 'NotificationService' Services[21] = 'ReplicatedFirst' Services[22] = 'TweenService' Services[23] = 'MaterialService' Services[24] = 'TextService' Services[25] = 'PlayerEmulatorService' Services[26] = 'CorePackages' Services[27] = 'StudioData' Services[28] = 'SharedTableRegistry' Services[29] = 'StarterPlayer' Services[30] = 'StarterPack' Services[31] = 'StarterGui' Services[32] = 'CoreGui' Services[33] = 'LocalizationService' Services[34] = 'CloudLocalizationTable' Services[35] = 'PolicyService' Services[36] = 'TeleportService' Services[37] = 'JointsService' Services[38] = 'CollectionService' Services[39] = 'PhysicsService' Services[40] = 'BadgeService' Services[41] = 'GeometryService' Services[42] = 'FriendService' Services[43] = 'InsertService' Services[44] = 'GamePassService' Services[45] = 'Debris' Services[46] = 'CookiesService' Services[47] = 'UserInputService' Services[48] = 'KeyboardService' Services[49] = 'MouseService' Services[50] = 'VRService' Services[51] = 'ContextActionService' Services[52] = 'ScriptService' Services[53] = 'AssetService' Services[54] = 'TouchInputService' Services[55] = 'BrowserService' Services[56] = 'AppStorageService' Services[57] = 'AnalyticsService' Services[58] = 'ScriptContext' Services[59] = 'RbxAnalyticsService' Services[60] = 'HttpService' Services[61] = 'Lighting' Services[62] = '' Services[63] = 'Selection' Services[64] = 'ScriptRegistrationService' Services[65] = 'RuntimeScriptService' Services[66] = 'RobloxReplicatedStorage' Services[67] = 'IXPService' Services[68] = 'MemStorageService' Services[69] = 'GamepadService' Services[70] = 'MeshContentProvider' Services[71] = 'SolidModelContentProvider' Services[72] = 'HSRDataContentProvider' Services[73] = 'LodDataService' Services[74] = '' Services[75] = '' Services[76] = '' Services[77] = '' Services[78] = 'TextBoxService' Services[79] = 'ControllerService' Services[80] = 'MessageBusService' Services[81] = 'NetworkClient' Services[82] = 'ChangeHistoryService' Services[83] = 'Visit' Services[84] = 'GuidRegistryService' Services[85] = 'PermissionsService' Services[86] = 'Teams' Services[87] = 'ReplicatedStorage' Services[88] = 'TestService' Services[89] = 'SocialService' Services[90] = 'TextChatService' Services[91] = 'SafetyService' Services[92] = 'ProximityPromptService' Services[93] = 'AvatarChatService' Services[94] = 'VoiceChatService' Services[95] = 'FacialAnimationStreamingServiceV2' Services[96] = 'RobloxServerStorage' Services[97] = 'EventIngestService' Services[98] = 'CaptureService' Services[99] = 'GroupService' Services[100] = 'FaceAnimatorService' Services[101] = 'SessionService' Services[102] = 'HapticService' Services[103] = 'ExperienceAuthService' Services[104] = 'AvatarEditorService' Services[105] = 'PlatformFriendsService' Services[106] = 'RtMessagingService' Services[107] = 'DataStoreService' Services[108] = 'ServerScriptService' Services[109] = 'ServerStorage' Services[110] = '' Services[111] = 'SpawnerService' Services[112] = 'PathfindingService' Services[113] = 'TemporaryCageMeshProvider'
	
	for i,v in pairs(Pathway) do
		if i == 1 then
			if v == game then
				fns = "game"
			else
				fns = v.Name
			end
		else
			if i == 2 then
				if table.find(Services, v.ClassName) then
					fns = fns..":GetService(\""..v.ClassName.."\")"
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

local excludedfunctions = {print, pairs, format, tabletostring, getcallingscript, warn, error}

getgenv().FunctionLogger = function(funcparent, funcname, customfname)
if not customfname then customfname = funcname end
	if funcparent[funcname] == FunctionLogger or table.find(excludedfunctions, funcparent[funcname]) then error("No.") end
		local oldfunc = funcparent[funcname]
		if typeof(oldfunc) ~= "function" then error("function expected, got "..typeof(oldfunc)) end
		
		local newfunc = function(...)
		
			local function canFormat(thing)
				if type(thing) ~= "table" then
					return Format(thing)
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
