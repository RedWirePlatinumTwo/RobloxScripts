-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Aimbot = Instance.new("ScreenGui")
local MFrame = Instance.new("Frame")
local WhitelistUIOpener = Instance.new("TextButton")
local IsAimbotOn = Instance.new("TextButton")
local X = Instance.new("TextButton")
local AutoTarget = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local TargetedPart = Instance.new("TextButton")
local FirstPerson = Instance.new("TextButton")
local ChosenPlayer = Instance.new("TextLabel")
local raycasting = Instance.new("TextButton")
local WhitelistUI = Instance.new("Frame")
local WhitelistedInstances = Instance.new("ScrollingFrame")
local whitelistownteam = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local whitelistframe = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Toggle_2 = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local hide = Instance.new("TextButton")
local about = Instance.new("TextButton")
local AboutUI = Instance.new("Frame")
local Info = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local searchbar = Instance.new("TextBox")
local Title_2 = Instance.new("TextLabel")
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

WhitelistUIOpener.Name = "WhitelistUIOpener"
WhitelistUIOpener.Parent = MFrame
WhitelistUIOpener.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistUIOpener.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistUIOpener.Position = UDim2.new(0, 0, 0.652204633, 0)
WhitelistUIOpener.Size = UDim2.new(0, 94, 0, 50)
WhitelistUIOpener.Font = Enum.Font.Highway
WhitelistUIOpener.Text = "Click to open the whitelisting UI"
WhitelistUIOpener.TextColor3 = Color3.new(0, 0.666667, 0)
WhitelistUIOpener.TextScaled = true
WhitelistUIOpener.TextSize = 14
WhitelistUIOpener.TextWrapped = true

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
raycasting.Position = UDim2.new(0.36153847, 0, 0.264705896, 0)
raycasting.Size = UDim2.new(0, 83, 0, 57)
raycasting.Font = Enum.Font.Highway
raycasting.Text = "Enable Raycasting:"
raycasting.TextColor3 = Color3.new(0, 0.666667, 0)
raycasting.TextScaled = true
raycasting.TextSize = 14
raycasting.TextWrapped = true

WhitelistUI.Name = "WhitelistUI"
WhitelistUI.Parent = Aimbot
WhitelistUI.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistUI.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistUI.BorderSizePixel = 2
WhitelistUI.Position = UDim2.new(0.390190303, 0, 0.110677078, 0)
WhitelistUI.Size = UDim2.new(0, 324, 0, 269)
WhitelistUI.Visible = false

WhitelistedInstances.Name = "WhitelistedInstances"
WhitelistedInstances.Parent = WhitelistUI
WhitelistedInstances.Active = true
WhitelistedInstances.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistedInstances.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistedInstances.Position = UDim2.new(0, 0, 0.278215498, 0)
WhitelistedInstances.Size = UDim2.new(0, 324, 0, 193)
WhitelistedInstances.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)

whitelistownteam.Name = "whitelistownteam"
whitelistownteam.Parent = WhitelistedInstances
whitelistownteam.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistownteam.BorderColor3 = Color3.new(0, 0.666667, 0)
whitelistownteam.Size = UDim2.new(0, 312, 0, 37)

TextLabel.Parent = whitelistownteam
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 264, 0, 37)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "Whitelist own team?"
TextLabel.TextColor3 = Color3.new(0, 0.666667, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

Toggle.Name = "Toggle"
Toggle.Parent = whitelistownteam
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0.846153855, 0, 0, 0)
Toggle.Size = UDim2.new(0, 48, 0, 37)
Toggle.Font = Enum.Font.Highway
Toggle.Text = "Yes"
Toggle.TextColor3 = Color3.new(0, 1, 0)
Toggle.TextScaled = true
Toggle.TextSize = 14
Toggle.TextWrapped = true

whitelistframe.Name = "whitelistframe"
whitelistframe.Parent = WhitelistedInstances
whitelistframe.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistframe.BorderColor3 = Color3.new(0, 0.666667, 0)
whitelistframe.Size = UDim2.new(0, 312, 0, 37)
whitelistframe.Visible = false

