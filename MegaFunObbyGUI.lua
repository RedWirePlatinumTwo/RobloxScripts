-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Megafunobby = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Currentstage = Instance.new("ImageLabel")
local Textbox = Instance.new("TextBox")
local Endstage = Instance.new("ImageLabel")
local Textbox_2 = Instance.new("TextBox")
local respawn = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local stageskip = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local delkill = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")
local X = Instance.new("TextButton")
--Properties:
Megafunobby.Name = "Megafunobby"
Megafunobby.Parent = game.CoreGui
Megafunobby.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Megafunobby
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.551976562, 0, 0.130208328, 0)
MainFrame.Size = UDim2.new(0, 342, 0, 208)
MainFrame.Image = "rbxassetid://2372029791"
MainFrame.ImageColor3 = Color3.new(0.0235294, 0.709804, 1)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.0295752808, 0, 0.0325169191, 0)
Title.Size = UDim2.new(0, 280, 0, 43)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "REDWIRE'S MEGA FUN OBBY GUI"
Title.TextColor3 = Color3.new(0.00784314, 0.329412, 0.454902)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Currentstage.Name = "Currentstage"
Currentstage.Parent = MainFrame
Currentstage.BackgroundColor3 = Color3.new(1, 1, 1)
Currentstage.BackgroundTransparency = 1
Currentstage.Position = UDim2.new(0.0497847758, 0, 0.240384609, 0)
Currentstage.Size = UDim2.new(0, 126, 0, 49)
Currentstage.Image = "rbxassetid://2372029791"
Currentstage.ImageColor3 = Color3.new(0.333333, 1, 0.498039)

Textbox.Name = "Textbox"
Textbox.Parent = Currentstage
Textbox.BackgroundColor3 = Color3.new(1, 1, 1)
Textbox.BackgroundTransparency = 1
Textbox.Position = UDim2.new(0, 0, 0.136587977, 0)
Textbox.Size = UDim2.new(0, 127, 0, 34)
Textbox.Font = Enum.Font.SourceSansBold
Textbox.PlaceholderColor3 = Color3.new(0.0745098, 0.223529, 0.105882)
Textbox.PlaceholderText = "CURRENT STAGE NUMBER HERE"
Textbox.Text = ""
Textbox.TextColor3 = Color3.new(0.0745098, 0.223529, 0.105882)
Textbox.TextScaled = true
Textbox.TextSize = 14
Textbox.TextWrapped = true

Endstage.Name = "Endstage"
Endstage.Parent = MainFrame
Endstage.BackgroundColor3 = Color3.new(1, 1, 1)
Endstage.BackgroundTransparency = 1
Endstage.Position = UDim2.new(0.565982342, 0, 0.240384609, 0)
Endstage.Size = UDim2.new(0, 126, 0, 49)
Endstage.Image = "rbxassetid://2372029791"
Endstage.ImageColor3 = Color3.new(0.333333, 1, 0.498039)

Textbox_2.Name = "Textbox"
Textbox_2.Parent = Endstage
Textbox_2.BackgroundColor3 = Color3.new(1, 1, 1)
Textbox_2.BackgroundTransparency = 1
Textbox_2.Position = UDim2.new(0, 0, 0.136587977, 0)
Textbox_2.Size = UDim2.new(0, 127, 0, 34)
Textbox_2.Font = Enum.Font.SourceSansBold
Textbox_2.PlaceholderColor3 = Color3.new(0.0745098, 0.223529, 0.105882)
Textbox_2.PlaceholderText = "END STAGE NUMBER HERE"
Textbox_2.Text = ""
Textbox_2.TextColor3 = Color3.new(0.0745098, 0.223529, 0.105882)
Textbox_2.TextScaled = true
Textbox_2.TextSize = 14
Textbox_2.TextWrapped = true

respawn.Name = "respawn"
respawn.Parent = MainFrame
respawn.BackgroundColor3 = Color3.new(1, 1, 1)
respawn.BackgroundTransparency = 1
respawn.Position = UDim2.new(0.672999978, 0, 0.564999998, 0)
respawn.Size = UDim2.new(0, 101, 0, 47)
respawn.Image = "rbxassetid://2372029791"
respawn.ImageColor3 = Color3.new(1, 0.270588, 0.270588)

TextLabel.Parent = respawn
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.00909121707, 0, 0.148936167, 0)
TextLabel.Size = UDim2.new(0, 101, 0, 34)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "RESPAWN"
TextLabel.TextColor3 = Color3.new(0.384314, 0.0980392, 0.0980392)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

