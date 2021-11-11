if not _G.SkywarsAdmin then
_G.SkywarsAdmin = true
local lplr = game.Players.LocalPlayer
function highlightOre(ore)
	local bha = Instance.new("BoxHandleAdornment", ore)
	bha.Adornee = ore
	bha.Size = ore.Size
	bha.ZIndex = 0
	bha.AlwaysOnTop = true
	bha.Transparency = 0.5
	local coin = ore.CoinsValue.Value
	if coin == 50 then
	bha.Color = BrickColor.new("Lime green")
	elseif coin == 35 then
	bha.Color = BrickColor.new("Cyan")
	elseif coin == 15 then
	bha.Color = BrickColor.new("New Yeller")
	elseif coin == 10 then
	bha.Color = BrickColor.new("Medium stone grey")
	elseif coin == 5 then
	bha.Color = BrickColor.new("Really black")
	end
end
local part = Instance.new("Part", workspace)
part.Name = "AntiFallPart"
part.Anchored = true
part.Size = Vector3.new(9, 1, 9)
local antifall = true
game.RunService.RenderStepped:connect(function()
if antifall and lplr.Character then 
part.Position = (lplr.Character.HumanoidRootPart.Position * Vector3.new(1,0,1)) + Vector3.new(0,147,0)
end
end)
lplr:GetMouse().KeyDown:connect(function(key)
if key == "q" then
if antifall then
antifall = false
part.Transparency = 1
part.CanCollide = false
local h = Instance.new("Hint", workspace)
h.Text = "Anti-falling disabled!"
wait(2)
h:Destroy()
else
antifall = true
part.Transparency = 0
part.CanCollide = true
lplr.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 5, 0)
local h = Instance.new("Hint", workspace)
h.Text = "Anti-falling enabled!"
wait(2)
h:Destroy()
end
elseif key == "x" then
local m
for i, b in ipairs(workspace:GetChildren()) do
	if b.Name:match("Map") then
		m = b
	end
end
if m then
for i, ore in ipairs(m.Map.Ores:GetChildren()) do
	if not ore:FindFirstChild("BoxHandleAdornment") then
	highlightOre(ore)
	end
end
end
if game.UserInputService:IsKeyDown(Enum.KeyCode.Z) then
function answer(t)
if t == "Yes" then
local chr = lplr.Character
local cframe = chr.HumanoidRootPart.CFrame
function farm(o)
function check(b)
return b.Name == "Broken"
end
local tp = true
game.RunService.Heartbeat:connect(function()
if tp then
if chr:FindFirstChild("Axe") then
chr.Axe.RemoteEvent:FireServer(o)
chr.HumanoidRootPart.CFrame = o.CFrame
else
lplr.Backpack.Axe.Parent = chr
end
end
end)
repeat wait() until check(o)
tp = false
end
local m
for i, b in ipairs(workspace:GetChildren()) do
	if b.Name:match("Map") then
		m = b
	end
end
if m then
for i, ore in ipairs(m.Map.Ores:GetChildren()) do
	farm(ore)
