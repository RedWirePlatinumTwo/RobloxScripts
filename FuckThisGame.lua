-- Gui to Lua
-- Version: 3.2

-- Instances:

local generalgamefucker = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local title = Instance.new("TextLabel")
local wstitle = Instance.new("TextLabel")
local wsnumber = Instance.new("TextBox")
local flyscript = Instance.new("TextButton")
local aimbot = Instance.new("TextButton")
local infjump = Instance.new("TextButton")
local admin = Instance.new("TextButton")
local ctrldestroy = Instance.new("TextButton")
local jumptitle = Instance.new("TextLabel")
local jumpnumber = Instance.new("TextBox")
local focusonchr = Instance.new("TextButton")

--Properties:

generalgamefucker.Name = "generalgamefucker"
generalgamefucker.Parent = game.CoreGui
generalgamefucker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe.Name = "mainframe"
mainframe.Parent = generalgamefucker
mainframe.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 127)
mainframe.Active = true
mainframe.Draggable = true
mainframe.Position = UDim2.new(0.7152493, -352, 0.448029727, -132)
mainframe.Size = UDim2.new(0, 320, 0, 271)

title.Name = "title"
title.Parent = mainframe
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 320, 0, 50)
title.Font = Enum.Font.JosefinSans
title.Text = "The I-fucking-hate-this-game GUI"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 20.000

wstitle.Name = "wstitle"
wstitle.Parent = mainframe
wstitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wstitle.BackgroundTransparency = 1.000
wstitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
wstitle.BorderSizePixel = 0
wstitle.Position = UDim2.new(0, 0, 0.131968617, 0)
wstitle.Size = UDim2.new(0, 196, 0, 50)
wstitle.Font = Enum.Font.JosefinSans
wstitle.Text = "Walkspeed number:"
wstitle.TextColor3 = Color3.fromRGB(0, 0, 0)
wstitle.TextSize = 20.000

wsnumber.Name = "wsnumber"
wsnumber.Parent = mainframe
wsnumber.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
wsnumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
wsnumber.BorderSizePixel = 0
wsnumber.Position = UDim2.new(0.612500012, 0, 0.149825767, 0)
wsnumber.Size = UDim2.new(0, 117, 0, 37)
wsnumber.Font = Enum.Font.Fantasy
wsnumber.PlaceholderText = "Walkspeed number"
wsnumber.Text = "30"
wsnumber.TextColor3 = Color3.fromRGB(0, 0, 0)
wsnumber.TextScaled = true
wsnumber.TextSize = 20.000
wsnumber.TextWrapped = true

flyscript.Name = "flyscript"
flyscript.Parent = mainframe
flyscript.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
flyscript.BorderColor3 = Color3.fromRGB(0, 0, 0)
flyscript.BorderSizePixel = 0
flyscript.Position = UDim2.new(0.0406249985, 0, 0.516854346, 0)
flyscript.Size = UDim2.new(0, 144, 0, 33)
flyscript.Font = Enum.Font.Fantasy
flyscript.Text = "Fly script"
flyscript.TextColor3 = Color3.fromRGB(0, 0, 0)
flyscript.TextSize = 20.000

aimbot.Name = "aimbot"
aimbot.Parent = mainframe
aimbot.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
aimbot.BorderColor3 = Color3.fromRGB(0, 0, 0)
aimbot.BorderSizePixel = 0
aimbot.Position = UDim2.new(0.524999976, 0, 0.514906406, 0)
aimbot.Size = UDim2.new(0, 144, 0, 33)
aimbot.Font = Enum.Font.Fantasy
aimbot.Text = "Aimbot"
aimbot.TextColor3 = Color3.fromRGB(0, 0, 0)
aimbot.TextSize = 20.000