stageskip.Name = "stageskip"
stageskip.Parent = MainFrame
stageskip.BackgroundColor3 = Color3.new(1, 1, 1)
stageskip.BackgroundTransparency = 1
stageskip.Position = UDim2.new(0.0237719305, 0, 0.564999998, 0)
stageskip.Size = UDim2.new(0, 101, 0, 47)
stageskip.Image = "rbxassetid://2372029791"
stageskip.ImageColor3 = Color3.new(1, 0.270588, 0.270588)

TextLabel_2.Parent = stageskip
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(-3.02154234e-07, 0, 0.127659574, 0)
TextLabel_2.Size = UDim2.new(0, 101, 0, 34)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "SKIP TO END"
TextLabel_2.TextColor3 = Color3.new(0.384314, 0.0980392, 0.0980392)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

delkill.Name = "delkill"
delkill.Parent = MainFrame
delkill.BackgroundColor3 = Color3.new(1, 1, 1)
delkill.BackgroundTransparency = 1
delkill.Position = UDim2.new(0.335999995, 0, 0.564999998, 0)
delkill.Size = UDim2.new(0, 110, 0, 47)
delkill.Image = "rbxassetid://2372029791"
delkill.ImageColor3 = Color3.new(1, 0.270588, 0.270588)

TextLabel_3.Parent = delkill
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(-2.7743252e-07, 0, 0.127659574, 0)
TextLabel_3.Size = UDim2.new(0, 110, 0, 34)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "DELETE KILL OBJECTS"
TextLabel_3.TextColor3 = Color3.new(0.384314, 0.0980392, 0.0980392)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

X.Name = "X"
X.Parent = MainFrame
X.BackgroundColor3 = Color3.new(1, 1, 1)
X.BackgroundTransparency = 1
X.Position = UDim2.new(0.850877166, 0, 0.028846154, 0)
X.Size = UDim2.new(0, 40, 0, 37)
X.Font = Enum.Font.SourceSansBold
X.Text = "×"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true
-- Scripts:
function SCRIPT_RPLS76_FAKESCRIPT() -- Megafunobby.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Megafunobby
	local frame = script.Parent.MainFrame
	frame.Active = true
	frame.Draggable = true
	local lplr = game.Players.LocalPlayer
	local plrgui = lplr.PlayerGui
	if game.PlaceId == 12996397 then
	
	plrgui.Chat.Frame.Changed:connect(function()
	if plrgui.Chat.Frame.Visible ~= true then
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
	end
	end)
	
	local skip = plrgui.MFO_UI.Groundbar.SKIPS
	skip.RemainT.Text = "SKIPS LEFT : inf"
	plrgui.Note.Contents.Info_Skip:Destroy()
	
	skip.SELECT.MouseButton1Click:connect(function()
	lplr.Character.HumanoidRootPart.CFrame = workspace.stages[lplr.leaderstats.Stage.Value + 1].CFrame
	end)
	
	elseif game.PlaceId == 982130670 then
	local f = plrgui.HUD.skipsLabel
	local skips = f:Clone()
	skips.Parent = f.Parent
	f:Destroy()
	skips.Text = "Skips Left: inf"
	
	skips.MouseButton1Click:connect(function()
	lplr.Character.HumanoidRootPart.CFrame = workspace.stages[lplr.leaderstats.Stage.Value + 1].CFrame
	end)
	
	end
	frame.respawn.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end)
	
	frame.delkill.MouseButton1Click:connect(function()
		for i, kill in ipairs(workspace.kill:GetChildren()) do
		if kill:IsA("BasePart") and kill.Transparency ~= 1 then
		kill:Destroy()
		end
	end
	end)
	
		local mps = game:GetService("MarketplaceService")
		local success, gamename = pcall(mps.GetProductInfo, mps, game.PlaceId)
		if success then
			namestring = gamename.Name
			namestring = namestring:gsub("Mega Fun Obby 2", "oof")
			frame.Endstage.Textbox.Text = string.match(namestring,"%d+")
		end
	
	frame.stageskip.MouseButton1Click:connect(function()
	local start = tonumber(frame.Currentstage.Textbox.Text)
	local End = tonumber(frame.Endstage.Textbox.Text)
	if start ~= End then
	start = start + 1
			for i = start, End do
				lplr.Character.HumanoidRootPart.CFrame = game.Workspace.stages[i].CFrame
				repeat task.wait() until lplr.leaderstats.Stage.Value == i
			end
	end
	end)
	
	local stage = game.Players.LocalPlayer.leaderstats.Stage
	frame.Currentstage.Textbox.Text = tostring(stage.Value)
	stage.Changed:connect(function()
	frame.Currentstage.Textbox.Text = tostring(stage.Value)
	end)
	
	frame.X.MouseButton1Click:connect(function()
	frame.Parent:Destroy()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_RPLS76_FAKESCRIPT))