end
wait(0.1)
chr.HumanoidRootPart.CFrame = cframe
end
end
end
local invoke = Instance.new("BindableFunction")
invoke.OnInvoke = answer
game.StarterGui:SetCore("SendNotification", {
	Title = "Auto-mining";
	Text = "Mine all ores?";
	Callback = invoke;
	Button1 = "Yes";
	Button2 = "No";
})
end
elseif key == "k" then
function answer(t)
if t == "Yes" then
if not workspace:FindFirstChild("KillFolder") then
local kf = Instance.new("Folder", workspace)
kf.Name = "KillFolder"
end
if not workspace.KillFolder:FindFirstChild("ManualWeld") then
local motor = Instance.new("ManualWeld", workspace.KillFolder)
end
local motor = workspace.KillFolder.ManualWeld
if not workspace.KillFolder:FindFirstChild("Part") then
local part = Instance.new("Part", workspace.KillFolder)
end
local kpart = workspace.KillFolder.Part
kpart.Size = Vector3.new(1, 1, 1)
kpart.CanCollide = false
motor.C0 = CFrame.new() + Vector3.new(0, 0, 4)
function kill(plr)
motor.Part1 = kpart
local chr = lplr.Character
local hrp = chr.HumanoidRootPart
local pchr = plr.Character
local atk = true
if not chr:FindFirstChild("Sword") then
lplr.Backpack.Sword.Parent = chr
end
game.RunService.Heartbeat:connect(function()
if pchr:FindFirstChild("HumanoidRootPart") and atk and pchr.HumanoidRootPart.CFrame.Y > 0 then
motor.Part0 = pchr.HumanoidRootPart
if chr:FindFirstChild("Sword") and motor.Part1 ~= nil then
mouse1click()
wait()
mouse1release()
hrp.CFrame = kpart.CFrame
end
elseif pchr:FindFirstChild("HumanoidRootPart") and pchr.HumanoidRootPart.CFrame.Y < 0 then
pchr.Humanoid.Health = 0
end
end)
pchr.Humanoid:GetPropertyChangedSignal("Health"):connect(function()
if pchr.Humanoid.Health == 0 then
atk = false
motor.Part1 = nil
motor.Part0 = nil
end
end)
end
function dead(plr)
return plr.Character.Humanoid.Health == 0 or plr.Character.HumanoidRootPart.CFrame.Y < 0
end
for i, plr in ipairs(game.Players:GetPlayers()) do
if plr.Name ~= lplr.Name and #plr.Backpack:GetChildren() ~= 0 then
if plr.Character  and plr.Character:FindFirstChild("Humanoid") then
kill(plr)
repeat wait() until dead(plr)
end
end
end
local _ = true
game.RunService.Heartbeat:connect(function()
if _ then
lplr.Character.HumanoidRootPart.CFrame = workspace.Lobby["Middle Room"].Floor.Base.Union.CFrame + Vector3.new(0, 20, 0)
end
end)
wait(1)
_ = false
end
end
local invoke = Instance.new("BindableFunction")
invoke.OnInvoke = answer
game.StarterGui:SetCore("SendNotification", {
	Title = "Kill others";
	Text = "Attempt to kill everyone on the map?";
	Callback = invoke;
	Button1 = "Yes";
	Button2 = "No";
})
end
if key == "y" then
function answer(t)
if t == "Yes" then
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
end
local invoke = Instance.new("BindableFunction")
invoke.OnInvoke = answer
game.StarterGui:SetCore("SendNotification", {
	Title = "Infinite Yield";
	Text = "Execute Infinite Yield?";
	Callback = invoke;
	Button1 = "Yes";
	Button2 = "No";
})
end
end)
local extra = lplr.PlayerGui.Extra
workspace.Lobby.KillPlates:Destroy()
workspace.Borders.InvisibleBorder:Destroy()
extra:Destroy()
lplr.PlayerGui.ChildAdded:connect(function(b)
if b.Name == "Extra" then
	wait(0.5)
    b:Destroy()
end
end)
game.RunService.RenderStepped:connect(function()
if not game.UserInputService:IsKeyDown(Enum.KeyCode.Z) then return end
if lplr.Character:FindFirstChild("Axe") then
lplr.Character.Axe.RemoteEvent:FireServer(lplr:GetMouse().Target)
end
end)
local enter = workspace.Lobby["Mega VIP Room"].Teleport.Enter
enter["Teleporter B"].Touched:connect(function(h)
if game.Players:GetPlayerFromCharacter(h.Parent) and game.Players:GetPlayerFromCharacter(h.Parent).Name == lplr.Name then
	h.Parent:MoveTo(enter["Teleporter A"].Position)
end
end)
local Keybinds = [[List of keybinds:
Q to toggle Antifallpart
X to highlight all ores on the map
Hold Z and press X to use automine
Z and hover over blocks to mine them really fast
K to kill others on the map (If your exploit can use mouse1click())
Y to use Infinite Yield (for client-side commands)
Additionally, The game's anticheat gets deleted + there's a Mega VIP spoofer just to make it look like you have the Mega
VIP gamepass lol]]
print(Keybinds)
end
