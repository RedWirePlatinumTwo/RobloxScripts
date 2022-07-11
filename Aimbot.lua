-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Aimbot = Instance.new("ScreenGui")
local MFrame = Instance.new("Frame")
local ManagerUIOpener = Instance.new("TextButton")
local IsAimbotOn = Instance.new("TextButton")
local X = Instance.new("TextButton")
local AutoTarget = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local TargetedPart = Instance.new("TextButton")
local FirstPerson = Instance.new("TextButton")
local ChosenPlayer = Instance.new("TextLabel")
local raycasting = Instance.new("TextButton")
local AimbotManagerUI = Instance.new("Frame")
local WhitelistedInstances = Instance.new("ScrollingFrame")
local whitelistownteam = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local WhitelistToggle = Instance.new("TextButton")
local whitelistframe = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local WhitelistToggle_2 = Instance.new("TextButton")
local PriorityToggle = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local hide = Instance.new("TextButton")
local searchbar = Instance.new("TextBox")
local Title_2 = Instance.new("TextLabel")
local whitelistlable = Instance.new("TextLabel")
local prioritylable = Instance.new("TextLabel")
local typelabel = Instance.new("TextLabel")
--Properties:
Aimbot.Name = "Aimbot"
Aimbot.Parent = game.CoreGui
Aimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MFrame.Name = "MFrame"
MFrame.Parent = Aimbot
MFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MFrame.BorderColor3 = Color3.new(0, 0.666667, 0)
MFrame.Position = UDim2.new(0.66648978, 0, 0.112894237, 0)
MFrame.Size = UDim2.new(0, 260, 0, 170)

ManagerUIOpener.Name = "ManagerUIOpener"
ManagerUIOpener.Parent = MFrame
ManagerUIOpener.BackgroundColor3 = Color3.new(0, 0, 0)
ManagerUIOpener.BorderColor3 = Color3.new(0, 0.666667, 0)
ManagerUIOpener.Position = UDim2.new(0, 0, 0.652204633, 0)
ManagerUIOpener.Size = UDim2.new(0, 94, 0, 50)
ManagerUIOpener.Font = Enum.Font.Highway
ManagerUIOpener.Text = "Aimbot Manager"
ManagerUIOpener.TextColor3 = Color3.new(0, 0.666667, 0)
ManagerUIOpener.TextScaled = true
ManagerUIOpener.TextSize = 14
ManagerUIOpener.TextWrapped = true

IsAimbotOn.Name = "IsAimbotOn"
IsAimbotOn.Parent = MFrame
IsAimbotOn.BackgroundColor3 = Color3.new(0, 0, 0)
IsAimbotOn.BorderColor3 = Color3.new(0, 0.666667, 0)
IsAimbotOn.Position = UDim2.new(0.680769205, 0, 0.652204573, 0)
IsAimbotOn.Size = UDim2.new(0, 83, 0, 50)
IsAimbotOn.Font = Enum.Font.Highway
IsAimbotOn.Text = "Aimbot Enabled: "
IsAimbotOn.TextColor3 = Color3.new(0, 0.666667, 0)
IsAimbotOn.TextScaled = true
IsAimbotOn.TextSize = 14
IsAimbotOn.TextWrapped = true

X.Name = "X"
X.Parent = MFrame
X.BackgroundColor3 = Color3.new(0, 0, 0)
X.BorderColor3 = Color3.new(0, 0.666667, 0)
X.Position = UDim2.new(0.823076904, 0, 0, 0)
X.Size = UDim2.new(0, 46, 0, 46)
X.Font = Enum.Font.Highway
X.Text = "×"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

AutoTarget.Name = "AutoTarget"
AutoTarget.Parent = MFrame
AutoTarget.BackgroundColor3 = Color3.new(0, 0, 0)
AutoTarget.BorderColor3 = Color3.new(0, 0.666667, 0)
AutoTarget.Position = UDim2.new(0.36153847, 0, 0.652204633, 0)
AutoTarget.Size = UDim2.new(0, 83, 0, 50)
AutoTarget.Font = Enum.Font.Highway
AutoTarget.Text = "Auto-Targeting Enabled:"
AutoTarget.TextColor3 = Color3.new(0, 0.666667, 0)
AutoTarget.TextScaled = true
AutoTarget.TextSize = 23
AutoTarget.TextWrapped = true