infjump.Name = "infjump"
infjump.Parent = mainframe
infjump.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
infjump.BorderColor3 = Color3.fromRGB(0, 0, 0)
infjump.BorderSizePixel = 0
infjump.Position = UDim2.new(0.0406249985, 0, 0.670527518, 0)
infjump.Size = UDim2.new(0, 144, 0, 33)
infjump.Font = Enum.Font.Fantasy
infjump.Text = "Infinite jump"
infjump.TextColor3 = Color3.fromRGB(0, 0, 0)
infjump.TextSize = 20.000
infjump.TextWrapped = true

admin.Name = "admin"
admin.Parent = mainframe
admin.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
admin.BorderColor3 = Color3.fromRGB(0, 0, 0)
admin.BorderSizePixel = 0
admin.Position = UDim2.new(0.524999976, 0, 0.669656456, 0)
admin.Size = UDim2.new(0, 144, 0, 33)
admin.Font = Enum.Font.Fantasy
admin.Text = "Infinite Yield"
admin.TextColor3 = Color3.fromRGB(0, 0, 0)
admin.TextSize = 20.000

ctrldestroy.Name = "ctrldestroy"
ctrldestroy.Parent = mainframe
ctrldestroy.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
ctrldestroy.BorderColor3 = Color3.fromRGB(0, 0, 0)
ctrldestroy.BorderSizePixel = 0
ctrldestroy.Position = UDim2.new(0.0406249985, 0, 0.824019194, 0)
ctrldestroy.Size = UDim2.new(0, 144, 0, 33)
ctrldestroy.Font = Enum.Font.Fantasy
ctrldestroy.Text = "CTRL + click destroy"
ctrldestroy.TextColor3 = Color3.fromRGB(0, 0, 0)
ctrldestroy.TextScaled = true
ctrldestroy.TextSize = 20.000
ctrldestroy.TextWrapped = true

jumptitle.Name = "jumptitle"
jumptitle.Parent = mainframe
jumptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumptitle.BackgroundTransparency = 1.000
jumptitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
jumptitle.BorderSizePixel = 0
jumptitle.Position = UDim2.new(-0.00312500005, 0, 0.285847694, 0)
jumptitle.Size = UDim2.new(0, 196, 0, 50)
jumptitle.Font = Enum.Font.JosefinSans
jumptitle.Text = "JumpPower number:"
jumptitle.TextColor3 = Color3.fromRGB(0, 0, 0)
jumptitle.TextSize = 20.000

jumpnumber.Name = "jumpnumber"
jumpnumber.Parent = mainframe
jumpnumber.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
jumpnumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
jumpnumber.BorderSizePixel = 0
jumpnumber.Position = UDim2.new(0.609375, 0, 0.313492447, 0)
jumpnumber.Size = UDim2.new(0, 117, 0, 37)
jumpnumber.Font = Enum.Font.Fantasy
jumpnumber.PlaceholderText = "JumpPower number"
jumpnumber.Text = "50"
jumpnumber.TextColor3 = Color3.fromRGB(0, 0, 0)
jumpnumber.TextScaled = true
jumpnumber.TextSize = 20.000
jumpnumber.TextWrapped = true

focusonchr.Name = "focusonchr"
focusonchr.Parent = mainframe
focusonchr.BackgroundColor3 = Color3.fromRGB(0, 64, 93)
focusonchr.BorderColor3 = Color3.fromRGB(0, 0, 0)
focusonchr.BorderSizePixel = 0
focusonchr.Position = UDim2.new(0.527083218, 0, 0.822633743, 0)
focusonchr.Size = UDim2.new(0, 144, 0, 33)
focusonchr.Font = Enum.Font.Fantasy
focusonchr.Text = "Camera focus on character"
focusonchr.TextColor3 = Color3.fromRGB(0, 0, 0)
focusonchr.TextScaled = true
focusonchr.TextSize = 20.000
focusonchr.TextWrapped = true

-- Scripts:

