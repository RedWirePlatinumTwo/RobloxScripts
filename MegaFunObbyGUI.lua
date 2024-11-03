-- Gui to Lua
-- Version: 3.2

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
MainFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
MainFrame.BorderColor3 = Color3.fromRGB(85, 85, 255)
MainFrame.Position = UDim2.new(0.551999986, 0, 0.129999995, 0)
MainFrame.Size = UDim2.new(0, 342, 0, 208)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Position = UDim2.new(0.0295752808, 0, -0.0011369288, 0)
Title.Size = UDim2.new(0, 321, 0, 43)
Title.Font = Enum.Font.Ubuntu
Title.Text = "RedWire's Mega Fun Obby GUI"
Title.TextColor3 = Color3.fromRGB(85, 85, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

Currentstage.Name = "Currentstage"
Currentstage.Parent = MainFrame
Currentstage.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Currentstage.BorderColor3 = Color3.fromRGB(85, 85, 255)
Currentstage.Position = UDim2.new(0.0672514588, 0, 0.3125, 0)
Currentstage.Size = UDim2.new(0, 126, 0, 49)
Currentstage.Font = Enum.Font.Ubuntu
Currentstage.PlaceholderColor3 = Color3.fromRGB(85, 85, 255)
Currentstage.PlaceholderText = "Current stage number"
Currentstage.Text = ""
Currentstage.TextColor3 = Color3.fromRGB(85, 85, 255)
Currentstage.TextSize = 24.000
Currentstage.TextStrokeTransparency = 0.000
Currentstage.TextWrapped = true

Endstage.Name = "Endstage"
Endstage.Parent = MainFrame
Endstage.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Endstage.BorderColor3 = Color3.fromRGB(85, 85, 255)
Endstage.Position = UDim2.new(0.555555522, 0, 0.3125, 0)
Endstage.Size = UDim2.new(0, 126, 0, 49)
Endstage.Font = Enum.Font.Ubuntu
Endstage.PlaceholderColor3 = Color3.fromRGB(85, 85, 255)
Endstage.PlaceholderText = "End stage number"
Endstage.Text = ""
Endstage.TextColor3 = Color3.fromRGB(85, 85, 255)
Endstage.TextSize = 24.000
Endstage.TextStrokeTransparency = 0.000
Endstage.TextWrapped = true

stageskip.Name = "stageskip"
stageskip.Parent = MainFrame
stageskip.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
stageskip.BorderColor3 = Color3.fromRGB(85, 85, 255)
stageskip.Position = UDim2.new(0.0266959202, 0, 0.651538432, 0)
stageskip.Size = UDim2.new(0, 100, 0, 50)
stageskip.Font = Enum.Font.Ubuntu
stageskip.Text = "Skip Stage"
stageskip.TextColor3 = Color3.fromRGB(85, 85, 255)
stageskip.TextSize = 20.000
stageskip.TextStrokeTransparency = 0.000

delkill.Name = "delkill"
delkill.Parent = MainFrame
delkill.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
delkill.BorderColor3 = Color3.fromRGB(85, 85, 255)
delkill.Position = UDim2.new(0.338923931, 0, 0.651538432, 0)
delkill.Size = UDim2.new(0, 109, 0, 50)
delkill.Font = Enum.Font.Ubuntu
delkill.Text = "Delete Kill Objects"
delkill.TextColor3 = Color3.fromRGB(85, 85, 255)
delkill.TextSize = 20.000
delkill.TextStrokeTransparency = 0.000
delkill.TextWrapped = true

respawn.Name = "respawn"
respawn.Parent = MainFrame
respawn.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
respawn.BorderColor3 = Color3.fromRGB(85, 85, 255)
respawn.Position = UDim2.new(0.673000038, 0, 0.651538432, 0)
respawn.Size = UDim2.new(0, 100, 0, 50)
respawn.Font = Enum.Font.Ubuntu
respawn.Text = "Kill yourself NOW!!!!!!!!!!!!!!!!"
respawn.TextColor3 = Color3.fromRGB(85, 85, 255)
respawn.TextSize = 20.000
respawn.TextStrokeTransparency = 0.000
respawn.TextWrapped = true

-- Scripts:

local function YBDS_fake_script() -- Megafunobby.LocalScript 
	local script = Instance.new('LocalScript', Megafunobby)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/getservice%20auto-converter.lua"))()
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
	
		local skip = plrgui.HUD.Groundbar.SKIPS
		skip.RemainT.Text = "SKIPS LEFT : yes"
		plrgui.Note.Contents.Info_Skip:Destroy()
	
		skip.SELECT.MouseButton1Click:connect(function()
			lplr.Character.HumanoidRootPart.CFrame = workspace.stages[lplr.leaderstats.Stage.Value + 1].CFrame
		end)
	
	elseif game.PlaceId == 982130670 then
		local f = plrgui.HUD.skipsLabel
		local skips = f:Clone()
		skips.Parent = f.Parent
		f:Destroy()
		skips.Text = "Skips Left: yes"
	
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
coroutine.wrap(YBDS_fake_script)()
