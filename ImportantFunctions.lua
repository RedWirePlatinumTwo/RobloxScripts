catchrepeats = {}
getgenv().TableToString = function(Table, IsInternalTable)
if not IsInternalTable then
catchrepeats = {}
end
table.insert(catchrepeats, Table)
local entry = "{"
    local s = entry
    function stringmethod(i,v)
        local String = ", "
        local part1 = ""
        local part2 = ""
        part1 = "["..Format(i).."]"
        part2 = Format(v)
        if part1 == "[]" then
		part1 = "["..tostring(i).."]"
        end
		if part2 == "" then
		part2 = tostring(v)
		end
		return part1.." = "..part2..String
    end
    for i,v in pairs(Table) do
        s = s..stringmethod(i,v)
    end
    s = s:sub(1,s:len()-2).."}"
    if s:sub(1,entry:len()) ~= entry then s = entry..s end
    if not IsInternalTable then
        s = "return "..s
    end
    return s
end
function fixstring(s)
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
            table.insert(catchrepeats, test)
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