local function QEKSO_fake_script() -- generalgamefucker.LocalScript 
	local script = Instance.new('LocalScript', generalgamefucker)

	local mainframe = script.Parent.mainframe
	local lplr = game:GetService("Players").LocalPlayer
	mainframe.Draggable = true
	
	local numbers = {}
	numbers.ws = 30
	numbers.jump = 50
	
	local function speedhack()
	
		lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
			if lplr.Character.Humanoid.WalkSpeed ~= numbers.ws then
				lplr.Character.Humanoid.WalkSpeed = numbers.ws
			end
		end)
	
		lplr.Character.Humanoid:GetPropertyChangedSignal("JumpPower"):connect(function()
			if lplr.Character.Humanoid.JumpPower ~= numbers.jump then
				lplr.Character.Humanoid.JumpPower = numbers.jump
			end
		end)
	
		lplr.Character.Humanoid.Running:connect(function()
			lplr.Character.Humanoid.WalkSpeed = numbers.ws
		end)
	
	end
	
	speedhack()
	
	lplr.CharacterAdded:connect(function(chr)
		chr:WaitForChild("Humanoid")
		speedhack()
	end)
	
	local function numbereditor(textbox, tableprop)
		Changed(textbox, "Text", function(txt)
			local num = tonumber(txt)
			if num then
				numbers[tableprop] = num
			end
		end)
	
		textbox.MouseWheelForward:connect(function()
			numbers[tableprop] = numbers[tableprop] + 10
			textbox.Text = tostring(numbers[tableprop])
		end)
	
		textbox.MouseWheelBackward:connect(function()
			if numbers[tableprop] > 0 then
				numbers[tableprop] = numbers[tableprop] - 10
			else
				numbers[tableprop] = 0
			end
			textbox.Text = tostring(numbers[tableprop])
		end)
	end
	
	numbereditor(mainframe.wsnumber, "ws")
	numbereditor(mainframe.jumpnumber, "jump")
	
	local function singleclick(button, func)
		local con
		con = button.Activated:Connect(function()
			con:Disconnect()
			func()
		end)
	end
	
	singleclick(mainframe.flyscript, function()
		local flyspeed = 150
		local flying = false
		local cframefly = false
		local uiservice = game:GetService("UserInputService")
		local lplr = game:GetService("Players").LocalPlayer
		local keytoggle = true
		local updown = true
		local pos = Vector3.new()

		local function GetVelocity(pos1,pos2,StudsPerSecond)
			local distance = (pos2 - pos1)
			local mag = distance.Magnitude
			return (distance/mag)*StudsPerSecond
		end

		local function keyDown(keycode)
			return uiservice:IsKeyDown(keycode) and not uiservice:GetFocusedTextBox()
		end

		game:GetService("RunService").Heartbeat:connect(function(tick)
			local maxdistance = flyspeed * 2
			if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character.Humanoid.RootPart then
				local hrp = lplr.Character.Humanoid.SeatPart or lplr.Character.Humanoid.RootPart
				local frontoffset = CFrame.new() + Vector3.new(0,0,-maxdistance)
				local backoffset = CFrame.new() + Vector3.new(0,0,maxdistance)
				local leftoffset = CFrame.new() + Vector3.new(-maxdistance,0,0)
				local rightoffset = CFrame.new() + Vector3.new(maxdistance,0,0)
				local upoffset = CFrame.new() + Vector3.new(0,maxdistance,0)
				local downoffset = CFrame.new() + Vector3.new(0,-maxdistance,0)
				local velocity = Vector3.new()
				if flying then
					hrp.RotVelocity = Vector3.new()
					if keyDown(Enum.KeyCode.W) then
						velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*frontoffset).Position,flyspeed)
					end
					
					if keyDown(Enum.KeyCode.S) then
						velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*backoffset).Position,flyspeed)
					end
					
					if keyDown(Enum.KeyCode.A) then
						velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*leftoffset).Position,flyspeed)
					end
					
					if keyDown(Enum.KeyCode.D) then
						velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*rightoffset).Position,flyspeed)
					end
					
					if keyDown(Enum.KeyCode.E) and updown then
						velocity = velocity + GetVelocity(hrp.Position,(CFrame.new(hrp.Position)*upoffset).Position,flyspeed)
					end
					
					if keyDown(Enum.KeyCode.Q) and updown then
						velocity = velocity + GetVelocity(hrp.Position,(CFrame.new(hrp.Position)*downoffset).Position,flyspeed)
					end
					
					if not cframefly then
						hrp.Velocity = velocity
					 else
					 hrp.Velocity = Vector3.new()
					 hrp.CFrame = hrp.CFrame + (velocity*tick)
					end
					 hrp.CFrame = CFrame.new(hrp.Position, (workspace.CurrentCamera.CFrame*frontoffset).Position)
				end
				if flying and not keyDown(Enum.KeyCode.W) and not keyDown(Enum.KeyCode.A) and not keyDown(Enum.KeyCode.S) and not keyDown(Enum.KeyCode.D) and not keyDown(Enum.KeyCode.Q) and not keyDown(Enum.KeyCode.E) then
					hrp.CFrame = CFrame.new(pos, (workspace.CurrentCamera.CFrame*frontoffset).Position)
					hrp.Velocity = Vector3.new()
				else
					pos = hrp.Position
				end
			end
		end)

		uiservice.InputBegan:connect(function(key,processed)
		if processed then return end
			if key.KeyCode == Enum.KeyCode.F and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
				flying = not flying
				if flying then
					uiservice.MouseBehavior = Enum.MouseBehavior.LockCenter
					lplr.Character.Humanoid.CameraOffset = Vector3.new(2,0,0)
				else
					uiservice.MouseBehavior = Enum.MouseBehavior.Default
					lplr.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
				end
			end
			if key.KeyCode == Enum.KeyCode.Minus and keytoggle then
				flyspeed = flyspeed - 50
			end
			if key.KeyCode == Enum.KeyCode.Equals and keytoggle then
				flyspeed = flyspeed + 50
			end
		end)

		altmessage("tfly", function()
		cframefly = not cframefly
		print("cframefly is now", cframefly)
		end)

		altmessage("flyspeed", function(msg)
			flyspeed = msg:match("%d+")
		end)

		altmessage("flykeybind", function()
			keytoggle = not keytoggle
		end)

		altmessage("flyupdown", function()
			updown = not updown
		end)
	end)
	
	singleclick(mainframe.aimbot, function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/Aimbot.lua"))()
	end)
	
	singleclick(mainframe.infjump, function()
		game:GetService("UserInputService").InputBegan:connect(function(key,processed)
			if processed then return end
			local hum = lplr.Character.Humanoid
			local hrp = hum.RootPart
			if key.KeyCode == Enum.KeyCode.Space then
				hrp.Velocity = Vector3.new(hrp.Velocity.X, hum.JumpPower, hrp.Velocity.Z)
			end
		end)
	end)
	
	singleclick(mainframe.admin, function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
	
	singleclick(mainframe.ctrldestroy, function()
		local mouse = lplr:GetMouse()
		local sbox = Instance.new("SelectionBox", workspace)
		local function ctrlDown()
			return uiservice:IsKeyDown(Enum.KeyCode.LeftControl) and uiservice:GetFocusedTextBox() == nil
		end
		runservice.RenderStepped:connect(function()
			sbox.Adornee = if ctrlDown() then mouse.Target else nil
		end)
		mouse.Button1Down:connect(function()
			local target = mouse.Target
			if target and ctrlDown() and not ischaracter(target) then
				target:Destroy()
			end
		end)
	end)
	
	singleclick(mainframe.focusonchr, function()
		runservice.Heartbeat:connect(function()
			pcall(function()
				workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
				workspace.CurrentCamera.CameraSubject = lplr.Character.Humanoid
			end)
		end)
	end)
end
coroutine.wrap(QEKSO_fake_script)()