Title.Name = "Title"
Title.Parent = MFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, -0.00507529778, 0)
Title.Size = UDim2.new(0, 214, 0, 45)
Title.Font = Enum.Font.Highway
Title.Text = "RedWire's Universal Aimbot"
Title.TextColor3 = Color3.new(0, 0.666667, 0)
Title.TextScaled = true
Title.TextSize = 18
Title.TextWrapped = true

TargetedPart.Name = "TargetedPart"
TargetedPart.Parent = MFrame
TargetedPart.BackgroundColor3 = Color3.new(0, 0, 0)
TargetedPart.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetedPart.Position = UDim2.new(0.680769205, 0, 0.266417921, 0)
TargetedPart.Size = UDim2.new(0, 83, 0, 57)
TargetedPart.Font = Enum.Font.Highway
TargetedPart.Text = "Targeted Part: "
TargetedPart.TextColor3 = Color3.new(0, 0.666667, 0)
TargetedPart.TextScaled = true
TargetedPart.TextSize = 14
TargetedPart.TextWrapped = true

FirstPerson.Name = "FirstPerson"
FirstPerson.Parent = MFrame
FirstPerson.BackgroundColor3 = Color3.new(0, 0, 0)
FirstPerson.BorderColor3 = Color3.new(0, 0.666667, 0)
FirstPerson.Position = UDim2.new(0, 0, 0.266417921, 0)
FirstPerson.Size = UDim2.new(0, 94, 0, 57)
FirstPerson.Font = Enum.Font.Highway
FirstPerson.Text = "First Person Mode enabled:"
FirstPerson.TextColor3 = Color3.new(0, 0.666667, 0)
FirstPerson.TextScaled = true
FirstPerson.TextSize = 14
FirstPerson.TextWrapped = true

ChosenPlayer.Name = "ChosenPlayer"
ChosenPlayer.Parent = MFrame
ChosenPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
ChosenPlayer.BorderColor3 = Color3.new(0, 0.666667, 0)
ChosenPlayer.Position = UDim2.new(-0.00163480313, 0, -0.170135766, 0)
ChosenPlayer.Size = UDim2.new(0, 260, 0, 28)
ChosenPlayer.Visible = false
ChosenPlayer.Font = Enum.Font.Highway
ChosenPlayer.Text = "sample text"
ChosenPlayer.TextColor3 = Color3.new(0, 0.666667, 0)
ChosenPlayer.TextScaled = true
ChosenPlayer.TextSize = 14
ChosenPlayer.TextWrapped = true
ChosenPlayer.TextXAlignment = Enum.TextXAlignment.Left

raycasting.Name = "raycasting"
raycasting.Parent = MFrame
raycasting.BackgroundColor3 = Color3.new(0, 0, 0)
raycasting.BorderColor3 = Color3.new(0, 0.666667, 0)
raycasting.Position = UDim2.new(0.361999989, 0, 0.266000003, 0)
raycasting.Size = UDim2.new(0, 83, 0, 57)
raycasting.Font = Enum.Font.Highway
raycasting.Text = "Enable Raycasting:"
raycasting.TextColor3 = Color3.new(0, 0.666667, 0)
raycasting.TextScaled = true
raycasting.TextSize = 14
raycasting.TextWrapped = true

AimbotManagerUI.Name = "AimbotManagerUI"
AimbotManagerUI.Parent = Aimbot
AimbotManagerUI.BackgroundColor3 = Color3.new(0, 0, 0)
AimbotManagerUI.BorderColor3 = Color3.new(0, 0.666667, 0)
AimbotManagerUI.BorderSizePixel = 2
AimbotManagerUI.Position = UDim2.new(0.319356978, 0, 0.110677086, 0)
AimbotManagerUI.Size = UDim2.new(0, 460, 0, 269)
AimbotManagerUI.Visible = false

