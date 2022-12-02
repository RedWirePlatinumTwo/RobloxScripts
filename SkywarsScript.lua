-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local SkyWarsGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local mineores = Instance.new("TextButton")
local highlightores = Instance.new("TextButton")
local automine = Instance.new("TextButton")
local megavipenter = Instance.new("TextButton")
local infyeet = Instance.new("TextButton")
local killothers = Instance.new("TextButton")
local antifalltoggle = Instance.new("TextButton")
--Properties:
SkyWarsGUI.Name = "SkyWarsGUI"
SkyWarsGUI.Parent = game.CoreGui
SkyWarsGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = SkyWarsGUI
MainFrame.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
MainFrame.BorderColor3 = Color3.new(0, 0, 1)
MainFrame.Position = UDim2.new(0.385937482, 0, 0.0731481463, 0)
MainFrame.Size = UDim2.new(0, 318, 0, 276)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 318, 0, 50)
Title.Font = Enum.Font.ArialBold
Title.Text = "RedWire's Skywars GUI"
Title.TextColor3 = Color3.new(1, 0.333333, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(0, 0, 1)
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

mineores.Name = "mineores"
mineores.Parent = MainFrame
mineores.BackgroundColor3 = Color3.new(0, 0.333333, 1)
mineores.BorderColor3 = Color3.new(0, 0, 1)
mineores.Position = UDim2.new(0, 0, 0.181159422, 0)
mineores.Size = UDim2.new(0, 159, 0, 50)
mineores.Font = Enum.Font.ArialBold
mineores.Text = "Mine all ores"
mineores.TextColor3 = Color3.new(1, 0.666667, 1)
mineores.TextScaled = true
mineores.TextSize = 14
mineores.TextStrokeColor3 = Color3.new(0, 0, 1)
mineores.TextStrokeTransparency = 0
mineores.TextWrapped = true

highlightores.Name = "highlightores"
highlightores.Parent = MainFrame
highlightores.BackgroundColor3 = Color3.new(0, 0.333333, 1)
highlightores.BorderColor3 = Color3.new(0, 0, 1)
highlightores.Position = UDim2.new(0.5, 0, 0.181159422, 0)
highlightores.Size = UDim2.new(0, 159, 0, 50)
highlightores.Font = Enum.Font.ArialBold
highlightores.Text = "Highlight ores"
highlightores.TextColor3 = Color3.new(1, 0.666667, 1)
highlightores.TextScaled = true
highlightores.TextSize = 14
highlightores.TextStrokeColor3 = Color3.new(0, 0, 1)
highlightores.TextStrokeTransparency = 0
highlightores.TextWrapped = true

automine.Name = "automine"
automine.Parent = MainFrame
automine.BackgroundColor3 = Color3.new(0, 0.333333, 1)
automine.BorderColor3 = Color3.new(0, 0, 1)
automine.Position = UDim2.new(0, 0, 0.362318844, 0)
automine.Size = UDim2.new(0, 159, 0, 50)
automine.Font = Enum.Font.ArialBold
automine.Text = "Auto-mining enabled: "
automine.TextColor3 = Color3.new(1, 0.666667, 1)
automine.TextScaled = true
automine.TextSize = 14
automine.TextStrokeColor3 = Color3.new(0, 0, 1)
automine.TextStrokeTransparency = 0
automine.TextWrapped = true

megavipenter.Name = "megavipenter"
megavipenter.Parent = MainFrame
megavipenter.BackgroundColor3 = Color3.new(0, 0.333333, 1)
megavipenter.BorderColor3 = Color3.new(0, 0, 1)
megavipenter.Position = UDim2.new(0.5, 0, 0.362318844, 0)
megavipenter.Size = UDim2.new(0, 159, 0, 50)
megavipenter.Font = Enum.Font.ArialBold
megavipenter.Text = "Mega VIP bypass: "
megavipenter.TextColor3 = Color3.new(1, 0.666667, 1)
megavipenter.TextScaled = true
megavipenter.TextSize = 14
megavipenter.TextStrokeColor3 = Color3.new(0, 0, 1)
megavipenter.TextStrokeTransparency = 0
megavipenter.TextWrapped = true

infyeet.Name = "infyeet"
infyeet.Parent = MainFrame
infyeet.BackgroundColor3 = Color3.new(0, 0.333333, 1)
infyeet.BorderColor3 = Color3.new(0, 0, 1)
infyeet.Position = UDim2.new(0, 0, 0.543478251, 0)
infyeet.Size = UDim2.new(0, 159, 0, 50)
infyeet.Font = Enum.Font.ArialBold
infyeet.Text = "Load Infinite Yeet"
infyeet.TextColor3 = Color3.new(1, 0.666667, 1)
infyeet.TextScaled = true
infyeet.TextSize = 14
infyeet.TextStrokeColor3 = Color3.new(0, 0, 1)
infyeet.TextStrokeTransparency = 0
infyeet.TextWrapped = true

killothers.Name = "killothers"
killothers.Parent = MainFrame
killothers.BackgroundColor3 = Color3.new(0, 0.333333, 1)
killothers.BorderColor3 = Color3.new(0, 0, 1)
killothers.Position = UDim2.new(0.5, 0, 0.543478251, 0)
killothers.Size = UDim2.new(0, 159, 0, 50)
killothers.Font = Enum.Font.ArialBold
killothers.Text = "(Attempt to) Kill others"
killothers.TextColor3 = Color3.new(1, 0.666667, 1)
killothers.TextScaled = true
killothers.TextSize = 14
killothers.TextStrokeColor3 = Color3.new(0, 0, 1)
killothers.TextStrokeTransparency = 0
killothers.TextWrapped = true

antifalltoggle.Name = "antifalltoggle"
antifalltoggle.Parent = MainFrame
antifalltoggle.BackgroundColor3 = Color3.new(0, 0.333333, 1)
antifalltoggle.BorderColor3 = Color3.new(0, 0, 1)
antifalltoggle.Position = UDim2.new(0, 0, 0.724637687, 0)
antifalltoggle.Size = UDim2.new(0, 318, 0, 50)
antifalltoggle.Font = Enum.Font.ArialBold
antifalltoggle.Text = "Anti-falling part enabled: "
antifalltoggle.TextColor3 = Color3.new(1, 0.666667, 1)
antifalltoggle.TextScaled = true
antifalltoggle.TextSize = 14
antifalltoggle.TextStrokeColor3 = Color3.new(0, 0, 1)
antifalltoggle.TextStrokeTransparency = 0
antifalltoggle.TextWrapped = true
-- Scripts:
function SCRIPT_RWFM84_FAKESCRIPT() -- SkyWarsGUI.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = SkyWarsGUI
	local lplr = game.Players.LocalPlayer
	local mainframe = script.Parent.MainFrame
	for i,v in pairs(script.Parent:GetChildren()) do
	if v.ClassName == "Frame" then
	v.Draggable = true
	v.Active = true
	end
	end
	local function highlightOre(ore)
		local bha = Instance.new("BoxHandleAdornment", ore)
		bha.Adornee = ore
		bha.Size = ore.Size
		bha.ZIndex = 0
		bha.AlwaysOnTop = true
		bha.Transparency = 0.5
		bha.Color = ore.BrickColor
	end
	mainframe.mineores.MouseButton1Click:connect(function()
	if lplr.Backpack:FindFirstChild("Axe") or lplr.Character:FindFirstChild("Axe") then
	local chr = lplr.Character
	local cframe = chr.HumanoidRootPart.CFrame
	local function farm(o)
	local function isBroken(b)
	return b.Name == "Broken"
	end
	local tp = true
	local blockcooldown = false
	game.RunService.Heartbeat:connect(function()
	if tp then
	if chr:FindFirstChild("Axe") then
	if not blockcooldown then
	blockcooldown = true
	chr.Axe.RemoteEvent:FireServer(o)
	delay(0.1,function()
	blockcooldown = false
	end)
	end
	chr.HumanoidRootPart.CFrame = o.CFrame
	else
	lplr.Backpack.Axe.Parent = chr
	end
	end
	end)
	repeat task.wait() until isBroken(o)
	tp = false
	end
	local m
	for i, b in pairs(workspace:GetChildren()) do
		if b.Name:match("Map") then
			m = b
		end
	end
	if m then
	for i, ore in pairs(m.Map.Ores:GetChildren()) do
		farm(ore)
	end
	task.wait(0.1)
	chr.HumanoidRootPart.CFrame = cframe
	end
	end
	end)
	mainframe.highlightores.MouseButton1Click:connect(function()
	local m
	for i, b in pairs(workspace:GetChildren()) do
		if b.Name:match("Map") then
			m = b
		end
	end
	if m then
	for i, ore in pairs(m.Map.Ores:GetChildren()) do
		if not ore:FindFirstChild("BoxHandleAdornment") then
		highlightOre(ore)
		end
	end
	end
	end)
	local automining = false
	local blockcooldown2 = false
	game.RunService.RenderStepped:connect(function()
	if not automining then return end
	if lplr.Character:FindFirstChild("Axe") then
	if not blockcooldown2 then
	blockcooldown2 = true
	lplr.Character.Axe.RemoteEvent:FireServer(lplr:GetMouse().Target)
	delay(0.1,function()
	blockcooldown2 = false
	end)
	end
	end
	end)
	local amtext = mainframe.automine.Text
	mainframe.automine.Text = amtext..tostring(automining)
	mainframe.automine.MouseButton1Click:connect(function()
	automining = not automining
	mainframe.automine.Text = amtext..tostring(automining)
	end)
	local megavip = true
	local enter = workspace.Lobby["Mega VIP Room"].Teleport.Enter
	enter["Teleporter B"].Touched:connect(function(h)
	if game.Players:GetPlayerFromCharacter(h.Parent) and game.Players:GetPlayerFromCharacter(h.Parent) == lplr and megavip then
		h.Parent:MoveTo(enter["Teleporter A"].Position)
	end
	end)
	local mvtext = mainframe.megavipenter.Text
	mainframe.megavipenter.Text = mvtext..tostring(megavip)
	mainframe.megavipenter.MouseButton1Click:connect(function()
	megavip = not megavip
	mainframe.megavipenter.Text = mvtext..tostring(megavip)
	end)
	mainframe.infyeet.MouseButton1Click:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
	mainframe.killothers.MouseButton1Click:connect(function()
	if lplr.Backpack:FindFirstChild("Sword") or lplr.Character:FindFirstChild("Sword") then
	local frontoffset = CFrame.new() + Vector3.new(0, 0, 4)
	local function kill(plr)
	local chr = lplr.Character
	local hrp = chr.HumanoidRootPart
	local pchr = plr.Character
	local atk = true
	if not chr:FindFirstChild("Sword") then
	lplr.Backpack.Sword.Parent = chr
	end
	game.RunService.Heartbeat:connect(function()
	if pchr:FindFirstChild("HumanoidRootPart") and atk and pchr.HumanoidRootPart.CFrame.Y > 0 then
	if chr:FindFirstChild("Sword") then
	mouse1click()
	task.wait()
	mouse1release()
	hrp.CFrame = pchr.HumanoidRootPart.CFrame * frontoffset
	hrp.Velocity = Vector3.new()
	end
	elseif pchr:FindFirstChild("HumanoidRootPart") and pchr.HumanoidRootPart.CFrame.Y < 0 then
	pchr.Humanoid.Health = 0
	end
	end)
	pchr.Humanoid:GetPropertyChangedSignal("Health"):connect(function()
	if pchr.Humanoid.Health == 0 then
	atk = false
	end
	end)
	end
	local function dead(plr)
	return plr.Character.Humanoid.Health == 0 or plr.Character.HumanoidRootPart.CFrame.Y < 0
	end
	for i, plr in pairs(game.Players:GetPlayers()) do
	if plr ~= lplr and #plr.Backpack:GetChildren() ~= 0 then
	if plr.Character  and plr.Character:FindFirstChild("Humanoid") then
	kill(plr)
	repeat task.wait() until dead(plr)
	end
	end
	end
	task.wait(0.5)
	lplr.Character.HumanoidRootPart.CFrame = workspace.Lobby["Middle Room"].Floor.Base.Union.CFrame + Vector3.new(0, 10, 0)
	lplr.Character.HumanoidRootPart.Velocity = Vector3.new()
	end
	end)
	local part = Instance.new("Part", workspace)
	part.Anchored = true
	part.Size = Vector3.new(9, 1, 9)
	part.Transparency = 1
	local antifall = true
	game.RunService.RenderStepped:connect(function()
	if antifall and lplr.Character then 
	part.Position = (lplr.Character.HumanoidRootPart.Position * Vector3.new(1,0,1)) + Vector3.new(0,147,0)
	if lplr.Character.HumanoidRootPart.CFrame.Y < 147 then
	lplr.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 3, 0)
	lplr.Character.HumanoidRootPart.Velocity = Vector3.new()
	end
	end
	end)
	local aftext = mainframe.antifalltoggle.Text
	mainframe.antifalltoggle.Text = aftext..tostring(antifall)
	mainframe.antifalltoggle.MouseButton1Click:connect(function()
	antifall = not antifall
	mainframe.antifalltoggle.Text = aftext..tostring(antifall)
	if not antifall then
	part.CanCollide = false
	else
	part.CanCollide = true
	end
	end)
	lplr.PlayerGui.Extra:Destroy()
	lplr.PlayerGui.ChildAdded:connect(function(c)
	    if c.Name == "Extra" then
	        c:Destroy()
	    end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_RWFM84_FAKESCRIPT))
