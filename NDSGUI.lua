-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local RedWiresNDSGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Falldamageremove = Instance.new("TextButton")
local prewarn = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local ChatDisaster = Instance.new("TextButton")
local Admin = Instance.new("TextButton")
local lobbytp = Instance.new("TextButton")
local X = Instance.new("TextButton")
--Properties:
RedWiresNDSGUI.Name = "RedWiresNDSGUI"
RedWiresNDSGUI.Parent = game.CoreGui
RedWiresNDSGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = RedWiresNDSGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.63411206, 0, 0.140000343, 0)
MainFrame.Size = UDim2.new(0, 322, 0, 199)

Falldamageremove.Name = "Falldamageremove"
Falldamageremove.Parent = MainFrame
Falldamageremove.BackgroundColor3 = Color3.new(1, 1, 1)
Falldamageremove.Position = UDim2.new(0.200533465, 0, 0.695178032, 0)
Falldamageremove.Size = UDim2.new(0, 197, 0, 45)
Falldamageremove.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Falldamageremove.Font = Enum.Font.SourceSansBold
Falldamageremove.Text = "Remove Fall Damage"
Falldamageremove.TextColor3 = Color3.new(1, 1, 1)
Falldamageremove.TextScaled = true
Falldamageremove.TextSize = 20
Falldamageremove.TextWrapped = true

prewarn.Name = "prewarn"
prewarn.Parent = MainFrame
prewarn.BackgroundColor3 = Color3.new(1, 1, 1)
prewarn.Position = UDim2.new(-0.00132988405, 0, 0.258445859, 0)
prewarn.Size = UDim2.new(0, 165, 0, 41)
prewarn.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
prewarn.Font = Enum.Font.SourceSansBold
prewarn.Text = "Pre-Warn Disaster"
prewarn.TextColor3 = Color3.new(1, 1, 1)
prewarn.TextScaled = true
prewarn.TextSize = 14
prewarn.TextWrapped = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 270, 0, 49)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "RedWire's Natural Disaster Survival GUI"
Title.TextColor3 = Color3.new(0.309804, 0.619608, 1)
Title.TextScaled = true
Title.TextSize = 16
Title.TextStrokeColor3 = Color3.new(0.435294, 0.435294, 0.435294)
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

ChatDisaster.Name = "ChatDisaster"
ChatDisaster.Parent = MainFrame
ChatDisaster.BackgroundColor3 = Color3.new(1, 1, 1)
ChatDisaster.Position = UDim2.new(0.510982931, 0, 0.258445859, 0)
ChatDisaster.Size = UDim2.new(0, 157, 0, 42)
ChatDisaster.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
ChatDisaster.Font = Enum.Font.SourceSansBold
ChatDisaster.Text = "Post Disaster In chat"
ChatDisaster.TextColor3 = Color3.new(1, 1, 1)
ChatDisaster.TextScaled = true
ChatDisaster.TextSize = 14
ChatDisaster.TextWrapped = true

Admin.Name = "Admin"
Admin.Parent = MainFrame
Admin.BackgroundColor3 = Color3.new(1, 1, 1)
Admin.Position = UDim2.new(-0.00132988405, 0, 0.489147902, 0)
Admin.Size = UDim2.new(0, 165, 0, 41)
Admin.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Admin.Font = Enum.Font.SourceSansBold
Admin.Text = "Infinite Yield"
Admin.TextColor3 = Color3.new(1, 1, 1)
Admin.TextScaled = true
Admin.TextSize = 14
Admin.TextWrapped = true

lobbytp.Name = "lobbytp"
lobbytp.Parent = MainFrame
lobbytp.BackgroundColor3 = Color3.new(1, 1, 1)
lobbytp.Position = UDim2.new(0.510982931, 0, 0.489147902, 0)
lobbytp.Size = UDim2.new(0, 156, 0, 41)
lobbytp.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
lobbytp.Font = Enum.Font.SourceSansBold
lobbytp.Text = "TP to lobby"
lobbytp.TextColor3 = Color3.new(1, 1, 1)
lobbytp.TextScaled = true
lobbytp.TextSize = 14
lobbytp.TextWrapped = true

X.Name = "X"
X.Parent = MainFrame
X.BackgroundColor3 = Color3.new(1, 1, 1)
X.BackgroundTransparency = 1
X.Position = UDim2.new(0.838509321, 0, 0.00502512557, 0)
X.Size = UDim2.new(0, 50, 0, 50)
X.Font = Enum.Font.SourceSansBold
X.Text = "×"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true
-- Scripts:
function SCRIPT_KHHX70_FAKESCRIPT() -- RedWiresNDSGUI.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = RedWiresNDSGUI
	local mframe = script.Parent.MainFrame
	mframe.Draggable = true
	local lplr = game.Players.LocalPlayer
	mframe.Admin.MouseButton1Click:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
	mframe.lobbytp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 178, 379)
	end)
	mframe.ChatDisaster.MouseButton1Click:connect(function()
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The disaster for this match is: ".. game.Players.LocalPlayer.Character.SurvivalTag.Value, "All")
	end)
	mframe.Falldamageremove.MouseButton1Click:connect(function()
		print("Fall damage is no more")
		local falldmg = lplr.Character:FindFirstChild("FallDamageScript") or lplr.Character:FindFirstChild("CharacterScript")
		if falldmg then
		falldmg:Destroy()
		end
		function nofalldmg(chr)
		chr.ChildAdded:connect(function(c)
		if c.Name == "FallDamageScript" or c.Name == "CharacterScript" then
		wait(0.2)
		c:Destroy()
		end
		end)
		end
		lplr.CharacterAdded:connect(function(chr)
		nofalldmg(chr)
		end)
	end)
	mframe.prewarn.MouseButton1Click:connect(function()
		local tag = lplr.Character:FindFirstChild("SurvivalTag")
		if tag then
		local hint = Instance.new("Message", workspace)
		hint.Text = tag.Value
		wait(4)
		hint:Destroy()
		end
		function prewarn(chr)
		chr.ChildAdded:connect(function(c)
		if c.Name == "SurvivalTag" then
		local hint = Instance.new("Message", workspace)
		hint.Text = "The disaster is: "..c.Value
		wait(4)
		hint:Destroy()
		end
		end)
		end
		prewarn(lplr.Character)
		lplr.CharacterAdded:connect(function(chr)
		prewarn(chr)
		end)
	end)
	mframe.X.MouseButton1Click:connect(function()
	mframe.Parent:Destroy()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_KHHX70_FAKESCRIPT))