WhitelistedInstances.Name = "WhitelistedInstances"
WhitelistedInstances.Parent = AimbotManagerUI
WhitelistedInstances.Active = true
WhitelistedInstances.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistedInstances.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistedInstances.Position = UDim2.new(0, 0, 0.359999865, 0)
WhitelistedInstances.Size = UDim2.new(0, 460, 0, 172)
WhitelistedInstances.CanvasSize = UDim2.new(0, 0, 0.140000001, 0)

whitelistownteam.Name = "whitelistownteam"
whitelistownteam.Parent = WhitelistedInstances
whitelistownteam.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistownteam.BorderColor3 = Color3.new(0, 0.666667, 0)
whitelistownteam.Size = UDim2.new(0, 445, 0, 37)

TextLabel.Parent = whitelistownteam
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 264, 0, 37)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "Whitelist your own team?"
TextLabel.TextColor3 = Color3.new(0, 0.666667, 0)
TextLabel.TextSize = 18
TextLabel.TextWrapped = true

WhitelistToggle.Name = "WhitelistToggle"
WhitelistToggle.Parent = whitelistownteam
WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
WhitelistToggle.BackgroundTransparency = 1
WhitelistToggle.Position = UDim2.new(0.844252408, 0, 0, 0)
WhitelistToggle.Size = UDim2.new(0, 68, 0, 37)
WhitelistToggle.Font = Enum.Font.Highway
WhitelistToggle.Text = "Yes"
WhitelistToggle.TextColor3 = Color3.new(0, 1, 0)
WhitelistToggle.TextSize = 22
WhitelistToggle.TextWrapped = true

whitelistframe.Name = "whitelistframe"
whitelistframe.Parent = WhitelistedInstances
whitelistframe.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistframe.BorderColor3 = Color3.new(0, 0.666667, 0)
whitelistframe.Size = UDim2.new(0, 445, 0, 37)
whitelistframe.Visible = false

TextLabel_2.Parent = whitelistframe
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Size = UDim2.new(0, 235, 0, 37)
TextLabel_2.Font = Enum.Font.Highway
TextLabel_2.Text = "sample text lmao"
TextLabel_2.TextColor3 = Color3.new(0, 0.666667, 0)
TextLabel_2.TextSize = 18
TextLabel_2.TextWrapped = true

WhitelistToggle_2.Name = "WhitelistToggle"
WhitelistToggle_2.Parent = whitelistframe
WhitelistToggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
WhitelistToggle_2.BackgroundTransparency = 1
WhitelistToggle_2.Position = UDim2.new(0.846153855, 0, 0, 0)
WhitelistToggle_2.Size = UDim2.new(0, 68, 0, 37)
WhitelistToggle_2.Font = Enum.Font.Highway
WhitelistToggle_2.Text = "No"
WhitelistToggle_2.TextColor3 = Color3.new(1, 0, 0)
WhitelistToggle_2.TextSize = 22
WhitelistToggle_2.TextWrapped = true

PriorityToggle.Name = "PriorityToggle"
PriorityToggle.Parent = whitelistframe
PriorityToggle.BackgroundColor3 = Color3.new(1, 1, 1)
PriorityToggle.BackgroundTransparency = 1
PriorityToggle.Position = UDim2.new(0.530669451, 0, 0, 0)
PriorityToggle.Size = UDim2.new(0, 119, 0, 37)
PriorityToggle.Visible = false
PriorityToggle.Font = Enum.Font.Highway
PriorityToggle.Text = "No"
PriorityToggle.TextColor3 = Color3.new(1, 0, 0)
PriorityToggle.TextSize = 22
PriorityToggle.TextWrapped = true

UIListLayout.Parent = WhitelistedInstances
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

hide.Name = "hide"
hide.Parent = AimbotManagerUI
hide.BackgroundColor3 = Color3.new(0, 0, 0)
hide.BorderColor3 = Color3.new(0, 0.666667, 0)
hide.Position = UDim2.new(0.804481864, 0, 0, 0)
hide.Size = UDim2.new(0, 89, 0, 29)
hide.Font = Enum.Font.Highway
hide.Text = "Hide UI"
hide.TextColor3 = Color3.new(1, 0, 0)
hide.TextScaled = true
hide.TextSize = 14
hide.TextWrapped = true

