-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local FallDownStairsGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local GUITitle = Instance.new("TextLabel")
local ItemName = Instance.new("TextBox")
local ItemGet = Instance.new("TextButton")
local TPPlinko = Instance.new("TextButton")
local TPPyramid = Instance.new("TextButton")
local TPSlide = Instance.new("TextButton")
local Plrname = Instance.new("TextBox")
local Explode = Instance.new("TextButton")
local stealhats = Instance.new("TextButton")
local velocity = Instance.new("TextButton")
local visibilitytoggle = Instance.new("TextButton")
--Properties:
FallDownStairsGUI.Name = "FallDownStairsGUI"
FallDownStairsGUI.Parent = game.CoreGui
FallDownStairsGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = FallDownStairsGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
MainFrame.BorderColor3 = Color3.new(1, 0.666667, 1)
MainFrame.Position = UDim2.new(0.596803725, 0, 0.371456683, 0)
MainFrame.Size = UDim2.new(0, 360, 0, 277)

GUITitle.Name = "GUITitle"
GUITitle.Parent = MainFrame
GUITitle.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
GUITitle.BorderColor3 = Color3.new(1, 0.666667, 1)
GUITitle.Position = UDim2.new(0.00235222699, 0, 0, 0)
GUITitle.Size = UDim2.new(0, 359, 0, 38)
GUITitle.Font = Enum.Font.TitilliumWeb
GUITitle.Text = "RedWire's Fall Down Stairs GUI"
GUITitle.TextColor3 = Color3.new(1, 1, 1)
GUITitle.TextScaled = true
GUITitle.TextSize = 14
GUITitle.TextStrokeTransparency = 0
GUITitle.TextWrapped = true

ItemName.Name = "ItemName"
ItemName.Parent = MainFrame
ItemName.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
ItemName.BorderColor3 = Color3.new(1, 0.666667, 1)
ItemName.Position = UDim2.new(0, 0, 0.144404337, 0)
ItemName.Size = UDim2.new(0, 261, 0, 37)
ItemName.Font = Enum.Font.TitilliumWeb
ItemName.PlaceholderColor3 = Color3.new(1, 0.666667, 1)
ItemName.PlaceholderText = "Type Item name here"
ItemName.Text = ""
ItemName.TextColor3 = Color3.new(1, 0.666667, 1)
ItemName.TextScaled = true
ItemName.TextSize = 14
ItemName.TextStrokeTransparency = 0
ItemName.TextWrapped = true

ItemGet.Name = "ItemGet"
ItemGet.Parent = MainFrame
ItemGet.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
ItemGet.BorderColor3 = Color3.new(1, 0.666667, 1)
ItemGet.Position = UDim2.new(0.725444436, 0, 0.141722798, 0)
ItemGet.Size = UDim2.new(0, 98, 0, 38)
ItemGet.Font = Enum.Font.TitilliumWeb
ItemGet.Text = "Get Item"
ItemGet.TextColor3 = Color3.new(1, 0.666667, 1)
ItemGet.TextScaled = true
ItemGet.TextSize = 14
ItemGet.TextStrokeTransparency = 0
ItemGet.TextWrapped = true

TPPlinko.Name = "TPPlinko"
TPPlinko.Parent = MainFrame
TPPlinko.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
TPPlinko.BorderColor3 = Color3.new(1, 0.666667, 1)
TPPlinko.Position = UDim2.new(0.00235222699, 0, 0.523409724, 0)
TPPlinko.Size = UDim2.new(0, 118, 0, 39)
TPPlinko.Font = Enum.Font.TitilliumWeb
TPPlinko.Text = "TP to Plinko"
TPPlinko.TextColor3 = Color3.new(1, 0.666667, 1)
TPPlinko.TextScaled = true
TPPlinko.TextSize = 14
TPPlinko.TextStrokeTransparency = 0
TPPlinko.TextWrapped = true

TPPyramid.Name = "TPPyramid"
TPPyramid.Parent = MainFrame
TPPyramid.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
TPPyramid.BorderColor3 = Color3.new(1, 0.666667, 1)
TPPyramid.Position = UDim2.new(0.66463083, 0, 0.758397758, 0)
TPPyramid.Size = UDim2.new(0, 120, 0, 39)
TPPyramid.Font = Enum.Font.TitilliumWeb
TPPyramid.Text = "TP to Pyramid"
TPPyramid.TextColor3 = Color3.new(1, 0.666667, 1)
TPPyramid.TextScaled = true
TPPyramid.TextSize = 14
TPPyramid.TextStrokeTransparency = 0
TPPyramid.TextWrapped = true

TPSlide.Name = "TPSlide"
TPSlide.Parent = MainFrame
TPSlide.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
TPSlide.BorderColor3 = Color3.new(1, 0.666667, 1)
TPSlide.Position = UDim2.new(0.331251353, 0, 0.305627704, 0)
TPSlide.Size = UDim2.new(0, 120, 0, 39)
TPSlide.Font = Enum.Font.TitilliumWeb
TPSlide.Text = "TP to Slide"
TPSlide.TextColor3 = Color3.new(1, 0.666667, 1)
TPSlide.TextScaled = true
TPSlide.TextSize = 14
TPSlide.TextStrokeTransparency = 0
TPSlide.TextWrapped = true

