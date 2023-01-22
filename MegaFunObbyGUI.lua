-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Megafunobby = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Currentstage = Instance.new("TextBox")
local Endstage = Instance.new("TextBox")
local stageskip = Instance.new("TextButton")
local delkill = Instance.new("TextButton")
local respawn = Instance.new("TextButton")
--Properties:
Megafunobby.Name = "Megafunobby"
Megafunobby.Parent = game.CoreGui
Megafunobby.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Megafunobby
MainFrame.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.333333)
MainFrame.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
MainFrame.Position = UDim2.new(0.551999986, 0, 0.129999995, 0)
MainFrame.Size = UDim2.new(0, 342, 0, 208)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.0295752808, 0, -0.0011369288, 0)
Title.Size = UDim2.new(0, 321, 0, 43)
Title.Font = Enum.Font.Unknown
Title.Text = "REDWIRE'S MEGA FUN OBBY GUI"
Title.TextColor3 = Color3.new(0.666667, 0.333333, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

Currentstage.Name = "Currentstage"
Currentstage.Parent = MainFrame
Currentstage.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.498039)
Currentstage.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
Currentstage.Position = UDim2.new(0.0672514588, 0, 0.3125, 0)
Currentstage.Size = UDim2.new(0, 126, 0, 49)
Currentstage.Font = Enum.Font.Unknown
Currentstage.PlaceholderColor3 = Color3.new(0.670588, 0.670588, 0.670588)
Currentstage.PlaceholderText = "CURRENT STAGE NUMBER HERE"
Currentstage.Text = ""
Currentstage.TextColor3 = Color3.new(0.666667, 0.333333, 1)
Currentstage.TextSize = 20
Currentstage.TextStrokeTransparency = 0
Currentstage.TextWrapped = true

Endstage.Name = "Endstage"
Endstage.Parent = MainFrame
Endstage.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.498039)
Endstage.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
Endstage.Position = UDim2.new(0.555555522, 0, 0.3125, 0)
Endstage.Size = UDim2.new(0, 126, 0, 49)
Endstage.Font = Enum.Font.Unknown
Endstage.PlaceholderColor3 = Color3.new(0.670588, 0.670588, 0.670588)
Endstage.PlaceholderText = "END STAGE NUMBER HERE"
Endstage.Text = ""
Endstage.TextColor3 = Color3.new(0.666667, 0.333333, 1)
Endstage.TextSize = 20
Endstage.TextStrokeTransparency = 0
Endstage.TextWrapped = true

stageskip.Name = "stageskip"
stageskip.Parent = MainFrame
stageskip.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.498039)
stageskip.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
stageskip.Position = UDim2.new(0.0266959202, 0, 0.651538432, 0)
stageskip.Size = UDim2.new(0, 100, 0, 50)
stageskip.Font = Enum.Font.DenkOne
stageskip.Text = "Skip Stage"
stageskip.TextColor3 = Color3.new(0.666667, 0.333333, 1)
stageskip.TextSize = 20
stageskip.TextStrokeTransparency = 0

delkill.Name = "delkill"
delkill.Parent = MainFrame
delkill.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.498039)
delkill.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
delkill.Position = UDim2.new(0.338923931, 0, 0.651538432, 0)
delkill.Size = UDim2.new(0, 109, 0, 50)
delkill.Font = Enum.Font.DenkOne
delkill.Text = "Delete Kill Objects"
delkill.TextColor3 = Color3.new(0.666667, 0.333333, 1)
delkill.TextSize = 20
delkill.TextStrokeTransparency = 0
delkill.TextWrapped = true

respawn.Name = "respawn"
respawn.Parent = MainFrame
respawn.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.498039)
respawn.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
respawn.Position = UDim2.new(0.673000038, 0, 0.651538432, 0)
respawn.Size = UDim2.new(0, 100, 0, 50)
respawn.Font = Enum.Font.DenkOne
respawn.Text = "Self-die button"
respawn.TextColor3 = Color3.new(0.666667, 0.333333, 1)
respawn.TextSize = 20
respawn.TextStrokeTransparency = 0
respawn.TextWrapped = true
-- Scripts:
function SCRIPT_GBKC78_FAKESCRIPT() -- Megafunobby.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Megafunobby
	local frame = script.Parent.MainFrame
	frame.Active = true
	frame.Draggable = true
	local lplr = game.Players.LocalPlayer
	local plrgui = lplr.PlayerGui
	
	for i,v in pairs(script.Parent:GetChildren()) do
		if v.ClassName == "TextBox" or v.ClassName == "TextButton" or v.ClassName == "TextLabel" then
			v.Font = Enum.Font.DenkOne
		end
	end
	
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
	
	else
		wait(0.5)
		script.Parent:Destroy()
		return
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
			frame.Endstage.Text = string.match(namestring,"%d+")
		end
	
	frame.stageskip.MouseButton1Click:connect(function()
	local start = tonumber(frame.Currentstage.Text)
	local End = tonumber(frame.Endstage.Text)
		if start ~= End then
		start = start + 1
			for i = start, End do
				lplr.Character.HumanoidRootPart.CFrame = game.Workspace.stages[i].CFrame
				repeat task.wait() until lplr.leaderstats.Stage.Value == i
			end
		end
	end)
	
	local stage = game.Players.LocalPlayer.leaderstats.Stage
	frame.Currentstage.Text = tostring(stage.Value)
	stage.Changed:connect(function()
		frame.Currentstage.Text = tostring(stage.Value)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_GBKC78_FAKESCRIPT))
