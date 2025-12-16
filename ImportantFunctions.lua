local catchRepeats = {}
local indexReps = {}
local indexes = {}
local totalTables = 0
local reformatString = function(s)
	local reformattedString = ""
	local backKeys = {}
    backKeys["\0"] = "\\0"
    backKeys["\a"] = "\\a"
    backKeys["\b"] = "\\b"
    backKeys["\f"] = "\\f"
    backKeys["\n"] = "\\n"
    backKeys["\r"] = "\\r"
    backKeys["\t"] = "\\t"
    backKeys["\v"] = "\\v"
    backKeys["\'"] = "\\'"
    backKeys["\""] = "\\\""
	backKeys["\\"] = "\\\\"
	
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
		    
    		local function checkreps()
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
				checkreps()
				return
			end
			checkreps()
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
			local format = dateFormat or {"m","d","y"}
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
			dateStamp = dateStamp:sub(1,dateStamp:len()-1)
			return dateStamp
		end

		s = ("-- Created on %s\n-- Table names:\n%s = {}"):format(getDate(args.dateFormat), getName(Table))
		local reps = {}
	 
		local function defineTables(f)

			for i,v in pairs(f) do
		
				local function isTable(x)
				if type(x) == "table" and not table.find(reps,x) and not table.find(catchRepeats,x) then
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

		local function stringmethod(i,v)
		
			local function isRecursive(x)
				if table.find(catchRepeats,x) then
					return getName(x)
				else
					return tostring(x)
				end
			end
			
			local part1 = ""
			local part1formatted, failed1 = Format(i,v,args,true)
			local part2, failed2 = Format(v,i,args,true)
			if failed2 then
				part2 = isRecursive(v)
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
				part1 = ("\n%s[%s]"):format(name, tname)
			else
				part1 = ("\n%s[%s]"):format(name, part1formatted)
			end
			if failed1 then
				part1 = ("\n%s[%s]"):format(name, isRecursive(i))
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
		
		local extraTables = {}
		local function contextCheck(v1, v2, v3)
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
				contextCheck(Table,i,v)
			else
				extraTables[i] = v
			end
		end
		for index, val in pairs(customvals) do
			s = s..("\n%s[%s] = %s"):format(name, Format(index), tostring(val))
		end
		for i,v in pairs(extraTables) do
			s = s.."\n"..stringmethod(i,v)
			contextCheck(Table,i,v)
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
            st = "\""..reformatString(var).."\""
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
	local function formatChild(s)
		local s = reformatString(s)
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
					fns = fns..(":GetService(\"%s\")"):format(v.ClassName)
				else
					fns = fns..formatChild(v.Name)
				end
			else
				fns = fns..formatChild(v.Name)
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
