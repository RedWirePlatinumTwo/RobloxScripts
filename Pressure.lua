-- Gui to Lua
-- Version: 3.2

-- Instances:

local RedsPressureGui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local title = Instance.new("TextLabel")
local brighten = Instance.new("TextButton")
local styxkiller = Instance.new("TextButton")
local highlight = Instance.new("TextButton")
local nodeifier = Instance.new("TextButton")
local eyefestkiller = Instance.new("TextButton")
local locatekeys = Instance.new("TextButton")

--Properties:

RedsPressureGui.Name = "RedsPressureGui"
RedsPressureGui.Parent = game.CoreGui
RedsPressureGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe.Name = "mainframe"
mainframe.Parent = RedsPressureGui
mainframe.Active = true
mainframe.BackgroundColor3 = Color3.fromRGB(0, 25, 36)
mainframe.BorderColor3 = Color3.fromRGB(0, 85, 127)
mainframe.Draggable = true
mainframe.Position = UDim2.new(0.445318609, 2, 0.32938391, -84)
mainframe.Size = UDim2.new(0, 342, 0, 301)

title.Name = "title"
title.Parent = mainframe
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0204678364, 0, 0, 0)
title.Size = UDim2.new(0, 328, 0, 70)
title.Font = Enum.Font.Michroma
title.Text = "The Pressure GUI of all time"
title.TextColor3 = Color3.fromRGB(0, 85, 127)
title.TextScaled = true
title.TextSize = 14.000
title.TextStrokeColor3 = Color3.fromRGB(85, 170, 255)
title.TextStrokeTransparency = 0.000
title.TextWrapped = true

brighten.Name = "brighten"
brighten.Parent = mainframe
brighten.BackgroundColor3 = Color3.fromRGB(0, 48, 68)
brighten.BorderColor3 = Color3.fromRGB(0, 85, 127)
brighten.Position = UDim2.new(0, 0, 0.239248216, 0)
brighten.Size = UDim2.new(0, 153, 0, 61)
brighten.Font = Enum.Font.Michroma
brighten.Text = "Brighten Rooms"
brighten.TextColor3 = Color3.fromRGB(0, 85, 127)
brighten.TextSize = 20.000
brighten.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
brighten.TextStrokeTransparency = 0.000
brighten.TextWrapped = true

styxkiller.Name = "styxkiller"
styxkiller.Parent = mainframe
styxkiller.BackgroundColor3 = Color3.fromRGB(0, 48, 68)
styxkiller.BorderColor3 = Color3.fromRGB(0, 85, 127)
styxkiller.Position = UDim2.new(0.552631557, 0, 0.236756593, 0)
styxkiller.Size = UDim2.new(0, 153, 0, 61)
styxkiller.Font = Enum.Font.Michroma
styxkiller.Text = "Remove Styx"
styxkiller.TextColor3 = Color3.fromRGB(0, 85, 127)
styxkiller.TextSize = 20.000
styxkiller.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
styxkiller.TextStrokeTransparency = 0.000
styxkiller.TextWrapped = true

highlight.Name = "highlight"
highlight.Parent = mainframe
highlight.BackgroundColor3 = Color3.fromRGB(0, 48, 68)
highlight.BorderColor3 = Color3.fromRGB(0, 85, 127)
highlight.Position = UDim2.new(0, 0, 0.748723924, 0)
highlight.Size = UDim2.new(0, 153, 0, 61)
highlight.Font = Enum.Font.Michroma
highlight.Text = "Highlight Exits + Void Lockers"
highlight.TextColor3 = Color3.fromRGB(0, 85, 127)
highlight.TextSize = 20.000
highlight.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
highlight.TextStrokeTransparency = 0.000
highlight.TextWrapped = true

