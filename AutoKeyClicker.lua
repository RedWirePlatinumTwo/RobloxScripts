-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local AutoKeyClicker = Instance.new("ScreenGui")
local Mainframe = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local clickspersecond = Instance.new("TextLabel")
local clickrate = Instance.new("TextBox")
local keyframe = Instance.new("ScrollingFrame")
local testframe = Instance.new("Frame")
local keylabel = Instance.new("TextLabel")
local togglebutton = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local key = Instance.new("TextLabel")
local toggle = Instance.new("TextLabel")
--Properties:
AutoKeyClicker.Name = "AutoKeyClicker"
AutoKeyClicker.Parent = game.CoreGui
AutoKeyClicker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Mainframe.Name = "Mainframe"
Mainframe.Parent = AutoKeyClicker
Mainframe.Active = true
Mainframe.BackgroundColor3 = Color3.new(0, 0.666667, 1)
Mainframe.BorderColor3 = Color3.new(0, 0, 0.498039)
Mainframe.Position = UDim2.new(0.543564379, 0, 0.230142564, 0)
Mainframe.Size = UDim2.new(0, 202, 0, 258)

Title.Name = "Title"
Title.Parent = Mainframe
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 202, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Auto key Clicker"
Title.TextColor3 = Color3.new(0, 0.666667, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

clickspersecond.Name = "clickspersecond"
clickspersecond.Parent = Mainframe
clickspersecond.BackgroundColor3 = Color3.new(1, 1, 1)
clickspersecond.BackgroundTransparency = 1
clickspersecond.Position = UDim2.new(0.00990098994, 0, 0.116279073, 0)
clickspersecond.Size = UDim2.new(0, 130, 0, 25)
clickspersecond.Font = Enum.Font.SourceSansBold
clickspersecond.Text = "Clicks per second:"
clickspersecond.TextColor3 = Color3.new(0, 0.666667, 1)
clickspersecond.TextScaled = true
clickspersecond.TextSize = 14
clickspersecond.TextStrokeTransparency = 0
clickspersecond.TextWrapped = true

clickrate.Name = "clickrate"
clickrate.Parent = Mainframe
clickrate.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
clickrate.BorderColor3 = Color3.new(0, 0.0117647, 0.207843)
clickrate.Position = UDim2.new(0.653465331, 0, 0.116279073, 0)
clickrate.Size = UDim2.new(0, 70, 0, 25)
clickrate.Font = Enum.Font.SourceSansBold
clickrate.PlaceholderColor3 = Color3.new(0, 0, 0)
clickrate.Text = "10"
clickrate.TextColor3 = Color3.new(0, 0.666667, 1)
clickrate.TextScaled = true
clickrate.TextSize = 14
clickrate.TextStrokeTransparency = 0
clickrate.TextWrapped = true

keyframe.Name = "keyframe"
keyframe.Parent = Mainframe
keyframe.Active = true
keyframe.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
keyframe.BorderColor3 = Color3.new(0, 0, 0.498039)
keyframe.Position = UDim2.new(0.0445544571, 0, 0.329457372, 0)
keyframe.Size = UDim2.new(0, 183, 0, 173)
keyframe.CanvasSize = UDim2.new(0, 0, 0, 0)

testframe.Name = "testframe"
testframe.Parent = keyframe
testframe.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
testframe.Size = UDim2.new(0, 170, 0, 30)
testframe.Visible = false

keylabel.Name = "keylabel"
keylabel.Parent = testframe
keylabel.BackgroundColor3 = Color3.new(1, 1, 1)
keylabel.BackgroundTransparency = 1
keylabel.BorderSizePixel = 0
keylabel.Position = UDim2.new(0.0588235296, 0, 0, 0)
keylabel.Size = UDim2.new(0, 113, 0, 30)
keylabel.Font = Enum.Font.SourceSansBold
keylabel.Text = "Insert key here"
keylabel.TextColor3 = Color3.new(0, 0.666667, 1)
keylabel.TextScaled = true
keylabel.TextSize = 14
keylabel.TextStrokeTransparency = 0
keylabel.TextWrapped = true
keylabel.TextXAlignment = Enum.TextXAlignment.Left

togglebutton.Name = "togglebutton"
togglebutton.Parent = testframe
togglebutton.BackgroundColor3 = Color3.new(1, 1, 1)
togglebutton.BackgroundTransparency = 1
togglebutton.Position = UDim2.new(0.723529398, 0, 0, 0)
togglebutton.Size = UDim2.new(0, 47, 0, 30)
togglebutton.Font = Enum.Font.SourceSansBold
togglebutton.Text = "Off"
togglebutton.TextColor3 = Color3.new(0.666667, 0, 0)
togglebutton.TextSize = 20
togglebutton.TextWrapped = true

UIListLayout.Parent = keyframe
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

key.Name = "key"
key.Parent = Mainframe
key.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
key.Position = UDim2.new(0.0445544571, 0, 0.232558146, 0)
key.Size = UDim2.new(0, 123, 0, 25)
key.Font = Enum.Font.SourceSansBold
key.Text = "Key:"
key.TextColor3 = Color3.new(0, 0.666667, 1)
key.TextScaled = true
key.TextSize = 14
key.TextStrokeTransparency = 0
key.TextWrapped = true
key.TextXAlignment = Enum.TextXAlignment.Left

toggle.Name = "toggle"
toggle.Parent = Mainframe
toggle.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
toggle.Position = UDim2.new(0.653465331, 0, 0.232558146, 0)
toggle.Size = UDim2.new(0, 60, 0, 25)
toggle.Font = Enum.Font.SourceSansBold
toggle.Text = "Toggle:"
toggle.TextColor3 = Color3.new(0, 0.666667, 1)
toggle.TextScaled = true
toggle.TextSize = 14
toggle.TextStrokeTransparency = 0
toggle.TextWrapped = true
toggle.TextXAlignment = Enum.TextXAlignment.Left
-- Scripts:
function SCRIPT_HYZE75_FAKESCRIPT() -- AutoKeyClicker.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = AutoKeyClicker
	local frame = script.Parent.Mainframe
	local clickspersecond = 0.1
	function doclickwait()
	if clickspersecond > 0.03 then
	task.wait(clickspersecond)
	else
	game.RunService.RenderStepped:Wait()
	end
	end
	frame.Draggable = true
	local Changed = function(part, PropertyName, func)
		local current = part[PropertyName]
		coroutine.resume(coroutine.create(function()
			while true do
				repeat task.wait() until part[PropertyName] ~= current
				coroutine.resume(coroutine.create(function()
					func(part[PropertyName], current, part)
				end))
				current = part[PropertyName]
			end
		end))
	end
	frame.keyframe.AutomaticCanvasSize = 2
	frame.keyframe.ScrollBarImageColor3 = Color3.fromRGB(0,0,127)
	local Keycodes = {
		["b"] = 0x42,
		["c"] = 0x43,
		["e"] = 0x45,
		["f"] = 0x46,
		["g"] = 0x47,
		["h"] = 0x48,
		["j"] = 0x4A,
		["k"] = 0x4B,
		["l"] = 0x4C,
		["m"] = 0x4D,
		["n"] = 0x4E,
		["p"] = 0x50,
		["q"] = 0x51,
		["r"] = 0x52,
		["t"] = 0x54,
		["u"] = 0x55,
		["v"] = 0x56,
		["x"] = 0x58,
		["y"] = 0x59,
		["z"] = 0x5A
	}
	for i,v in pairs(Keycodes) do
	local clone = frame.keyframe.testframe:Clone()
	clone.Parent = frame.keyframe
	clone.Visible = true
	clone.keylabel.Text = i
	coroutine.resume(coroutine.create(function()
	while true do
	if clone.togglebutton.Text == "On" then
	keypress(v)
	keyrelease(v)
	end
	doclickwait()
	end
	end))
	clone.togglebutton.MouseButton1Click:connect(function()
	if clone.togglebutton.Text == "On" then
	clone.togglebutton.TextColor3 = Color3.fromRGB(170,0,0)
	clone.togglebutton.Text = "Off"
	else
	clone.togglebutton.TextColor3 = Color3.fromRGB(0,170,0)
	clone.togglebutton.Text = "On"
	end
	end)
	end
	Changed(frame.clickrate, "Text", function(txt)
	if tonumber(txt) then
	clickspersecond = 1/tonumber(txt)
	else
	clickspersecond = 0.1
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_HYZE75_FAKESCRIPT))