searchbar.Name = "searchbar"
searchbar.Parent = AimbotManagerUI
searchbar.BackgroundColor3 = Color3.new(0, 0, 0)
searchbar.BorderColor3 = Color3.new(0, 0.666667, 0)
searchbar.Position = UDim2.new(0, 0, 0.111524165, 0)
searchbar.Size = UDim2.new(0, 459, 0, 33)
searchbar.Font = Enum.Font.Highway
searchbar.PlaceholderColor3 = Color3.new(0, 0.666667, 0)
searchbar.PlaceholderText = "Filter Scrolling Frame results"
searchbar.Text = ""
searchbar.TextColor3 = Color3.new(0, 0.666667, 0)
searchbar.TextScaled = true
searchbar.TextSize = 14
searchbar.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = AimbotManagerUI
Title_2.BackgroundColor3 = Color3.new(0, 0, 0)
Title_2.BorderColor3 = Color3.new(0, 0.666667, 0)
Title_2.Size = UDim2.new(0, 370, 0, 29)
Title_2.Font = Enum.Font.Highway
Title_2.Text = "Aimbot Manager"
Title_2.TextColor3 = Color3.new(0, 0.666667, 0)
Title_2.TextScaled = true
Title_2.TextSize = 14
Title_2.TextWrapped = true

whitelistlable.Name = "whitelistlable"
whitelistlable.Parent = AimbotManagerUI
whitelistlable.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistlable.BorderColor3 = Color3.new(0, 0.666667, 0)
whitelistlable.Position = UDim2.new(0.746994019, 0, 0.241635695, 0)
whitelistlable.Size = UDim2.new(0, 115, 0, 29)
whitelistlable.Font = Enum.Font.Highway
whitelistlable.Text = "Is Whitelisted"
whitelistlable.TextColor3 = Color3.new(0, 0.666667, 0)
whitelistlable.TextScaled = true
whitelistlable.TextSize = 14
whitelistlable.TextWrapped = true

prioritylable.Name = "prioritylable"
prioritylable.Parent = AimbotManagerUI
prioritylable.BackgroundColor3 = Color3.new(0, 0, 0)
prioritylable.BorderColor3 = Color3.new(0, 0.666667, 0)
prioritylable.Position = UDim2.new(0.507863581, 0, 0.24163568, 0)
prioritylable.Size = UDim2.new(0, 110, 0, 29)
prioritylable.Font = Enum.Font.Highway
prioritylable.Text = "Is Prioritized"
prioritylable.TextColor3 = Color3.new(0, 0.666667, 0)
prioritylable.TextScaled = true
prioritylable.TextSize = 14
prioritylable.TextWrapped = true