nodeifier.Name = "nodeifier"
nodeifier.Parent = mainframe
nodeifier.BackgroundColor3 = Color3.fromRGB(0, 48, 68)
nodeifier.BorderColor3 = Color3.fromRGB(0, 85, 127)
nodeifier.Position = UDim2.new(0.552631557, 0, 0.492285848, 0)
nodeifier.Size = UDim2.new(0, 153, 0, 61)
nodeifier.Font = Enum.Font.Michroma
nodeifier.Text = "Node Monster Notifier"
nodeifier.TextColor3 = Color3.fromRGB(0, 85, 127)
nodeifier.TextSize = 20.000
nodeifier.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
nodeifier.TextStrokeTransparency = 0.000
nodeifier.TextWrapped = true

eyefestkiller.Name = "eyefestkiller"
eyefestkiller.Parent = mainframe
eyefestkiller.BackgroundColor3 = Color3.fromRGB(0, 48, 68)
eyefestkiller.BorderColor3 = Color3.fromRGB(0, 85, 127)
eyefestkiller.Position = UDim2.new(0.552631557, 0, 0.748723924, 0)
eyefestkiller.Size = UDim2.new(0, 153, 0, 61)
eyefestkiller.Font = Enum.Font.Michroma
eyefestkiller.Text = "Funny Eyefestation Thing"
eyefestkiller.TextColor3 = Color3.fromRGB(0, 85, 127)
eyefestkiller.TextSize = 20.000
eyefestkiller.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
eyefestkiller.TextStrokeTransparency = 0.000
eyefestkiller.TextWrapped = true

locatekeys.Name = "locatekeys"
locatekeys.Parent = mainframe
locatekeys.BackgroundColor3 = Color3.fromRGB(0, 48, 68)
locatekeys.BorderColor3 = Color3.fromRGB(0, 85, 127)
locatekeys.Position = UDim2.new(0, 0, 0.494453311, 0)
locatekeys.Size = UDim2.new(0, 153, 0, 61)
locatekeys.Font = Enum.Font.Michroma
locatekeys.Text = "Locate Keycards"
locatekeys.TextColor3 = Color3.fromRGB(0, 85, 127)
locatekeys.TextSize = 20.000
locatekeys.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
locatekeys.TextStrokeTransparency = 0.000
locatekeys.TextWrapped = true

-- Scripts:

