local lplr = game.Players.LocalPlayer
local chr = lplr.Character
local root = chr.HumanoidRootPart
lplr:GetMouse().Button1Down:Wait()
local cframe = workspace.CurrentCamera.CFrame
local forward = cframe.LookVector
local rootPos = root.Position
local freezeCam = game.RunService.RenderStepped:connect(function()
    workspace.CurrentCamera.CFrame = cframe
end)
wait(1)
local function tween(pos)
    pos = pos * Vector3.new(1, 0, 1) + Vector3.new(0, rootPos.Y, 0)
    game.TweenService:Create(root, TweenInfo.new(0.3), {CFrame = CFrame.new(root.Position, pos)}):Play()
end

function clientmsg(text)
	game:GetService("Chat"):Chat(chr.Head, text, "White")
end
tween(root.Position - (forward.Unit * 1))
wait(2)
clientmsg("You know what?")
wait(1)
clientmsg("Fuck you.")
wait(1)
tween(root.Position + forward)
wait(0.5)
local walkToFront = game.RunService.RenderStepped:connect(function()
    chr.Humanoid.WalkToPoint = rootPos + forward.Unit * 100000
end)
wait(10)
walkToFront:Disconnect()
freezeCam:Disconnect()
