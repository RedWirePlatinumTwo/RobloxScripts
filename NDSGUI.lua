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
--Properties:
RedWiresNDSGUI.Name = "RedWiresNDSGUI"
RedWiresNDSGUI.Parent = game.CoreGui
RedWiresNDSGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = RedWiresNDSGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
MainFrame.BorderColor3 = Color3.new(0, 1, 1)
MainFrame.Position = UDim2.new(0.63411206, 0, 0.140000343, 0)
MainFrame.Size = UDim2.new(0, 322, 0, 229)

Falldamageremove.Name = "Falldamageremove"
Falldamageremove.Parent = MainFrame
Falldamageremove.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
Falldamageremove.BorderColor3 = Color3.new(0, 1, 1)
Falldamageremove.Position = UDim2.new(0.188111112, 0, 0.791247904, 0)
Falldamageremove.Size = UDim2.new(0, 197, 0, 40)
Falldamageremove.Font = Enum.Font.SourceSansBold
Falldamageremove.Text = "Remove Fall Damage"
Falldamageremove.TextColor3 = Color3.new(0, 0.666667, 1)
Falldamageremove.TextSize = 20
Falldamageremove.TextWrapped = true

prewarn.Name = "prewarn"
prewarn.Parent = MainFrame
prewarn.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
prewarn.BorderColor3 = Color3.new(0, 1, 1)
prewarn.Position = UDim2.new(0.0141980648, 0, 0.258445829, 0)
prewarn.Size = UDim2.new(0, 157, 0, 41)
prewarn.Font = Enum.Font.SourceSansBold
prewarn.Text = "Pre-Warn Disaster"
prewarn.TextColor3 = Color3.new(0, 0.666667, 1)
prewarn.TextSize = 20
prewarn.TextWrapped = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 320, 0, 49)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "RedWire's Natural Disaster Survival GUI"
Title.TextColor3 = Color3.new(0.333333, 0.666667, 1)
Title.TextScaled = true
Title.TextSize = 16
Title.TextStrokeColor3 = Color3.new(0, 0.333333, 1)
Title.TextWrapped = true

ChatDisaster.Name = "ChatDisaster"
ChatDisaster.Parent = MainFrame
ChatDisaster.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
ChatDisaster.BorderColor3 = Color3.new(0, 1, 1)
ChatDisaster.Position = UDim2.new(0.501775742, 0, 0.258445859, 0)
ChatDisaster.Size = UDim2.new(0, 157, 0, 41)
ChatDisaster.Font = Enum.Font.SourceSansBold
ChatDisaster.Text = "Post Disaster In chat"
ChatDisaster.TextColor3 = Color3.new(0, 0.666667, 1)
ChatDisaster.TextSize = 20
ChatDisaster.TextWrapped = true

Admin.Name = "Admin"
Admin.Parent = MainFrame
Admin.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
Admin.BorderColor3 = Color3.new(0, 1, 1)
Admin.Position = UDim2.new(0.0141980667, 0, 0.515348732, 0)
Admin.Size = UDim2.new(0, 157, 0, 41)
Admin.Font = Enum.Font.SourceSansBold
Admin.Text = "Infinite Yield"
Admin.TextColor3 = Color3.new(0, 0.666667, 1)
Admin.TextSize = 20
Admin.TextWrapped = true

lobbytp.Name = "lobbytp"
lobbytp.Parent = MainFrame
lobbytp.BackgroundColor3 = Color3.new(0, 0.333333, 0.498039)
lobbytp.BorderColor3 = Color3.new(0, 1, 1)
lobbytp.Position = UDim2.new(0.501666129, 0, 0.515348732, 0)
lobbytp.Size = UDim2.new(0, 157, 0, 41)
lobbytp.Font = Enum.Font.SourceSansBold
lobbytp.Text = "TP to lobby"
lobbytp.TextColor3 = Color3.new(0, 0.666667, 1)
lobbytp.TextSize = 20
lobbytp.TextWrapped = true
-- Scripts:
function SCRIPT_YBCO67_FAKESCRIPT() -- RedWiresNDSGUI.LocalScript 
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
	
		local function nofalldmg(chr)
	
			chr.ChildAdded:connect(function(c)
				if c.Name == "FallDamageScript" or c.Name == "CharacterScript" then
					task.wait(0.2)
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
			task.wait(4)
			hint:Destroy()
		end
	
		local function prewarn(chr)
			chr.ChildAdded:connect(function(c)
				if c.Name == "SurvivalTag" then
					local hint = Instance.new("Message", workspace)
					hint.Text = "The disaster is: "..c.Value
					task.wait(4)
					hint:Destroy()
				end
			end)
		end
	
		prewarn(lplr.Character)
	
		lplr.CharacterAdded:connect(function(chr)
			prewarn(chr)
		end)
	
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YBCO67_FAKESCRIPT))