typelabel.Name = "typelabel"
typelabel.Parent = AimbotManagerUI
typelabel.BackgroundColor3 = Color3.new(0, 0, 0)
typelabel.BorderColor3 = Color3.new(0, 0.666667, 0)
typelabel.Position = UDim2.new(0, 0, 0.241635695, 0)
typelabel.Size = UDim2.new(0, 234, 0, 29)
typelabel.Font = Enum.Font.Highway
typelabel.Text = "Player/Team Name"
typelabel.TextColor3 = Color3.new(0, 0.666667, 0)
typelabel.TextScaled = true
typelabel.TextSize = 14
typelabel.TextWrapped = true
-- Scripts:
function SCRIPT_NBDF82_FAKESCRIPT() -- Aimbot.Scripts 
	local script = Instance.new('LocalScript')
	script.Parent = Aimbot
	if not _G.RedsAimbot then
	_G.RedsAimbot = true
	for i,v in pairs(script.Parent:GetChildren()) do
	if v.ClassName == "Frame" then
	v.Draggable = true
	v.Active = true
	end
	end
	local wlui = script.Parent.AimbotManagerUI
	local scaleY = script.Parent.MFrame.FirstPerson.Position.Y.Scale
	local raypos = script.Parent.MFrame.raycasting.Position
	script.Parent.MFrame.raycasting.Position = UDim2.new(raypos.X.Scale, raypos.X.Offset, scaleY, raypos.Y.Offset)
	wlui.WhitelistedInstances.ScrollBarImageColor3 = Color3.new(0,1,0)
	if syn.protect_gui then
	syn.protect_gui(script.Parent)
	end
	local WhitelistedTeams = {}
	local WhitelistedPlrs = {}
	local PrioritizedPlrs = {}
	local AddedTeams = {}
	local plrs = game.Players
	local lplr = plrs.LocalPlayer
	local m = lplr:GetMouse()
	local AimbotStats = {}
	AimbotStats.Target = "Head"
	AimbotStats.IsOn = false
	AimbotStats.Character = ""
	AimbotStats.AutoTarget = true
	AimbotStats.FPEnabled = true
	AimbotStats.UseRaycasting = false
	AimbotStats.OwnTeamWhitelisted = true
	deselect = function()
	AimbotStats.Character = ""
	coroutine.resume(coroutine.create(function()
	if AimbotStats.IsOn then
	AimbotStats.IsOn = false
	wait()
	AimbotStats.IsOn = true
	end
	end))
	end
	function CheckDN(plr)
	if plr.DisplayName == plr.Name then
	return plr.Name
	else
	return plr.Name.." (DisplayName: "..plr.DisplayName..")"
	end
	end
	function IsNotWhitelisted(plr)
	if AimbotStats.OwnTeamWhitelisted then
	return plr.Team ~= lplr.Team and not table.find(WhitelistedPlrs, plr) and not table.find(WhitelistedTeams, plr.Team)
	else
	return not table.find(WhitelistedPlrs, plr) and not table.find(WhitelistedTeams, plr.Team)
	end
	end
	local function usingraycast(chr)
	local cast = workspace:Raycast(lplr.Character.HumanoidRootPart.Position, chr.HumanoidRootPart.Position)
	if AimbotStats.UseRaycasting then
	if not cast or cast and game.Players:GetPlayerFromCharacter(cast.Instance.Parent) or cast and cast.Instance.CanCollide == false then
	return chr
	else
	return nil
	end
	else
	return chr
	end
	end
	function GetPlayer(player)
	local humanoidvalid, humanoid = pcall(function()
	return player.Character.Humanoid
	end)
	local function checkplr()
	if usingraycast(player.Character) then
	selectplr(player.Character)
	end
	end
	if player.Name ~= lplr.Name and humanoidvalid then
	if game.Teams:FindFirstChildOfClass("Team") and IsNotWhitelisted(player) and humanoid.Health ~= 0 then
	checkplr()
	elseif not game.Teams:FindFirstChildOfClass("Team") and IsNotWhitelisted(player) then
	checkplr()
	end
	end
	end
	local studs = 750
	GetNearestPlayer = function()
	local table1 = {}
	local table2 = {}
	local PrioritizedPlrsOnScreen = {}
	for i,v in pairs(plrs:GetPlayers()) do
	local outcome = pcall(function()
	 return v.Character.Humanoid and v.Character[AimbotStats.Target]
	end)
	if outcome and v.Name ~= lplr.Name and v.Character.Humanoid.Health ~= 0 and IsNotWhitelisted(v) then
	local pos = math.floor(lplr:DistanceFromCharacter(v.Character[AimbotStats.Target].Position))
	local _, onscreen = workspace.Camera:WorldToScreenPoint(v.Character[AimbotStats.Target].Position)
	if onscreen and usingraycast(v.Character) and pos < studs then
	table1[pos] = v
	table.insert(table2, pos)
	if table.find(PrioritizedPlrs, v) then
	table.insert(PrioritizedPlrsOnScreen, v)
	end
	end
	end
	end
	if #PrioritizedPlrsOnScreen == 0 then
	table.sort(table2)
	else
	for pos, plr in pairs(table1) do
	if not table.find(PrioritizedPlrsOnScreen, plr) then
	local num = table.find(table2,pos)
	table.remove(table2, num)
	table1[pos] = nil
	end
	end
	table.sort(table2)
	end
	for position, player in pairs(table1) do
	if table2[1] == position then
	GetPlayer(player)
	end
	end
	end
	local Keybinds = [[
	Aimbot keybinds:
	Left alt - turns Aimbot on/off
	(Turning it on will attempt to find a player wherever your cursor hovers, if a player is found, your cursor will "forcefully" stay on the set targeted part.)
	Right alt - targets the nearest opponent within ]]..studs..[[ studs (aimbot has to be on, obviously)
	Left click + X - Changes the targeted part (This is set to head by default)
	Auto-Targeting - Basically spams the GetNearestPlayer function
	First Person mode: Toggles whether or not you want to auto-enter first person mode once you targeted someone.
	]]
	print(Keybinds)
	Changed = function(part, value, func)
	    local current = part[value]
	    coroutine.resume(coroutine.create(function()
	        while true do
	            repeat game.RunService.RenderStepped:wait() until part[value] ~= current
	            func(part[value], current, part)
	            current = part[value]
	    end
	    end))
	end
	GetFamily = function(ins)
	local Pathway = {}
	function _GetFamily(v)
	if v.Parent ~= nil then
	        table.insert(Pathway, 1, v)
	        _GetFamily(v.Parent)
	    else
	       table.insert(Pathway, 1, v)
	    end
	end
	_GetFamily(ins)
	return Pathway
	end
	function repack(str)
	local t = {}
	local arg = ""
	local tableseperator = " "
	str = str..tableseperator
	for i = 1, string.len(str) do
	if str:sub(i,i) ~= tableseperator then
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
	function selectplr(chr)
	if AimbotStats.IsOn == true and AimbotStats.Character == "" then
	AimbotStats.Character = chr
	if game.PlaceId == 286090429 then
	chr.ChildAdded:connect(function(c)
	if c.Name == "Cam" and AimbotStats.Character == chr then
	chr.Humanoid.Health = 0
	chr.ChildRemoved:Wait()
	chr.Humanoid.Health = 100
	end
	end)
	end
	end
	end
	m.KeyDown:connect(function()
	if game.UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) then
	AimbotStats.IsOn = not AimbotStats.IsOn
	end
	if game.UserInputService:IsKeyDown(Enum.KeyCode.RightAlt) then
	GetNearestPlayer()
	end
	end)
	local function message(txt)
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot target";
	Duration = 10;
	Text = txt;
	})
	end
	if not lplr.Character then
	message("Spawn in the game for the aimbot to work")
	end
	if not lplr.Character then lplr.CharacterAdded:Wait() end
	local chr = lplr.Character
	repeat wait() until chr:FindFirstChild("Torso") or chr:FindFirstChild("UpperTorso")
	local Torso = chr:FindFirstChild("Torso") or chr:FindFirstChild("UpperTorso")
	m.Button1Down:connect(function()
	if game.UserInputService:IsKeyDown(Enum.KeyCode.X) then
	if AimbotStats.Target == "Torso" or AimbotStats.Target == "UpperTorso" then
	AimbotStats.Target = "Head"
	else
	AimbotStats.Target = Torso.Name
	end
	end
	end)
	local AimbotFunction = game.RunService.RenderStepped:connect(function()
	if AimbotStats.Character ~= "" and AimbotStats.Character:FindFirstChild(AimbotStats.Target) then
	local v, _ = workspace.Camera:WorldToScreenPoint(AimbotStats.Character[AimbotStats.Target].Position)
	if _ then
	local StabilizeNum = 250/workspace.Camera.ViewportSize.Y
	local x, y = (v.X - m.X)*StabilizeNum, (v.Y - m.Y)*StabilizeNum
	if AimbotStats.IsOn then
	mousemoverel(x, y)
	end
	else
	deselect()
	end
	end
	if m.Target ~= nil then
	for i,v in pairs(GetFamily(m.Target)) do
	if game.Players:FindFirstChild(v.Name) then
	GetPlayer(game.Players[v.Name])
	end
	end
	end
	if AimbotStats.AutoTarget then
	GetNearestPlayer()
	end
	if AimbotStats.FPEnabled then
	if AimbotStats.Character ~= ""  and AimbotStats.IsOn then
	plrs.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
	else
	plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
	end
	else
	plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
	end
	end)
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot Update:";
	Duration = 10;
	Text = "Added Player Prioritizing!";})
	
	function Died(player)
	if not player.Character then player.CharacterAdded:Wait() end
	local function OnDeath(chr)
	chr:WaitForChild("Humanoid")
	chr.Humanoid.Died:connect(function()
	if AimbotStats.Character == chr then
	deselect()
	end
	end)
	end
	OnDeath(player.Character)
	player.CharacterAdded:connect(OnDeath)
	player.CharacterRemoving:connect(function(chr)
	if AimbotStats.Character == chr then
	deselect()
	end
	end)
	end
	for i,v in pairs(plrs:GetPlayers()) do Died(v) end
	plrs.PlayerAdded:connect(Died)
	plrs.PlayerRemoving:connect(function(plr)
	if plr.Character and plr.Character == AimbotStats.Character then
	deselect()
	end
	end)
	local MainFrame = script.Parent.MFrame
	MainFrame.X.MouseButton1Click:connect(function()
	AimbotFunction:disconnect()
	_G.RedsAimbot = false
	MainFrame.Parent:Destroy()
	end)
	local raytext = MainFrame.raycasting.Text.." "
	MainFrame.raycasting.Text = raytext..tostring(AimbotStats.UseRaycasting)
	Changed(AimbotStats, "UseRaycasting", function(val)
	MainFrame.raycasting.Text = raytext..tostring(val)
	end)
	MainFrame.raycasting.MouseButton1Down:connect(function()
	AimbotStats.UseRaycasting = not AimbotStats.UseRaycasting
	end)
	local targettext = MainFrame.TargetedPart.Text.." "
	MainFrame.TargetedPart.Text = targettext..AimbotStats.Target
	Changed(AimbotStats, "Target", function(v)
	MainFrame.TargetedPart.Text = targettext..v
	end)
	MainFrame.TargetedPart.MouseButton1Click:connect(function()
	if AimbotStats.Target == "Torso" or AimbotStats.Target == "UpperTorso" then
	AimbotStats.Target = "Head"
	else
	AimbotStats.Target = Torso.Name
	end
	end)
	Changed(AimbotStats, "Character", function(v)
	if v ~= "" then
	MainFrame.ChosenPlayer.Visible = true
	local player = game.Players:GetPlayerFromCharacter(v)
	MainFrame.ChosenPlayer.Text = "Chosen ".. CheckDN(player)
	else
	MainFrame.ChosenPlayer.Visible = false
	end
	end)
	MainFrame.ManagerUIOpener.MouseButton1Click:connect(function()
	wlui.Visible = true
	end)
	local fptext = MainFrame.FirstPerson.Text.." "
	MainFrame.FirstPerson.Text = fptext..tostring(AimbotStats.FPEnabled)
	Changed(AimbotStats, "FPEnabled", function(v)
	MainFrame.FirstPerson.Text = fptext..tostring(v)
	end)
	MainFrame.FirstPerson.MouseButton1Click:connect(function()
	AimbotStats.FPEnabled = not AimbotStats.FPEnabled
	end)
	local aimbottext = MainFrame.IsAimbotOn.Text.." "
	MainFrame.IsAimbotOn.Text = aimbottext..tostring(AimbotStats.IsOn)
	Changed(AimbotStats, "IsOn", function(v)
	MainFrame.IsAimbotOn.Text = aimbottext..tostring(v)
	if v == false then
	deselect()
	end
	end)
	MainFrame.IsAimbotOn.MouseButton1Click:connect(function()
	AimbotStats.IsOn = not AimbotStats.IsOn
	end)
	local autotargettext = MainFrame.AutoTarget.Text.." "
	MainFrame.AutoTarget.Text = autotargettext..tostring(AimbotStats.AutoTarget)
	Changed(AimbotStats, "AutoTarget", function(v)
	MainFrame.AutoTarget.Text = autotargettext..tostring(v)
	end)
	MainFrame.AutoTarget.MouseButton1Click:connect(function()
	AimbotStats.AutoTarget = not AimbotStats.AutoTarget
	end)
	wlui.hide.MouseButton1Click:connect(function()
	wlui.Visible = false
	end)
	local wlframe = wlui.WhitelistedInstances.whitelistframe
	local toggle = wlui.WhitelistedInstances.whitelistownteam.WhitelistToggle
	toggle.MouseButton1Click:connect(function()
	AimbotStats.OwnTeamWhitelisted = not AimbotStats.OwnTeamWhitelisted
	if not AimbotStats.OwnTeamWhitelisted then
	toggle.TextColor3 = Color3.new(1,0,0)
	toggle.Text = "No"
	else
	toggle.TextColor3 = Color3.new(0,1,0)
	toggle.Text = "Yes"
	end
	end)
	function AddtoList(ins, isTeam)
	local clone = wlframe:Clone()
	clone.Visible = true
	clone.Parent = wlframe.Parent
	local function togglefunc(Table)
	local button
	if Table == PrioritizedPlrs then
	button = clone.PriorityToggle
	else
	button = clone.WhitelistToggle
	end
	button.MouseButton1Click:connect(function()
	if button.Text == "No" then
	button.TextColor3 = Color3.new(0,1,0)
	button.Text = "Yes"
	table.insert(Table, ins)
	else
	button.TextColor3 = Color3.new(1,0,0)
	button.Text = "No"
	for i,v in pairs(Table) do
	if ins == v then
	table.remove(Table,i)
	end
	end
	end
	end)
	end
	if isTeam then
	clone.TextLabel.Text = ins.ClassName..": "..ins.Name
	togglefunc(WhitelistedTeams)
	table.insert(AddedTeams, ins.Name)
	coroutine.resume(coroutine.create(function()
	repeat wait() until not game.Teams:FindFirstChild(ins.Name)
	clone:Destroy()
	for i,v in pairs(AddedTeams) do
	if ins.Name == v then
	table.remove(AddedTeams, i)
	end
	end
	end))
	else
	clone.TextLabel.Text = ins.ClassName..": "..CheckDN(ins)
	togglefunc(WhitelistedPlrs)
	wlframe.PriorityToggle.Visible = true
	togglefunc(PrioritizedPlrs)
	coroutine.resume(coroutine.create(function()
	repeat wait() until not game.Players:FindFirstChild(ins.Name)
	clone:Destroy()
	end))
	end
	end
	wlui.WhitelistedInstances.ChildAdded:connect(function()
	local yval = wlui.WhitelistedInstances.CanvasSize.Y.Scale + 0.14
	wlui.WhitelistedInstances.CanvasSize = UDim2.new(0,0,yval, 0)
	end)
	wlui.WhitelistedInstances.ChildRemoved:connect(function()
	local yval = wlui.WhitelistedInstances.CanvasSize.Y.Scale - 0.14
	wlui.WhitelistedInstances.CanvasSize = UDim2.new(0,0,yval, 0)
	end)
	for i, team in pairs(game.Teams:GetTeams()) do
	if not table.find(AddedTeams, team.Name) then
	AddtoList(team, true)
	end
	end
	for i,plr in pairs(plrs:GetPlayers()) do
	if plr ~= lplr then
	AddtoList(plr)
	end
	end
	plrs.PlayerAdded:connect(AddtoList)
	game.Teams.ChildAdded:connect(function(team)
	if team.ClassName == "Team" and not table.find(AddedTeams, team.Name) then
	AddtoList(team, true)
	end
	end)
	Changed(wlui.searchbar, "Text", function(txt)
	for i,v in pairs(wlui.WhitelistedInstances:GetChildren()) do
	if v.ClassName == "Frame" and v ~= wlframe and v ~= wlui.WhitelistedInstances.whitelistownteam then
	if v.TextLabel.Text:lower():match(txt:lower()) then
	v.Visible = true
	else
	v.Visible = false
	end
	end
	end
	end)
	else
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot";
	Text = "Seems like you've already executed this. Deleting clone GUI.";
	})
	wait(0.2)
	script.Parent:Destroy()
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_NBDF82_FAKESCRIPT))
