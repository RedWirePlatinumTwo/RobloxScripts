-- Gui to Lua
-- Version: 3.2

-- Instances:

local RedWiresNDSGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local FallDmgBypass = Instance.new("TextButton")
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
MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
MainFrame.BorderColor3 = Color3.fromRGB(0, 255, 255)
MainFrame.Position = UDim2.new(0.63411206, 0, 0.140000343, 0)
MainFrame.Size = UDim2.new(0, 322, 0, 229)

FallDmgBypass.Name = "FallDmgBypass"
FallDmgBypass.Parent = MainFrame
FallDmgBypass.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
FallDmgBypass.BorderColor3 = Color3.fromRGB(0, 255, 255)
FallDmgBypass.Position = UDim2.new(0.188111112, 0, 0.791247904, 0)
FallDmgBypass.Size = UDim2.new(0, 197, 0, 40)
FallDmgBypass.Font = Enum.Font.SourceSansBold
FallDmgBypass.Text = "Fall Damage Workaround"
FallDmgBypass.TextColor3 = Color3.fromRGB(0, 170, 255)
FallDmgBypass.TextSize = 20.000
FallDmgBypass.TextWrapped = true

prewarn.Name = "prewarn"
prewarn.Parent = MainFrame
prewarn.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
prewarn.BorderColor3 = Color3.fromRGB(0, 255, 255)
prewarn.Position = UDim2.new(0.0141980648, 0, 0.258445829, 0)
prewarn.Size = UDim2.new(0, 157, 0, 41)
prewarn.Font = Enum.Font.SourceSansBold
prewarn.Text = "Pre-Warn Disaster"
prewarn.TextColor3 = Color3.fromRGB(0, 170, 255)
prewarn.TextSize = 20.000
prewarn.TextWrapped = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 320, 0, 49)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "RedWire's Natural Disaster Survival GUI"
Title.TextColor3 = Color3.fromRGB(0, 170, 255)
Title.TextScaled = true
Title.TextSize = 16.000
Title.TextStrokeColor3 = Color3.fromRGB(0, 84, 255)
Title.TextWrapped = true

ChatDisaster.Name = "ChatDisaster"
ChatDisaster.Parent = MainFrame
ChatDisaster.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
ChatDisaster.BorderColor3 = Color3.fromRGB(0, 255, 255)
ChatDisaster.Position = UDim2.new(0.501775742, 0, 0.258445859, 0)
ChatDisaster.Size = UDim2.new(0, 157, 0, 41)
ChatDisaster.Font = Enum.Font.SourceSansBold
ChatDisaster.Text = "Post Disaster In chat"
ChatDisaster.TextColor3 = Color3.fromRGB(0, 170, 255)
ChatDisaster.TextSize = 20.000
ChatDisaster.TextWrapped = true

Admin.Name = "Admin"
Admin.Parent = MainFrame
Admin.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
Admin.BorderColor3 = Color3.fromRGB(0, 255, 255)
Admin.Position = UDim2.new(0.0141980667, 0, 0.515348732, 0)
Admin.Size = UDim2.new(0, 157, 0, 41)
Admin.Font = Enum.Font.SourceSansBold
Admin.Text = "Infinite Yield"
Admin.TextColor3 = Color3.fromRGB(0, 170, 255)
Admin.TextSize = 20.000
Admin.TextWrapped = true

lobbytp.Name = "lobbytp"
lobbytp.Parent = MainFrame
lobbytp.BackgroundColor3 = Color3.fromRGB(24, 24, 72)
lobbytp.BorderColor3 = Color3.fromRGB(0, 255, 255)
lobbytp.Position = UDim2.new(0.501666129, 0, 0.515348732, 0)
lobbytp.Size = UDim2.new(0, 157, 0, 41)
lobbytp.Font = Enum.Font.SourceSansBold
lobbytp.Text = "TP to lobby"
lobbytp.TextColor3 = Color3.fromRGB(0, 170, 255)
lobbytp.TextSize = 20.000
lobbytp.TextWrapped = true

-- Scripts:

local function OQQJ_fake_script() -- RedWiresNDSGUI.LocalScript 
	local script = Instance.new('LocalScript', RedWiresNDSGUI)

	local mframe = script.Parent.MainFrame
	mframe.Draggable = true
	local lplr = game:GetService("Players").LocalPlayer
	local tcservice = game:GetService("TextChatService")
	local txtchannel
	local limitVelocity = false
	local limiter = 65
	for i,v in pairs(tcservice.TextChannels:GetChildren()) do
		if v.Name:lower():find("general") then
			txtchannel = v
			break
		end
	end
	
	function servermsg(text)
		txtchannel:SendAsync(text)
	end
	
	game:GetService("RunService").Heartbeat:connect(function()
		if lplr.Character then
			if lplr.Character:FindFirstChild("HumanoidRootPart") and limitVelocity then
				local hrp = lplr.Character.HumanoidRootPart
				local vel = hrp.Velocity
				if vel.Magnitude > limiter then
					hrp.Velocity = vel.Unit * limiter
				end
			end
		end
	end)
	
	local function singleClick(button, func)
		local connection
		connection = button.Activated:connect(function()
			connection:disconnect()
			func()
		end)
	end
	
	singleClick(mframe.Admin, function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
	
	mframe.lobbytp.Activated:connect(function()
		lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 178, 379)
	end)
	
	mframe.ChatDisaster.Activated:connect(function()
		servermsg("The disaster for this match is: ".. lplr.Character.SurvivalTag.Value)
	end)
	
	local falldmgtxt = mframe.FallDmgBypass.Text
	mframe.FallDmgBypass.Activated:connect(function()
		limitVelocity = not limitVelocity
		mframe.FallDmgBypass.Text = ("%s (%s)"):format(falldmgtxt, if limitVelocity then "on" else "off")
	end)
	
	singleClick(mframe.prewarn, function()
		local tag = lplr.Character:FindFirstChild("SurvivalTag")
		if tag then
			local hint = Instance.new("Message", workspace)
			hint.Text = tag.Value
			task.wait(4)
			hint:Destroy()
		end
	
		local function preWarn(chr)
			chr.ChildAdded:connect(function(c)
				if c.Name == "SurvivalTag" then
					local hint = Instance.new("Message", workspace)
					hint.Text = "The disaster is: "..c.Value
					task.wait(4)
					hint:Destroy()
				end
			end)
		end
	
		if lplr.Character then
			preWarn(lplr.Character)
		end
		
		lplr.CharacterAdded:connect(preWarn)
	end)
end
coroutine.wrap(OQQJ_fake_script)()
