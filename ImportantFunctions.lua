catchrepeats = {}
getgenv().TableToString = function(Table, IsInternalTable)
local s = ""
table.insert(catchrepeats, Table)
if not IsInternalTable then
catchrepeats = {Table}
 s = "local table1 = {}"
 local num = 1
 local reps = {}
local function definetables(f)
    for i,v in pairs(f) do
        local function istable(x)
        if type(x) == "table" and not table.find(reps,x) and not table.find(catchrepeats,x) then
            num = num + 1
            s = s.."\nlocal table"..num.." = {}"
            table.insert(reps,x)
            definetables(x)
        end
        end
        istable(i)
        istable(v)
    end
end
definetables(Table)
 else
s = "table"..table.find(catchrepeats,Table)
end
local num = table.find(catchrepeats,Table)
    local function stringmethod(i,v)
        local function isrecursivetable(x)
        if table.find(catchrepeats,x) then
		return "table"..table.find(catchrepeats,x)
		else
		return tostring(x)
		end
        end
        local part1 = ""
        local part1formatted = Format(i)
        local part2 = Format(v)
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
        part1 = "\ntable"..num.."["..tname.."]"
        else
        part1 = "\ntable"..num.."["..part1formatted.."]"
		end
        if part1 == "\ntable"..num.."[]" then
		part1 = "\ntable"..num.."["..isrecursivetable(i).."]"
        end
		return part1.." = "..part2
    end
    for i,v in pairs(Table) do
        s = s..stringmethod(i,v)
    end
    if not IsInternalTable then
        s = s.."\nreturn table1"
    end
    return s
end
local function fixstring(s)
	local oof = ""
	for i = 1, s:len() do
	if s:sub(i,i):find("%p") then
    oof = oof.."\\"..s:sub(i,i)
    elseif s:sub(i,i) == "\n" then
    oof = oof.."\\n"..s:sub(i-1,i-1)
    else
    oof = oof..s:sub(i,i)
	end
	end
	return oof
end
getgenv().Format = function(test)
	local st = ""
	local supportedtypes = {"number", "boolean", "string", "EnumItem", "table", "Instance", "Vector2", "Vector3", "CFrame", "Color3", "BrickColor","Enum","Enums","UDim2","NumberRange"}
        if typeof(test) == "EnumItem" or type(test) == "boolean" then
            st = tostring(test)
		elseif type(test) == "number" then
		if test == math.huge then
		st = "math.huge"
		elseif test == math.huge * -1 then
		st = "math.huge * -1"
		else
		st = tostring(test)
		end
        elseif type(test) == "string" then
            st = "'"..fixstring(test).."'"
        elseif type(test) == "table" then
            if not table.find(catchrepeats, test) then
			st = TableToString(test, true)
			else
			st = ""
			end
		elseif typeof(test) == "Instance" then
			st = GetFullName(test)
		elseif typeof(test) == "Vector3" or typeof(test) == "Vector2" or typeof(test) == "CFrame" or typeof(test) == "Color3" or typeof(test) == "UDim2" or typeof(test) == "NumberRange" then
			st = typeof(test)..".new("..tostring(test)..")"
		elseif typeof(test) == "BrickColor" then
			st = typeof(test)..".new('"..tostring(test).."')"
		elseif typeof(test) == "Enum" then
		    st = "Enum."..tostring(test)
		elseif typeof(test) == "Enums" then
		st = "Enum"
		end
	return st
end
getgenv().GetFamily = function(ins, reverseorder)
local Pathway = {}
function _getFamily(v)
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
function c(ss)
local s = tostring(ss)
local oof = ""
for i = 1, s:len() do
    if s:sub(i,i):find("%p") then
    oof = oof.."\\"..s:sub(i,i)
    elseif s:sub(i,i) == "\n" then
    oof = oof.."\\n"..s:sub(i-1,i-1)
    else
    oof = oof..s:sub(i,i)
end
end
if oof:find("%A") then
return "['"..oof.."']"
else
return "."..oof
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
            fns = fns..c(v.Name)
        end
else
fns = fns..c(v.Name)
end
end
end
return fns
end
getgenv().LogFunctions = true
LoggedFunctions = {}
getgenv().FunctionLogger = function(funcparent, funcname)
if funcparent[funcname] == FunctionLogger or funcparent[funcname] == print or funcparent[funcname] == getrenv().print then error("No.") end
	local oldfunc = funcparent[funcname]
	if typeof(oldfunc) ~= "function" then error("function expected, got "..typeof(oldfunc)) end
	local newfunc = function(...)
		function canFormat(thing)
		if Format(thing) == "" then
		return tostring(thing)
		else
		catchrepeats = {}
		return Format(thing)
		end
		end
        local args = {...}
        local str = "Function "..funcname.." was called!"
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
