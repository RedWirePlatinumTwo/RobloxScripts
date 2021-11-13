if not _G.B2SAdmin then
_G.B2SAdmin = true
local delet
local ooftime = 0.1
local aura = 20
local Selectedblock = game.ReplicatedStorage.GameItems.Colors.Green
local plrs = game.Players
local lplr = plrs.LocalPlayer
local mouse = lplr:GetMouse()
local plrcommands = {}
local permbantable = {}
if not isfile("PermBannedPlayers.B2S") then
writefile("PermBannedPlayers.B2S", "return {}")
else
permbantable = loadfile("PermBannedPlayers.B2S")()
end
local savedbases = {}
if not isfile("SavedBases.B2S") then
writefile("SavedBases.B2S", "return {}")
else
savedbases = loadfile("SavedBases.B2S")()
end
local killaura = false
local mobaura = false
local Prefix = ";"
local AdminSettings = {}
local addargs = function(v)
AdminSettings[v.UserId] = {}
AdminSettings[v.UserId].DisplayName = v.DisplayName
AdminSettings[v.UserId].Loopkill = false
AdminSettings[v.UserId].Banned = false
AdminSettings[v.UserId].Canbuild = true
AdminSettings[v.UserId].Blockspam = false
AdminSettings[v.UserId].Whitelisted = false
AdminSettings[v.UserId].PermBanned = false
end
for i,v in pairs(plrs:GetPlayers()) do
addargs(v)
end
plrs.PlayerAdded:connect(function(v)
if not AdminSettings[v.UserId] then
addargs(v)
end
end)
local all = function()
local playertable = {}
for i,v in pairs(plrs:GetPlayers()) do
if AdminSettings[v.UserId].Whitelisted == false then
table.insert(playertable, v)
end
end
return playertable
end
title = "Build to Survive Admin"
if game.ReplicatedStorage.PlayerEvents:FindFirstChild("e"..lplr.UserId) then
delet = game.ReplicatedStorage.PlayerEvents["e"..lplr.UserId].DestroyItem
else
game.StarterGui:SetCore("SendNotification", {
Title = title;
Text = "Server incompatible for admin.";
Duration = 10;
})
print("Looks like someone already fucked with this server so you can't use the admin ;(")
local folder = game.ReplicatedStorage.PlayerEvents:WaitForChild("e"..lplr.UserId)
folder:WaitForChild("DestroyItem")
folder:WaitForChild("PlaceItem")
delet = folder.DestroyItem
end
local Prefixtxt = lplr.PlayerGui.Interface.text
Prefixtxt.Text = "Admin executed lmao, prefix = "..Prefix:lower()
local delete = function(child)
delet:FireServer(child)
end
local GetFullName = function(ins)
local Pathway = {}
function GetFamily(v)
if v.Parent ~= nil then
        table.insert(Pathway, 1, v)
        GetFamily(v.Parent)
    else
       table.insert(Pathway, 1, v)
    end
end
GetFamily(ins)
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
            fns = fns..c(v.ClassName)
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
local catchrepeats = {}
function tabletostring(Table, IncludeWhitespaces, InternalTable)
table.insert(catchrepeats, Table)
local entry = "{"
    local s = entry
    if IncludeWhitespaces then
        s = entry.."\n"
    end
    function stringmethod(i,v)
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
        local String = ", "
        local part1 = ""
        local part2 = ""
function modify(test, IncludeBrackets)
	local st = ""
	local supportedtypes = {"number", "boolean", "string", "EnumItem", "table", "Instance", "Vector3", "CFrame", "Color3", "BrickColor","Enum","Enums"}
        if type(test) == "number" or typeof(test) == "EnumItem" or type(test) == "boolean" then
            st = tostring(test)
        elseif type(test) == "string" then
            st = "'"..fixstring(test).."'"
        elseif type(test) == "table" then
            if not table.find(catchrepeats, test) then
            table.insert(catchrepeats, test)
			st = tabletostring(test, IncludeWhitespaces, true)
			else
			part1 = ""
			part2 = ""
			st = ""
			end
		elseif typeof(test) == "Instance" then
			st = GetFullName(test)
		elseif typeof(test) == "Vector3" or typeof(test) == "CFrame" or typeof(test) == "Color3" then
			st = typeof(test)..".new("..tostring(test)..")"
		elseif typeof(test) == "BrickColor" then
			st = typeof(test)..".new('"..tostring(test).."')"
		elseif typeof(test) == "Enum" then
		    st = "Enum."..tostring(test)
		elseif typeof(test) == "Enums" then
		st = "Enum"
		else
		st = tostring(test)
		end
	if IncludeBrackets then
		st = "["..st.."]"
	end
	if not table.find(supportedtypes, type(test)) and not table.find(supportedtypes, typeof(test)) then
		part1 = ""
		part2 = ""
		st = ""
	end
	return st