local function HPQHZ_fake_script() -- RedsPressureGui.LocalScript 
	local script = Instance.new('LocalScript', RedsPressureGui)

	local mainframe = script.Parent.mainframe
	mainframe.Draggable = true
	local runservice = game:GetService("RunService")
	
	local function singleclick(button, func)
		local con
		con = button.Activated:connect(function()
			func()
			con:Disconnect()
		end)
	end
	
	local function hint(txt)
		local hint = Instance.new("Hint", workspace)
		for i = 1, txt:len() do
			hint.Text = txt:sub(1,i)
			wait(0.015)
		end
		wait(4)
		hint:Destroy()
	end
	
	local thread = function(f)
		return coroutine.resume(coroutine.create(function()
			return f()
		end))
	end
	
	local function playsound(soundid, parent)
		local pos, tpEvent
		parent = parent or game
		if typeof(parent) == "Vector3" or (typeof(parent) == "Instance" and parent:IsA("BasePart")) then
			pos = Instance.new("Part", game)
			pos.Transparency = 1
			pos.CanCollide = false
			pos.Anchored = true
			pos.Size = Vector3.new()
			tpEvent = runservice.RenderStepped:connect(function()
				pos.Position = if typeof(parent) == "Vector3" then parent else parent.Position
			end)
		end
		local s = Instance.new("Sound", pos or parent)
		if not replacesound then
			s.SoundId = soundid
		else
			s.SoundId = replacesound
		end
		s.Volume = 1
		s:Play()
		repeat task.wait() until s.TimePosition ~= 0 -- Waits until the sound actually starts playing
	
		thread(function()
			repeat task.wait() until s.TimePosition == 0
			if not s.Looped then
				s:Destroy()
				if pos then
					pos:Destroy()
					tpEvent:Disconnect()
				end
			end
		end)
	
		return s
	end
	
	local playsfx = function(soundid, parent)
		return playsound("rbxassetid://"..tostring(soundid), parent)
	end
	
	local playcustomsfx = function(soundid, parent)
		return playsound(getcustomasset("sounds\\"..soundid), parent)
	end
	
	local bbgui = function(child, txt)
		txt = txt or ""
		local BillboardGui = Instance.new("BillboardGui")
		local TextButton = Instance.new("TextButton")
		--Properties:
		BillboardGui.Parent = child
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 200, 0, 50)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
	
		TextButton.Parent = BillboardGui
		TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton.BackgroundTransparency = 1
		TextButton.Size = UDim2.new(0, 200, 0, 50)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = txt
		TextButton.TextColor3 = Color3.new(1, 1, 1)
		TextButton.TextSize = 22
		TextButton.TextStrokeTransparency = 0
		return BillboardGui
	end
	
	singleclick(mainframe.highlight, function()
		local function roomEdit(room)
			room:WaitForChild("Exits")
			local function highlightExit(exit)
				exit.Color = Color3.new(0,1,0)
				exit.Transparency = 0.5
			end
	
			for i, v in pairs(room.Exits:GetChildren()) do
				highlightExit(v)
			end
			room.Exits.ChildAdded:Connect(highlightExit)
	
			local function highlightLocker(locker)
				if locker.Name == "MonsterLocker" then
					local coll = locker:WaitForChild("LockerCollision")
					coll.Transparency = 0.5
					coll.Color = Color3.fromRGB(85,12,127)
				end
			end
	
			for i,v in pairs(room:GetChildren()) do
				highlightLocker(v)
			end
			room.ChildAdded:Connect(highlightLocker)
		end
	
		for i,v in pairs(workspace.GameplayFolder.Rooms:GetChildren()) do
			roomEdit(v)
		end
	
		workspace.GameplayFolder.Rooms.ChildAdded:connect(roomEdit)
	end)
	
	mainframe.brighten.Activated:connect(function()
		local lighting = game:GetService("Lighting")
		lighting.Ambient = Color3.new(1,1,1)
		lighting.ClockTime = 14
	end)
	
	singleclick(mainframe.styxkiller, function()
		local storage = game:GetService("ReplicatedStorage")
		storage.Assets.Styx:Destroy()
		storage.Icons.Styx:Destroy()
		hint("I'm not entirely sure if this even works tbh")
	end)
	
	singleclick(mainframe.nodeifier, function()
		workspace.ChildAdded:Connect(function(child)
			local name = child.Name:lower()
			if name:find("angler") or name:find("froger") or name:find("pinkie") or name:find("smoke") or name:find("multi") or name:find("pandemonium") or name:find("blitz") then
				hint("Incoming Node Monster: "..child.Name)
			end
		end)
	end)
	
	singleclick(mainframe.eyefestkiller, function()
		local function killeyefest(room)
			coroutine.resume(coroutine.create(function()
				repeat task.wait() until pcall(function() return room.Interactables.EyefestationSpawn.Eyefestation.Face.EyefestHurt end)
				local eyefest = room.Interactables.EyefestationSpawn.Eyefestation
				eyefest.Face.EyefestHurt:GetPropertyChangedSignal("Playing"):Connect(function()
					if eyefest.Face.EyefestHurt.Playing then
						task.wait(0.5)
						if isfile("sounds\\explosion.mp3") then
							playcustomsfx("explosion.mp3")
						else
							playsfx(7172658577)
						end
						eyefest:Destroy()
					end
				end)
			end))
		end
		for i,room in pairs(workspace.GameplayFolder.Rooms:GetChildren()) do
			killeyefest(room)
		end
		workspace.GameplayFolder.Rooms.ChildAdded:connect(killeyefest)
		hint("Okay so basically the flash beacon explodes eyefest but it will still \"respawn\" in other rooms with windows")
	end)
	
	singleclick(mainframe.locatekeys, function()
		local function locatekey(obj)
			if obj.Name:lower():find("keycard_object") then
				local gui = bbgui(obj, obj.Parent.Name)
				gui.StudsOffset = Vector3.new()
			end
		end
		for i,v in pairs(workspace:GetDescendants()) do
			locatekey(v)
		end
		workspace.DescendantAdded:connect(locatekey)
	end)
end
coroutine.wrap(HPQHZ_fake_script)()