Plrname.Name = "Plrname"
Plrname.Parent = MainFrame
Plrname.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Plrname.BorderColor3 = Color3.new(1, 0.666667, 1)
Plrname.Position = UDim2.new(0, 0, 0.758397758, 0)
Plrname.Size = UDim2.new(0, 237, 0, 39)
Plrname.Font = Enum.Font.TitilliumWeb
Plrname.PlaceholderColor3 = Color3.new(1, 0.666667, 1)
Plrname.PlaceholderText = "Player to explode (leave blank to explode everyone)"
Plrname.Text = ""
Plrname.TextColor3 = Color3.new(1, 1, 1)
Plrname.TextScaled = true
Plrname.TextSize = 14
Plrname.TextStrokeTransparency = 0
Plrname.TextWrapped = true

Explode.Name = "Explode"
Explode.Parent = MainFrame
Explode.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Explode.BorderColor3 = Color3.new(1, 0.666667, 1)
Explode.Position = UDim2.new(0.661999822, 0, 0.521999955, 0)
Explode.Size = UDim2.new(0, 121, 0, 39)
Explode.Font = Enum.Font.TitilliumWeb
Explode.Text = "Explode Player"
Explode.TextColor3 = Color3.new(1, 0.666667, 1)
Explode.TextScaled = true
Explode.TextSize = 14
Explode.TextStrokeTransparency = 0
Explode.TextWrapped = true

stealhats.Name = "stealhats"
stealhats.Parent = MainFrame
stealhats.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
stealhats.BorderColor3 = Color3.new(1, 0.666667, 1)
stealhats.Position = UDim2.new(0.00235222699, 0, 0.305627704, 0)
stealhats.Size = UDim2.new(0, 118, 0, 39)
stealhats.Font = Enum.Font.TitilliumWeb
stealhats.Text = "Steal all hats"
stealhats.TextColor3 = Color3.new(1, 0.666667, 1)
stealhats.TextScaled = true
stealhats.TextSize = 14
stealhats.TextStrokeTransparency = 0
stealhats.TextWrapped = true

velocity.Name = "velocity"
velocity.Parent = MainFrame
velocity.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
velocity.BorderColor3 = Color3.new(1, 0.666667, 1)
velocity.Position = UDim2.new(0.66463083, 0, 0.305627704, 0)
velocity.Size = UDim2.new(0, 120, 0, 39)
velocity.Font = Enum.Font.TitilliumWeb
velocity.Text = "Fix part Velocity thing"
velocity.TextColor3 = Color3.new(1, 0.666667, 1)
velocity.TextScaled = true
velocity.TextSize = 14
velocity.TextStrokeTransparency = 0
velocity.TextWrapped = true

visibilitytoggle.Name = "visibilitytoggle"
visibilitytoggle.Parent = MainFrame
visibilitytoggle.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
visibilitytoggle.BorderColor3 = Color3.new(1, 0.666667, 1)
visibilitytoggle.Position = UDim2.new(0.330874622, 0, 0.522234201, 0)
visibilitytoggle.Size = UDim2.new(0, 120, 0, 39)
visibilitytoggle.Font = Enum.Font.TitilliumWeb
visibilitytoggle.Text = "Visibility Toggle"
visibilitytoggle.TextColor3 = Color3.new(1, 0.666667, 1)
visibilitytoggle.TextScaled = true
visibilitytoggle.TextSize = 14
visibilitytoggle.TextStrokeTransparency = 0
visibilitytoggle.TextWrapped = true
-- Scripts:
function SCRIPT_KJFV85_FAKESCRIPT() -- FallDownStairsGUI.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = FallDownStairsGUI
	local GUI = script.Parent.MainFrame
	
	for i,v in pairs(script.Parent:GetChildren()) do
		if v.ClassName == "Frame" then
			v.Active = true
			v.Draggable = true
		end
	end
	
	GUI.ItemGet.MouseButton1Click:connect(function()
		for i, Item in pairs(game.ReplicatedStorage.ShopItems:GetChildren()) do
			local itemname = GUI.ItemName.Text
			if string.match (string.lower(Item.Name), string.lower(itemname)) then
				game.ReplicatedStorage.Events.PlayerShopPurchase:FireServer(Item.Name, 0)
			end
		end
	end)
	
	GUI.TPPlinko.MouseButton1Click:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Dest_Plinko.CFrame
	end)
	
	GUI.TPPyramid.MouseButton1Click:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Dest_Pyramid.CFrame
	end)
	
	GUI.TPSlide.MouseButton1Click:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Dest_Slide.CFrame
	end)
	
	GUI.Explode.MouseButton1Click:connect(function()
		for i, plr in pairs(game.Players:GetPlayers()) do
		local plrname = GUI.Plrname.Text
			if string.match (string.lower(plr.Name), string.lower(plrname)) then
				if workspace:FindFirstChild(plr.Name) then
					game.ReplicatedStorage.Events.GenerateExplosion:FireServer(100, 100000000, plr.Character.Torso.Position)
				end
			end
		end
	end)
	
	GUI.stealhats.MouseButton1Click:connect(function()
		for i, plr in pairs(game.Players:GetPlayers()) do
			if plr.Character then
				game.ReplicatedStorage.Events.TransferHats:FireServer(plr.Character)
			end
		end
	end)
	
	GUI.velocity.MouseButton1Click:connect(function()
		for i, child in pairs(workspace:GetDescendants()) do
			if child:IsA("BasePart") then
				child.Velocity = Vector3.new(0, 0, 0)
			end
		end
	end)
	
	GUI.visibilitytoggle.MouseButton1Click:connect(function()
		local torso = game.Players.LocalPlayer.Character.Torso
		if torso.Transparency == 0 then
			game.ReplicatedStorage.Events.SetPlayerTransparency:FireServer(1)
		elseif torso.Transparency == 1 then
			game.ReplicatedStorage.Events.SetPlayerTransparency:FireServer(0)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_KJFV85_FAKESCRIPT))