end
        if IncludeWhitespaces then
            String = ",\n"
        end
        part1 = modify(i, true)
        part2 = modify(v)
        if part1 ~= "" and part2 ~= "" then
        return part1.." = "..part2..String
        else
        return part1
        end
    end
    for i,v in pairs(Table) do
        s = s..stringmethod(i,v)
    end
    if not IncludeWhitespaces then
    s = s:sub(1,s:len()-2).."}"
    else
    s = s:sub(1,s:len()-2).."\n}"
    end
    if s:sub(1,entry:len()) ~= entry then s = entry..s end
    if not InternalTable then
        s = "return "..s
    end
    return s
end
local stringtobool = function(str)
if str == "true" then
    return true
elseif str == "false" then
    return false
else
    return false
end
end
local pack = function(str)
local t = {}
local arg = ""
str = str.." "
for i = 1, string.len(str) do
if str:sub(i,i) ~= " " then
arg = arg..str:sub(i,i)
else
if tonumber(arg) then
table.insert(t, tonumber(arg))
else
table.insert(t, arg)
end
arg = ""
end
end
return t
end
local place = function(cframe, child)
delet.Parent.PlaceItem:FireServer(cframe, child)
end
local pickplayer = function(str, func)
local playertable = {}
if str == "others" then
for i, plr in pairs(all()) do
if plr.DisplayName ~= lplr.DisplayName then
table.insert(playertable, plr)
end
end
elseif str == "all" then
for i, plr in pairs(all()) do
table.insert(playertable, plr)
end
elseif str == "random" then
for i, plr in pairs(all()) do
if plr.DisplayName ~= lplr.DisplayName then
table.insert(playertable, plr)
end
end
if #playertable ~= 0 then
local randomplr = playertable[math.random(1, #playertable)]
playertable = {}
table.insert(playertable, randomplr)
else
playertable = {}
end
elseif str == "me" then
for i, plr in pairs(all()) do
if plr.DisplayName == lplr.DisplayName then
table.insert(playertable, plr)
end
end
else
for i, plr in pairs(all()) do
if string.lower(plr.DisplayName):sub(1, string.len(str)) == string.lower(str) then
table.insert(playertable, plr)
end
end
end
func(playertable)
end
local pickplayerv2 = function(str, func, var)
local t = {}
if str == "others" then
for i,v in pairs(AdminSettings) do
if v.DisplayName ~= lplr.DisplayName then 
t[i] = v
end
end
elseif str == "random" then
local idk = {}
for i,v in pairs(AdminSettings) do
if v.DisplayName ~= lplr.DisplayName and v[var] == true then 
t[i] = v
table.insert(idk, i)
end
end
local id = idk[math.random(1, #idk)]
local randomplrv2 = t[id]
t = {}
t[id] = randomplrv2
elseif str == "all" then
for i,v in pairs(AdminSettings) do
t[i] = v
end
elseif str == "me" then
for i,v in pairs(AdminSettings) do
if v.DisplayName == lplr.DisplayName then 
t[i] = v
end
end
else
for i,v in pairs(AdminSettings) do
if string.lower(v.DisplayName):sub(1, string.len(str)) == string.lower(str) then
t[i] = v
end
end
end
func(t)
end
plrcommands.kill = function(msg)
local _kill = function(getplrs)
for i,plr in pairs(getplrs) do
if plr.Character and plr.Character.Head:FindFirstChild("Neck") then
delete(plr.Character.Head.Neck)
end
end
end
pickplayer(msg, _kill)
end
plrcommands.kick = function(msg)
local _kick = function(getplrs)
for i,plr in pairs(getplrs) do
delete(plr)
end
end
pickplayer(msg, _kick)
end
plrcommands.clearbase = function(msg)
local _clearbase = function(getplrs)
for i, plr in pairs(getplrs) do
for i, child in pairs(workspace.Bases:GetChildren()) do
if child.Owner.Value == plr.UserId then
for i, block in pairs(child.Blocks:GetChildren()) do
delete(block)
end
end
end
end
end
pickplayer(msg, _clearbase)
end
plrcommands.cripple = function(msg)
local _cripple = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
delete(plr.Character.HumanoidRootPart)
end
end
end
pickplayer(msg, _cripple)
end
plrcommands.removelimbs = function(msg)
local _removelimbs = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character then
for i, t in pairs(plr.Character:GetChildren()) do
if t.Name:match("Leg") or t.Name:match("Arm") then
delete(t)
end
end
end
end
end
pickplayer(msg, _removelimbs)
end
plrcommands.removearms = function(msg)
local _removearms = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character then
for i, t in pairs(plr.Character:GetChildren()) do
if t.Name:match("Arm") then
delete(t)
end
end
end
end
end
pickplayer(msg, _removearms)
end
plrcommands.removelegs = function(msg)
local _removelegs = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character then
for i, t in pairs(plr.Character:GetChildren()) do
if t.Name:match("Leg") then
delete(t)
end
end
end
end
end
pickplayer(msg, _removelegs)
end
plrcommands.noclothing = function(msg)
local _noclothing = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character:FindFirstChild("Shirt") then
delete(plr.Character.Shirt)
end
if plr.Character:FindFirstChild("Pants") then
delete(plr.Character.Pants)
end
if plr.Character:FindFirstChild("Shirt Graphic") then
delete(plr.Character["Shirt Graphic"])
end
end
end
pickplayer(msg, _noclothing)
end
plrcommands.suffer = function(msg)
local _suffer = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character and plr.Character:FindFirstChild("Humanoid") then
delete(plr.Character.Humanoid)
end
end
end
pickplayer(msg, _suffer)
end
plrcommands.removetools = function(msg)
local _removetools = function(getplrs)
for i, plr in pairs(getplrs) do
for i, b in pairs(plr.Backpack:GetChildren()) do
delete(b)
end
for i, t in pairs(plr.Character:GetChildren()) do
if t.ClassName == "Tool" then
delete(t)
end
end
end
end
pickplayer(msg, _removetools)
end
plrcommands.permpunish = function(msg)
local _permpunish = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character then
delete(plr.Character)
end
end
end
pickplayer(msg, _permpunish)
end
plrcommands.oof = function(msg)
local _oof = function(getplrs)
for i, plr in pairs(getplrs) do
coroutine.resume(coroutine.create(function()
if plr.Character then
for i, t in pairs(plr.Character:GetChildren()) do
if t.ClassName ~= "Humanoid" then
delete(t)
wait(ooftime)
end
end
end
end))
end
end
pickplayer(msg, _oof)
end
plrcommands.noaccessories = function(msg)
local _noaccessories = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character then
for i, t in pairs(plr.Character:GetChildren()) do
if t.ClassName == "Accessory" then
delete(t)
end
end
end
end
end
pickplayer(msg, _noaccessories)
end
game.RunService.Heartbeat:connect(function()
for i, plr in pairs(all()) do
if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and AdminSettings[plr.UserId].Blockspam == true then
place(plr.Character.HumanoidRootPart.CFrame, Selectedblock)
end
if table.find(permbantable, plr.UserId) then
AdminSettings[plr.UserId].PermBanned = true
end
if AdminSettings[plr.UserId].Banned == true or AdminSettings[plr.UserId].PermBanned == true then
delete(plr)
end
if AdminSettings[plr.UserId].Loopkill == true and plr.Character and lplr.Character:FindFirstChild("Head") and plr.Character.Head:FindFirstChild("Neck") then
delete(plr.Character.Head.Neck)
end
end
end)
local plraura = function(child)
    game.RunService.Heartbeat:connect(function()
	local success = pcall(function()
	return lplr.Character.HumanoidRootPart and child.Head.Neck and game.Players:GetPlayerFromCharacter(child)
	end)
local player = game.Players:GetPlayerFromCharacter(child)
if success and player.DisplayName ~= lplr.DisplayName then
local pos = (lplr.Character.HumanoidRootPart.Position - child.Head.Position).Magnitude
if pos < aura and killaura == true then
delete(child.Head.Neck)
end
end
end)
end
local enemyaura = function(child)
    game.RunService.Heartbeat:connect(function()
if lplr.Character and lplr.Character:FindFirstChild("HumanoidRootPart") and child.PrimaryPart then
local pos = (lplr.Character.HumanoidRootPart.Position - child.PrimaryPart.Position).Magnitude
if pos < aura and mobaura == true then
delete(child)
end
end
end)
end
for i, mob in pairs(workspace.Mobs:GetChildren()) do
enemyaura(mob)
end
workspace.Mobs.ChildAdded:connect(function(mob)
mob:WaitForChild("HumanoidRootPart")
enemyaura(mob)
end)
local ded = function(c)
c.CharacterAdded:connect(function(chr)
plraura(chr)
end)
end
for i, player in pairs(all()) do
plraura(player.Character)
ded(player)
end
plrs.PlayerAdded:connect(function(c)
ded(c)
end)
plrcommands.blockspam = function(msg)
local _blockspam = function(getplrs)
for i, plr in pairs(getplrs) do
AdminSettings[plr.UserId].Blockspam = true
end
end
pickplayer(msg, _blockspam)
end
plrcommands.unblockspam = function(msg)
local _unblockspam = function(getplrs)
for i, plr in pairs(getplrs) do
AdminSettings[plr.UserId].Blockspam = false
end
end
pickplayer(msg, _unblockspam)
end
plrcommands.removebase = function(msg)
local _removebase = function(getplrs)
for i, plr in pairs(getplrs) do
coroutine.resume(coroutine.create(function()
for i, child in pairs(workspace.Bases:GetChildren()) do
if child.Owner.Value == plr.UserId then
for i, block in pairs(child.Blocks:GetChildren()) do
delete(block)
game.RunService.RenderStepped:Wait()
end
end
end
end))
end
end
pickplayer(msg, _removebase)
end
plrcommands.canbuild = function(msg, boolval)
local setvalue = function(getplrs)
for i, v in pairs(getplrs) do
for i, base in pairs(workspace.Bases:GetChildren()) do
if base.Owner.Value == v.UserId then
AdminSettings[base.Owner.Value].Canbuild = stringtobool(boolval)
end
end
end
end
pickplayer(msg, setvalue)
end
plrcommands.ban = function(msg)
local _ban = function(getplrs)
for i, plr in pairs(getplrs) do
AdminSettings[plr.UserId].Banned = true
end
end
pickplayer(msg, _ban)
end
plrcommands.unban = function(msg)
local _unban = function(getplrs)
for i, plr in pairs(getplrs) do
plr.Banned = false
end
end
pickplayerv2(msg, _unban, "Banned")
end
plrcommands.blockhead = function(msg)
local _blockhead = function(getplrs)
for i,plr in pairs(getplrs) do
if plr.Character and plr.Character.Head:FindFirstChild("Mesh") then
delete(plr.Character.Head.Mesh)
end
end
end
pickplayer(msg, _blockhead)
end
plrcommands.noanim = function(msg)
local _noanim = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character and plr.Character.Humanoid:FindFirstChild("Animator") then
delete(plr.Character.Humanoid.Animator)
end
end
end
pickplayer(msg, _noanim)
end
plrcommands.nosurvival = function(msg)
local _nosurvival = function(getplrs)
for i, plr in pairs(getplrs) do
local delsurvivetag = function()
if plr.Character then
if plr.Character:FindFirstChild("Survivor") then
delete(plr.Character.Survivor)
end
plr.Character.ChildAdded:connect(function(c)
if c.Name == "Survivor" then
wait(0.2)
c:Destroy()
end
end)
end
end
delsurvivetag()
plr.CharacterAdded:connect(function(chr)
chr:WaitForChild("Humanoid")
delsurvivetag()
end)
end
end
pickplayer(msg, _nosurvival)
end
plrcommands.noface = function(msg)
local _noface = function(getplrs)
for i, plr in pairs(getplrs) do
if plr.Character and plr.Character.Head:FindFirstChild("face") then
delete(plr.Character.Head.face)
end
end
end
pickplayer(msg, _noface)
end
for i, v in pairs(workspace.Bases:GetChildren()) do
v.Blocks.ChildAdded:connect(function(block)
wait(0.2)
if AdminSettings[v.Owner.Value] and AdminSettings[v.Owner.Value].Canbuild == false then
delete(block)
end
end)
end
plrcommands.loopkill = function(msg)
local _loopkill = function(getplrs)
for i, v in pairs(getplrs) do
AdminSettings[v.UserId].Loopkill = true
end
end
pickplayer(msg, _loopkill)
end
plrcommands.unloopkill = function(msg)
local _unloopkill = function(getplrs)
for i,v in pairs(getplrs) do
AdminSettings[v.UserId].Loopkill = false
end
end
pickplayer(msg, _unloopkill)
end
plrcommands.whitelist = function(msg)
local _whitelist = function(getplrs)
for i,v in pairs(getplrs) do
AdminSettings[v.UserId].Whitelisted = true
end
end
pickplayer(msg, _whitelist)
end
plrcommands.unwhitelist = function(msg)
local _unwhitelist = function(getplrs)
for i, plr in pairs(getplrs) do
plr.Whitelisted = false
end
end
pickplayerv2(msg, _unwhitelist, "Ignore")
end
plrcommands.copybase = function(msg)
local _copybase = function(getplrs)
local yourbase
for i,v in pairs(workspace.Bases:GetChildren()) do if v.Owner.Value == lplr.UserId then yourbase = v.Base end end
for i,v in pairs(yourbase.Parent.Blocks:GetChildren()) do
delete(v)
end
for i,plr in pairs(getplrs) do
for i, base in pairs(workspace.Bases:GetChildren()) do
if base.Owner.Value == plr.UserId then
for i, block in pairs(base.Blocks:GetChildren()) do
    local partcframe
    if block:IsA("BasePart") then
        partcframe = block.CFrame
    else
        partcframe = block.PrimaryPart.CFrame
    end
	if partcframe then
	local playerbase = block.Parent.Parent.Base
        local x1,y1,z1 = playerbase.CFrame.X, playerbase.CFrame.Y, playerbase.CFrame.Z
        local x2,y2,z2 = partcframe.X, partcframe.Y, partcframe.Z
        local cframe = CFrame.new() + Vector3.new((x2-x1) + yourbase.CFrame.X, (y2-y1) + yourbase.CFrame.Y, (z2-z1) + yourbase.CFrame.Z)
        place(cframe, block)
	end
end
end
end
end
end
pickplayer(msg, _copybase)
end
plrcommands.stealbase = function(msg)
local _stealbase = function(getplrs)
local yourbase
for i,v in pairs(workspace.Bases:GetChildren()) do if v.Owner.Value == lplr.UserId then yourbase = v.Base end end
for i,v in pairs(yourbase.Parent.Blocks:GetChildren()) do
delete(v)
end
for i,plr in pairs(getplrs) do
for i, base in pairs(workspace.Bases:GetChildren()) do
if base.Owner.Value == plr.UserId then
for i, block in pairs(base.Blocks:GetChildren()) do
    local partcframe
    if block:IsA("BasePart") then
        partcframe = block.CFrame
    else
        partcframe = block.PrimaryPart.CFrame
    end
	if partcframe then
	local playerbase = block.Parent.Parent.Base
        local x1,y1,z1 = playerbase.CFrame.X, playerbase.CFrame.Y, playerbase.CFrame.Z
        local x2,y2,z2 = partcframe.X, partcframe.Y, partcframe.Z
        local cframe = CFrame.new() + Vector3.new((x2-x1) + yourbase.CFrame.X, (y2-y1) + yourbase.CFrame.Y, (z2-z1) + yourbase.CFrame.Z)
        place(cframe, block)
		delete(block)
	end
end
end
end
end
end
pickplayer(msg, _stealbase)
end
plrcommands.permban = function(msg)
local _permban = function(getplrs)
for i,v in pairs(getplrs) do
AdminSettings[v.UserId].PermBanned = true
if not table.find(permbantable, v.UserId) then
table.insert(permbantable, v.UserId)
end
end
end
pickplayer(msg, _permban)
writefile("PermBannedPlayers.B2S", tabletostring(permbantable))
end
plrcommands.unpermban = function(msg)
local _unpermban = function(getplrs)
for id, info in pairs(getplrs) do
for a, bannedid in pairs(permbantable) do
if id == bannedid then
table.remove(permbantable, a)
end
end
info.PermBanned = false
end
end
pickplayerv2(msg, _unpermban, "PermBanned")
writefile("PermBannedPlayers.B2S", tabletostring(permbantable))
end
local Commands = [[

Default Prefix = ;
--How player commands work:
Anyone that is whitelisted will NOT be affected until unwhitelisted
-all: The command is used on everyone.
-others: The command is used on everyone EXCEPT you.
-random: The command is used on a randomly picked person. (This random person will never be yourself)
-me: The command is used on yourself.
-[playername]: affects someone with the matching name (supports shortened names. (Example: Instead of typing 'RedWirePlatinum', you can just type 'redw'))
--
Commands:
kick [plr]
kill [plr]
nobases
clearws
clearbase [plr]
removebase [plr] (like clear base except it removes blocks one at a time [USE THIS ON YOURSELF IF YOU USED BLOCKSPAM OR ELSE YOU COULD BE KICKED (I guess roblox's anticheat fires if a remote event or something is doing too many things at once.)]
delete products (Deletes the annoying things like the visible laser gun, doge and others)
delete enemies
b2stools (Spawns in FE tools in this order: destroy tool, spawn tool, and enemy spawner tool, which all work with a simple click.)
shutdown
cripple [plr]
removelimbs [plr]
removearms [plr]
removelegs [plr]
suffer [plr]
removetools [plr]
noenemies (Its like delete enemies except the enemies don't spawn back)
nocages
noclothing [plr]
permpunish [plr] (because you can't unpunish someone sooo uh)
oof [plr]
noaccessories [plr]
getiy (Loads Infinite Yield for client-sided commands)
ooftime [num] (changes delay time when you use oof command on someone, is defaulted to 0.1)
partbypart (deletes all parts of the workspace one at a time, beginning with the base blocks)
removelighting
enemyaura (Automatically deletes enemies when nearby)
unenemyaura
blockspam [plr]
unblockspam [plr]
thanossnap
canbuild [plr] [true/false] (changes a players ability to add blocks to their base)
blockhead [plr]
noanim [plr]
nosurvival [plr] (makes it so the affected player doesn't earn any survivals to the Survived leaderstat)
noface [plr]
killaura
unkillaura
auravalue [num] (sets value for the killaura and enemyaura cmd, is defaulted to 20)
antibot (attempts to remove bots from entering the game by auto kicking a player if their Survived value is 0 AND if their account is under 30 days old)
cmds (re-prints list of commands in case something happens in the dev log)
ban [plr]
unban [plr]
getbannedplayers (prints list of all players you banned)
loopkill [plr]
unloopkill [plr]
changeprefix [prefix] (cannot have spaces)
whitelist [plr] (Excludes certain players COMPLETELY when using player commands)
unwhitelist [plr]
copybase [plr]
stealbase [plr]
changeblock (changes the block used in the spawner tool and blockspam)
permban (The list of perm-banned players is in your exploit's workspace folder, named "PermBannedPlayers.B2S". If you accidentally ban yourself, open the file, search for your UserId, and remove it as well as any unnecessary commas so the table doesn't break. Deleting the file will reset the table, un-banning everyone.)
unpermban
savebase
loadbase [basename]
getsavedbases
deletebase [basename]
renamebase [basename]
]]
local getcmds = function()
print(Commands)
end
lplr.Chatted:connect(function(ms)
local msg = ms:lower()
local msg1, msg2, msg3 = unpack(pack(msg))
local _msg = msg1:sub(Prefix:len()+1)
if plrcommands[_msg] then
plrcommands[_msg](msg2, msg3)
end
if msg == Prefix:lower().."nobases" then
delete(workspace.Bases)
end
if msg == Prefix:lower().."clearws" then
for i, g in pairs(workspace:GetChildren()) do
if not game.Players:GetPlayerFromCharacter(g) then
delete(g)
end
end
end
if msg == Prefix:lower().."delete enemies" then
for i, enemy in pairs(workspace.Mobs:GetChildren()) do
delete(enemy)
end
end
if msg == Prefix:lower().."delete products" then
for i, child in pairs(workspace:GetDescendants()) do
if child.Name == "DevProducts" then
delete(child)
end
end
end
if msg == Prefix:lower().."b2stools" then
function makedestroytool()
local destroytool = Instance.new("Tool", lplr.Backpack)
destroytool.Name = "Click Destroy"
destroytool.RequiresHandle = false
destroytool.ToolTip = "Destroy whatever you please."
destroytool.Activated:connect(function()
if mouse.Target then
delete(mouse.Target)
end
end)
end
function makespawntool()
local spawntool = Instance.new("Tool", lplr.Backpack)
spawntool.Name = "Block Spawner"
spawntool.RequiresHandle = false
spawntool.ToolTip = "Spawns blocks anywhere you want (can be changed using changeblock)"
spawntool.Activated:connect(function()
place(mouse.Hit, Selectedblock)
end)
end
function enemyspawntool()
local enemyspawner = Instance.new("Tool", lplr.Backpack)
enemyspawner.Name = "Enemy Spawner"
enemyspawner.RequiresHandle = false
enemyspawner.ToolTip = "Spawns additional enemies that won't despawn (until you clear your base)"
enemyspawner.Activated:connect(function()
local enemy
for i, mob in pairs(workspace.Mobs:GetChildren()) do
if mob then
enemy = mob
end
end
if enemy then
place(mouse.Hit, enemy)
else
game.StarterGui:SetCore("SendNotification", {
Title = "Enemy Spawning";
Text = "Wait for enemies to spawn.";
})
end
end)
end
makedestroytool()
makespawntool()
enemyspawntool()
lplr.ChildAdded:connect(function(c)
if c.Name == "Backpack" then
makedestroytool()
makespawntool()
enemyspawntool()
end
end)
end
if msg == Prefix:lower().."shutdown" then
for i, plr in pairs(plrs:GetPlayers()) do
delete(plr)
end
game:shutdown()
end
if msg == Prefix:lower().."noenemies" then
delete(workspace.Mobs)
end
if msg == Prefix:lower().."nocages" then
for i, cage in pairs(workspace.Cages:GetChildren()) do
for i, child in pairs(cage:GetChildren()) do
if child.Name ~= "MobSpawn" then
delete(child)
end
end
end
end
if msg == Prefix:lower().."getiy" then
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
if msg1 == Prefix:lower().."ooftime" then
ooftime = tonumber(msg2)
end
if msg == Prefix:lower().."partbypart" then
if workspace:FindFirstChild("Bases") then
for i, base in pairs(workspace.Bases:GetChildren()) do
for i, block in pairs(base.Blocks:GetChildren()) do
delete(block)
game.RunService.RenderStepped:Wait()
end
end
end
for i, b in pairs(workspace:GetDescendants()) do
if b:IsA("BasePart") then
delete(b)
game.RunService.RenderStepped:Wait()
end
end
end
if msg == Prefix:lower().."removelighting" then
for i, v in pairs(game.Lighting:GetChildren()) do
delete(v)
end
end
if msg == Prefix:lower().."enemyaura" then
mobaura = true
end
if msg == Prefix:lower().."killaura" then
killaura = true
end
if msg1 == Prefix:lower().."auravalue" then
aura = tonumber(msg2)
end
if msg == Prefix:lower().."antibot" then
plrs.PlayerAdded:connect(function(plr)
plr:WaitForChild("leaderstats")
plr.leaderstats:WaitForChild("Survived")
if plr.leaderstats.Survived.Value == 0 and plr.AccountAge < 30 then
wait(0.2)
delete(plr)
end
end)
end
if msg == Prefix:lower().."cmds" then
getcmds()
end
if msg == Prefix:lower().."getbannedplayers" then
print("--List of banned players--")
for i,v in pairs(AdminSettings) do
if v.Banned == true then
print(v.DisplayName)
end
end
print("----")
end
if msg1 == Prefix:lower().."changeprefix" then
Prefix = tostring(msg2)
Prefixtxt.Text = "Admin executed lmao, prefix = "..Prefix:lower()
end
if msg == Prefix:lower().."unenemyaura" then
mobaura = false
end
if msg == Prefix:lower().."unkillaura" then
killaura = false
end
if msg == Prefix:lower().."changeblock" then
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Click on an object to make it the new block.";
Font = Enum.Font.Cartoon;})
mouse.Button1Down:Wait()
local target = mouse.Target
if target ~= nil then
Selectedblock = target
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Selected block changed to "..target.Name;
Font = Enum.Font.Cartoon;})
else
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "The target you chose is invalid";
Font = Enum.Font.Cartoon;})
end
end
if msg == Prefix:lower().."thanossnap" then
for i = 1, math.ceil(#all()/2) do
plrcommands.kick("random")
end
end
if msg == Prefix:lower().."savebase" then
local BaseName = ""
for i = 1, math.huge do
    if not savedbases["Base"..i] then
        BaseName = "Base"..i
    break
end
end
savedbases[BaseName] = {}
local plrbase
for i, Base in pairs(workspace.Bases:GetChildren()) do
    if Base.Owner.Value == lplr.UserId then
    plrbase = Base
end
end
savedbases[BaseName].Base = plrbase.Name
savedbases[BaseName].Blocks = {}
for i1,Block in pairs(plrbase.Blocks:GetChildren()) do
  for i2, v in pairs(game.ReplicatedStorage.GameItems:GetChildren()) do
      for i3, Item in pairs(v:GetChildren()) do
          if Block.Name == Item.Name then
              if Block.ClassName == "Model" then
            table.insert(savedbases[BaseName].Blocks, {["Child"] = Item, ["CFrame"] = Block.PrimaryPart.CFrame})
              elseif Block.ClassName == "Part" then
            table.insert(savedbases[BaseName].Blocks, {["Child"] = Item, ["CFrame"] = Block.CFrame})
            end
            end
        end
    end
end
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Your base has been saved as "..BaseName;
Font = Enum.Font.Cartoon;})
writefile("SavedBases.B2S", tabletostring(savedbases))
end
if msg:sub(1, Prefix:len() + string.len("loadbase ")) == Prefix:lower().."loadbase " then
local basename = msg:sub(10 + Prefix:len())
local yourbase
for i,v in pairs(workspace.Bases:GetChildren()) do if v.Owner.Value == lplr.UserId then yourbase = v.Base end end
for i,v in pairs(yourbase.Parent.Blocks:GetChildren()) do
delete(v)
end
for name, Table in pairs(savedbases) do
if name:lower() == basename:lower() then
for i,v in pairs(Table.Blocks) do 
local base = workspace.Bases[Table.Base].Base
local x1,y1,z1 = base.CFrame.X, base.CFrame.Y, base.CFrame.Z
local x2,y2,z2 = v.CFrame.X, v.CFrame.Y, v.CFrame.Z
local cframe = CFrame.new() + Vector3.new((x2-x1) + yourbase.CFrame.X, (y2-y1) + yourbase.CFrame.Y, (z2-z1) + yourbase.CFrame.Z)
place(cframe, v.Child)
end
end
end
end
if msg == Prefix:lower().."getsavedbases" then
print("--List of saved bases--")
for i,v in pairs(savedbases) do
print(i)
end
print("----")
end
if msg:sub(1, Prefix:len() + string.len("deletebase ")) == Prefix:lower().."deletebase " then
local basename = msg:sub(12 + Prefix:len())
for i,v in pairs(savedbases) do
if i:lower() == basename:lower() then
savedbases[basename] = nil
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = basename.." has been deleted.";
Font = Enum.Font.Cartoon;})
end
end
writefile("SavedBases.B2S", tabletostring(savedbases))
end
if msg:sub(1, Prefix:len() + string.len("renamebase ")) == Prefix:lower().."renamebase " then
local old = msg:sub(12 + Prefix:len())
local findname = false
for i,v in pairs(savedbases) do
    if old:lower() == i:lower() then
        old = i
        findname = true
    end
end
if findname then
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "What would you like to rename "..old.." to?";
Font = Enum.Font.Cartoon;})
local new = lplr.Chatted:Wait()
savedbases[new] = savedbases[old]
savedbases[old] = nil
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Renamed "..old.." to "..new..".";
Font = Enum.Font.Cartoon;})
writefile("SavedBases.B2S", tabletostring(savedbases))
else
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = old.." is not a valid base name.";
Font = Enum.Font.Cartoon;})
end
end
end)
getcmds()
game.StarterGui:SetCore("SendNotification", {
Title = title;
Text = "Removed feedback as I also removed the discord bot.";
Duration = 10;
})
end