TextLabel_2.Parent = whitelistframe
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Size = UDim2.new(0, 264, 0, 37)
TextLabel_2.Font = Enum.Font.Highway
TextLabel_2.Text = "sample text lmao"
TextLabel_2.TextColor3 = Color3.new(0, 0.666667, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

Toggle_2.Name = "Toggle"
Toggle_2.Parent = whitelistframe
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.Position = UDim2.new(0.846153855, 0, 0, 0)
Toggle_2.Size = UDim2.new(0, 48, 0, 37)
Toggle_2.Font = Enum.Font.Highway
Toggle_2.Text = "No"
Toggle_2.TextColor3 = Color3.new(1, 0, 0)
Toggle_2.TextScaled = true
Toggle_2.TextSize = 14
Toggle_2.TextWrapped = true

UIListLayout.Parent = WhitelistedInstances
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

hide.Name = "hide"
hide.Parent = WhitelistUI
hide.BackgroundColor3 = Color3.new(0, 0, 0)
hide.BorderColor3 = Color3.new(0, 0.666667, 0)
hide.Position = UDim2.new(0.728395045, 0, 0, 0)
hide.Size = UDim2.new(0, 89, 0, 30)
hide.Font = Enum.Font.Highway
hide.Text = "Hide UI"
hide.TextColor3 = Color3.new(0, 0.333333, 1)
hide.TextScaled = true
hide.TextSize = 14
hide.TextWrapped = true

about.Name = "about"
about.Parent = WhitelistUI
about.BackgroundColor3 = Color3.new(0, 0, 0)
about.BorderColor3 = Color3.new(0, 0.666667, 0)
about.Position = UDim2.new(0.89637363, 0, 0.111524165, 0)
about.Size = UDim2.new(0, 33, 0, 33)
about.Font = Enum.Font.Highway
about.Text = "ⓘ"
about.TextColor3 = Color3.new(0, 0.333333, 1)
about.TextScaled = true
about.TextSize = 14
about.TextStrokeColor3 = Color3.new(0, 0.333333, 1)
about.TextStrokeTransparency = 0.60000002384186
about.TextWrapped = true

AboutUI.Name = "AboutUI"
AboutUI.Parent = WhitelistUI
AboutUI.Active = true
AboutUI.BackgroundColor3 = Color3.new(0, 0, 0)
AboutUI.BorderColor3 = Color3.new(0, 0.666667, 0)
AboutUI.Position = UDim2.new(-0.111111119, 0, 0.438661695, 0)
AboutUI.Size = UDim2.new(0, 378, 0, 223)
AboutUI.Visible = false

Info.Name = "Info"
Info.Parent = AboutUI
Info.BackgroundColor3 = Color3.new(0, 0, 0)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(0, 378, 0, 196)
Info.Font = Enum.Font.Highway
Info.Text = "sample text"
Info.TextColor3 = Color3.new(0, 0.666667, 0)
Info.TextScaled = true
Info.TextSize = 14
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

Close.Name = "Close"
Close.Parent = AboutUI
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BorderColor3 = Color3.new(0, 0.666667, 0)
Close.Position = UDim2.new(0.375661373, 0, 0.88340807, 0)
Close.Size = UDim2.new(0, 96, 0, 26)
Close.Font = Enum.Font.Highway
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true

searchbar.Name = "searchbar"
searchbar.Parent = WhitelistUI
searchbar.BackgroundColor3 = Color3.new(0, 0, 0)
searchbar.BorderColor3 = Color3.new(0, 0.666667, 0)
searchbar.Position = UDim2.new(0, 0, 0.111524165, 0)
searchbar.Size = UDim2.new(0, 290, 0, 33)
searchbar.Font = Enum.Font.Highway
searchbar.PlaceholderColor3 = Color3.new(0, 0.666667, 0)
searchbar.PlaceholderText = "Filter Scrolling Frame results"
searchbar.Text = ""
searchbar.TextColor3 = Color3.new(0, 0.666667, 0)
searchbar.TextScaled = true
searchbar.TextSize = 14
searchbar.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = WhitelistUI
Title_2.BackgroundColor3 = Color3.new(0, 0, 0)
Title_2.BorderColor3 = Color3.new(0, 0.666667, 0)
Title_2.Size = UDim2.new(0, 236, 0, 29)
Title_2.Font = Enum.Font.Highway
Title_2.Text = "Whitelisting UI"
Title_2.TextColor3 = Color3.new(0, 0.666667, 0)
Title_2.TextScaled = true
Title_2.TextSize = 14
Title_2.TextWrapped = true
-- Scripts:
function SCRIPT_MUUF68_FAKESCRIPT() -- Aimbot.Scripts 
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
	local EncryptedName = ""
	local wlui = script.Parent.WhitelistUI
	wlui.WhitelistedInstances.ScrollBarImageColor3 = Color3.new(0,1,0)
	for i = 1, 15 do
	local char = string.char(math.random(1, 255))
	EncryptedName = EncryptedName..char
	end
	script.Parent.Name = EncryptedName
	local WhitelistedTeams = {}
	local WhitelistedPlrs = {}
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
	if player.Name ~= lplr.Name and humanoidvalid then
	if game.Teams:FindFirstChildOfClass("Team") and IsNotWhitelisted(player) and humanoid.Health ~= 0 then
	if usingraycast(player.Character) then
	selectplr(player.Character)
	end
	elseif not game.Teams:FindFirstChildOfClass("Team") and IsNotWhitelisted(player) then
	if usingraycast(player.Character) then
	selectplr(player.Character)
	end
	end
	end
	end
	GetNearestPlayer = function()
	local studs = 500
	local table1 = {}
	local table2 = {}
	for i,v in pairs(plrs:GetPlayers()) do
	local outcome = pcall(function()
	 return v.Character.Humanoid and v.Character[AimbotStats.Target]
	end)
	if outcome and v.Name ~= lplr.Name and v.Character.Humanoid.Health ~= 0 and IsNotWhitelisted(v) then
	local pos = math.floor(lplr:DistanceFromCharacter(v.Character[AimbotStats.Target].Position))
	local _, onscreen = workspace.Camera:WorldToScreenPoint(v.Character[AimbotStats.Target].Position)
	if onscreen and usingraycast(v.Character) then
	table1[pos] = v
	table.insert(table2, pos)
	end
	end
	end
	table.sort(table2)
	for position, player in pairs(table1) do
	if table2[1] == position and position < studs then
	GetPlayer(player)
	end
	end
	end
	local Keybinds = [[
	Aimbot keybinds:
	Left alt - turns Aimbot on/off
	(Turning it on will attempt to find a player wherever your cursor hovers, if a player is found, your cursor will "forcefully" stay on the set targeted part.)
	Right alt - targets the nearest opponent within 500 studs (aimbot has to be on, obviously)
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
	game.RunService.RenderStepped:connect(function()
	if not _G.AimbotGUIClosed then
	if AimbotStats.Character ~= "" and AimbotStats.Character:FindFirstChild(AimbotStats.Target) then
	local v, _ = workspace.Camera:WorldToScreenPoint(AimbotStats.Character[AimbotStats.Target].Position)
	if _ then
	local StabilizeNum = 0.45
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
	end
	end)
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot";
	Text = "To see how the aimbot works, check the developer log.";})
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot Update:";
	Duration = 10;
	Text = "Updated whitelisting system to make it (hopefully) more efficient.";})
	
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
	_G.AimbotGUIClosed = true
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
	MainFrame.ChosenPlayer.Text = "Chosen "..player.Name.." (DisplayName: "..player.DisplayName..")"
	else
	MainFrame.ChosenPlayer.Visible = false
	end
	end)
	MainFrame.WhitelistUIOpener.MouseButton1Click:connect(function()
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
	wlui.AboutUI.Draggable = true
	wlui.about.MouseButton1Click:Connect(function()
	wlui.AboutUI.Visible = true
	end)
	wlui.AboutUI.Close.MouseButton1Click:connect(function()
	wlui.AboutUI.Visible = false
	end)
	wlui.hide.MouseButton1Click:connect(function()
	wlui.Visible = false
	end)
	local wlframe = wlui.WhitelistedInstances.whitelistframe
	local Abouttext = [[- Whitelisting teams/players will have the targeting system avoid targeting the specified player or any player within a team. 
	- By default, your own team is whitelisted, this can be disabled/re-enabled by simply clicking the "Yes" text.
	-To whitelist any team/player, simply click the yes/no button next to that player or team name.]]
	wlui.AboutUI.Info.Text = Abouttext
	local toggle = wlui.WhitelistedInstances.whitelistownteam.Toggle
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
	local button = clone.Toggle
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
	clone.TextLabel.Text = "Whitelist the "..ins.Name.." team?"
	togglefunc(WhitelistedTeams)
	else
	clone.TextLabel.Text = "Whitelist "..ins.Name.."? (DisplayName: "..ins.DisplayName..")"
	togglefunc(WhitelistedPlrs)
	coroutine.resume(coroutine.create(function()
	repeat wait() until not game.Players:FindFirstChild(ins.Name)
	clone:Destroy()
	end))
	end
	end
	wlui.WhitelistedInstances.ChildAdded:connect(function()
	local yval = wlui.WhitelistedInstances.CanvasSize.Y.Scale
	wlui.WhitelistedInstances.CanvasSize = UDim2.new(0,0,yval + 0.2, 0)
	end)
	wlui.WhitelistedInstances.ChildRemoved:connect(function()
	local yval = wlui.WhitelistedInstances.CanvasSize.Y.Scale
	wlui.WhitelistedInstances.CanvasSize = UDim2.new(0,0,yval - 0.2, 0)
	end)
	for i, team in pairs(game.Teams:GetTeams()) do
	AddtoList(team, true)
	end
	for i,plr in pairs(plrs:GetPlayers()) do
	if plr ~= lplr then
	AddtoList(plr)
	end
	end
	plrs.PlayerAdded:connect(function(plr)
	AddtoList(plr)
	end)
	Changed(wlui.searchbar, "Text", function(txt)
	for i,v in pairs(wlui.WhitelistedInstances:GetChildren()) do
	if v.ClassName == "Frame" and v ~= wlframe and v ~= wlui.WhitelistedInstances.whitelistownteam then
	if v.TextLabel.Text:lower():match(txt) then
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
	Text = "Attempting to execute this twice will mess up the aiming function";
	})
	wait(0.2)
	script.Parent:Destroy()
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_MUUF68_FAKESCRIPT))
