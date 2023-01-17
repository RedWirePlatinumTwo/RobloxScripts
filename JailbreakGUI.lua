-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local JailbreakGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local speed = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Speednum = Instance.new("TextBox")
local ScrollingFrame = Instance.new("ScrollingFrame")
local disablelasers = Instance.new("TextButton")
local holdebypass = Instance.new("TextButton")
local aimbot = Instance.new("TextButton")
local Airdrop = Instance.new("TextButton")
local UIGridLayout = Instance.new("UIGridLayout")
local modguns = Instance.new("TextButton")
local GravToggle = Instance.new("TextButton")
local forcedaytime = Instance.new("TextButton")
local removeragdoll = Instance.new("TextButton")
local RobberyNotifier = Instance.new("TextButton")
local infiniteyeet = Instance.new("TextButton")
local gunshoptpbutton = Instance.new("TextButton")
local keybypass = Instance.new("TextButton")
local getcode = Instance.new("TextButton")
local deleteradio = Instance.new("TextButton")
local respawn = Instance.new("TextButton")
local lockonexit = Instance.new("TextButton")
local flyhack = Instance.new("TextButton")
local flyhacknum = Instance.new("TextBox")
local Confirmation = Instance.new("Frame")
local Warning = Instance.new("TextLabel")
local Yes = Instance.new("TextButton")
local No = Instance.new("TextButton")
local WarningIcon = Instance.new("ImageLabel")
local AirdropESPFrame = Instance.new("Frame")
local bguis = Instance.new("TextButton")
local pointers = Instance.new("TextButton")
local hide = Instance.new("TextButton")
--Properties:
JailbreakGUI.Name = "JailbreakGUI"
JailbreakGUI.Parent = game.CoreGui
JailbreakGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = JailbreakGUI
MainFrame.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
MainFrame.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
MainFrame.Position = UDim2.new(0.879054368, -384, 0.0564681552, 10)
MainFrame.Size = UDim2.new(0, 368, 0, 308)

speed.Name = "speed"
speed.Parent = MainFrame
speed.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
speed.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
speed.Position = UDim2.new(0.016869586, 0, 0.142545462, 0)
speed.Size = UDim2.new(0, 172, 0, 46)
speed.ZIndex = 33
speed.Font = Enum.Font.SourceSansBold
speed.Text = "Speedhack"
speed.TextColor3 = Color3.new(0.333333, 1, 0.498039)
speed.TextSize = 20
speed.TextStrokeTransparency = 0
speed.TextWrapped = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title.LayoutOrder = 1
Title.Position = UDim2.new(0.0286232401, 0, -0.00324662938, 0)
Title.Size = UDim2.new(0, 331, 0, 45)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "RedWire's Jailbreak GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title.TextWrapped = true

Speednum.Name = "Speednum"
Speednum.Parent = MainFrame
Speednum.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Speednum.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Speednum.Position = UDim2.new(0.0170000009, 0, 0.143000007, 0)
Speednum.Size = UDim2.new(0, 172, 0, 46)
Speednum.Visible = false
Speednum.Font = Enum.Font.SourceSansBold
Speednum.PlaceholderColor3 = Color3.new(0.333333, 1, 0.498039)
Speednum.PlaceholderText = "Walkspeed number"
Speednum.Text = "30"
Speednum.TextColor3 = Color3.new(0.333333, 1, 0.498039)
Speednum.TextSize = 20
Speednum.TextStrokeTransparency = 0
Speednum.TextWrapped = true

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
ScrollingFrame.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
ScrollingFrame.Position = UDim2.new(0.0169971678, 0, 0.330357075, 0)
ScrollingFrame.Size = UDim2.new(0, 354, 0, 187)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

disablelasers.Name = "disablelasers"
disablelasers.Parent = ScrollingFrame
disablelasers.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
disablelasers.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
disablelasers.Position = UDim2.new(1.23584902, 0, 0.767922103, 0)
disablelasers.Size = UDim2.new(0, 106, 0, 52)
disablelasers.Font = Enum.Font.SourceSansBold
disablelasers.Text = "Disable Lasers"
disablelasers.TextColor3 = Color3.new(0.333333, 0.666667, 1)
disablelasers.TextSize = 18
disablelasers.TextStrokeTransparency = 0
disablelasers.TextWrapped = true

holdebypass.Name = "holdebypass"
holdebypass.Parent = ScrollingFrame
holdebypass.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
holdebypass.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
holdebypass.Position = UDim2.new(0.329939932, 0, 0.189644739, 0)
holdebypass.Size = UDim2.new(0, 106, 0, 52)
holdebypass.Font = Enum.Font.SourceSansBold
holdebypass.Text = "Hold E Bypass"
holdebypass.TextColor3 = Color3.new(0.666667, 0.666667, 0)
holdebypass.TextSize = 18
holdebypass.TextStrokeTransparency = 0
holdebypass.TextWrapped = true

aimbot.Name = "aimbot"
aimbot.Parent = ScrollingFrame
aimbot.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
aimbot.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
aimbot.Position = UDim2.new(0, 0, 0.267379671, 0)
aimbot.Size = UDim2.new(0, 110, 0, 50)
aimbot.Font = Enum.Font.SourceSansBold
aimbot.Text = "Aimbot"
aimbot.TextColor3 = Color3.new(0, 1, 0)
aimbot.TextSize = 18
aimbot.TextStrokeTransparency = 0
aimbot.TextWrapped = true

Airdrop.Name = "Airdrop"
Airdrop.Parent = ScrollingFrame
Airdrop.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Airdrop.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Airdrop.Position = UDim2.new(0, 0, 0.451666713, 0)
Airdrop.Size = UDim2.new(0, 106, 0, 51)
Airdrop.ZIndex = -222
Airdrop.Font = Enum.Font.SourceSansBold
Airdrop.Text = "Airdrop ESP"
Airdrop.TextColor3 = Color3.new(0.666667, 0.333333, 1)
Airdrop.TextSize = 18
Airdrop.TextStrokeTransparency = 0
Airdrop.TextWrapped = true

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.CellSize = UDim2.new(0, 110, 0, 50)

modguns.Name = "modguns"
modguns.Parent = ScrollingFrame
modguns.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
modguns.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
modguns.Position = UDim2.new(0.329939932, 0, 0.451666713, 0)
modguns.Size = UDim2.new(0, 106, 0, 51)
modguns.ZIndex = -99
modguns.Font = Enum.Font.SourceSansBold
modguns.Text = "Mod guns"
modguns.TextColor3 = Color3.new(0.666667, 0, 0)
modguns.TextSize = 18
modguns.TextStrokeTransparency = 0
modguns.TextWrapped = true

GravToggle.Name = "GravToggle"
GravToggle.Parent = ScrollingFrame
GravToggle.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
GravToggle.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
GravToggle.Position = UDim2.new(0.668999851, 0, 0.451666713, 0)
GravToggle.Size = UDim2.new(0, 105, 0, 51)
GravToggle.ZIndex = 0
GravToggle.Font = Enum.Font.SourceSansBold
GravToggle.Text = "Gravity Toggle (196)"
GravToggle.TextColor3 = Color3.new(1, 1, 1)
GravToggle.TextSize = 18
GravToggle.TextStrokeTransparency = 0
GravToggle.TextWrapped = true

forcedaytime.Name = "forcedaytime"
forcedaytime.Parent = ScrollingFrame
forcedaytime.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
forcedaytime.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
forcedaytime.Position = UDim2.new(0.333333343, 0, 0.710666597, 0)
forcedaytime.Size = UDim2.new(0, 106, 0, 52)
forcedaytime.ZIndex = 0
forcedaytime.Font = Enum.Font.SourceSansBold
forcedaytime.Text = "Force Daytime"
forcedaytime.TextColor3 = Color3.new(1, 1, 0.498039)
forcedaytime.TextSize = 18
forcedaytime.TextStrokeTransparency = 0
forcedaytime.TextWrapped = true

removeragdoll.Name = "removeragdoll"
removeragdoll.Parent = ScrollingFrame
removeragdoll.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
removeragdoll.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
removeragdoll.Size = UDim2.new(0, 115, 0, 47)
removeragdoll.Font = Enum.Font.SourceSansBold
removeragdoll.Text = "Remove Ragdoll"
removeragdoll.TextColor3 = Color3.new(1, 0.333333, 0.498039)
removeragdoll.TextSize = 18
removeragdoll.TextStrokeTransparency = 0
removeragdoll.TextWrapped = true

RobberyNotifier.Name = "RobberyNotifier"
RobberyNotifier.Parent = ScrollingFrame
RobberyNotifier.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
RobberyNotifier.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
RobberyNotifier.Position = UDim2.new(0.327883303, 0, 0, 0)
RobberyNotifier.Size = UDim2.new(0, 117, 0, 47)
RobberyNotifier.Font = Enum.Font.SourceSansBold
RobberyNotifier.Text = "Robbery Notifier"
RobberyNotifier.TextColor3 = Color3.new(0, 0.666667, 0)
RobberyNotifier.TextSize = 18
RobberyNotifier.TextStrokeTransparency = 0
RobberyNotifier.TextWrapped = true

infiniteyeet.Name = "infiniteyeet"
infiniteyeet.Parent = ScrollingFrame
infiniteyeet.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
infiniteyeet.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
infiniteyeet.Position = UDim2.new(0.663817644, 0, 0, 0)
infiniteyeet.Size = UDim2.new(0, 117, 0, 47)
infiniteyeet.Font = Enum.Font.SourceSansBold
infiniteyeet.Text = "Inf Yield"
infiniteyeet.TextColor3 = Color3.new(0.333333, 0.333333, 0.498039)
infiniteyeet.TextSize = 18
infiniteyeet.TextStrokeTransparency = 0
infiniteyeet.TextWrapped = true

gunshoptpbutton.Name = "gunshoptpbutton"
gunshoptpbutton.Parent = ScrollingFrame
gunshoptpbutton.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
gunshoptpbutton.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
gunshoptpbutton.Position = UDim2.new(0, 0, 0.262000024, 0)
gunshoptpbutton.Size = UDim2.new(0, 117, 0, 47)
gunshoptpbutton.Font = Enum.Font.SourceSansBold
gunshoptpbutton.Text = "Gunshop TP Enabled: "
gunshoptpbutton.TextColor3 = Color3.new(1, 0.666667, 0)
gunshoptpbutton.TextSize = 18
gunshoptpbutton.TextStrokeTransparency = 0
gunshoptpbutton.TextWrapped = true

keybypass.Name = "keybypass"
keybypass.Parent = ScrollingFrame
keybypass.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
keybypass.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
keybypass.Position = UDim2.new(0.333333343, 0, 0.262000024, 0)
keybypass.Size = UDim2.new(0, 116, 0, 47)
keybypass.ZIndex = 0
keybypass.Font = Enum.Font.SourceSansBold
keybypass.Text = "Keycard Bypass"
keybypass.TextColor3 = Color3.new(0, 0.666667, 1)
keybypass.TextSize = 18
keybypass.TextStrokeTransparency = 0
keybypass.TextWrapped = true

getcode.Name = "getcode"
getcode.Parent = ScrollingFrame
getcode.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
getcode.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
getcode.Position = UDim2.new(0, 0, 0.523438752, 0)
getcode.Size = UDim2.new(0, 116, 0, 47)
getcode.ZIndex = 0
getcode.Font = Enum.Font.SourceSansBold
getcode.Text = "Get Casino code"
getcode.TextColor3 = Color3.new(0, 0.666667, 0.498039)
getcode.TextSize = 18
getcode.TextStrokeTransparency = 0
getcode.TextWrapped = true

deleteradio.Name = "deleteradio"
deleteradio.Parent = ScrollingFrame
deleteradio.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
deleteradio.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
deleteradio.Position = UDim2.new(0.333333343, 0, 0.523438752, 0)
deleteradio.Size = UDim2.new(0, 117, 0, 47)
deleteradio.ZIndex = -1
deleteradio.Font = Enum.Font.SourceSansBold
deleteradio.Text = "Delete Radio Gui (its stupid)"
deleteradio.TextColor3 = Color3.new(1, 0.666667, 1)
deleteradio.TextSize = 18
deleteradio.TextStrokeTransparency = 0
deleteradio.TextWrapped = true

respawn.Name = "respawn"
respawn.Parent = ScrollingFrame
respawn.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
respawn.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
respawn.Position = UDim2.new(0.667000175, 0, 0.523438752, 0)
respawn.Size = UDim2.new(0, 116, 0, 47)
respawn.ZIndex = -1
respawn.Font = Enum.Font.SourceSansBold
respawn.Text = "Respawn"
respawn.TextColor3 = Color3.new(1, 0, 0)
respawn.TextSize = 18
respawn.TextStrokeTransparency = 0
respawn.TextWrapped = true

lockonexit.Name = "lockonexit"
lockonexit.Parent = ScrollingFrame
lockonexit.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
lockonexit.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
lockonexit.Position = UDim2.new(0.667000175, 0, 0.523438752, 0)
lockonexit.Size = UDim2.new(0, 116, 0, 47)
lockonexit.ZIndex = -1
lockonexit.Font = Enum.Font.SourceSansBold
lockonexit.Text = "Lock on exit + Unlock on enter"
lockonexit.TextColor3 = Color3.new(0.333333, 1, 0.498039)
lockonexit.TextSize = 18
lockonexit.TextStrokeTransparency = 0
lockonexit.TextWrapped = true

flyhack.Name = "flyhack"
flyhack.Parent = MainFrame
flyhack.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
flyhack.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
flyhack.Position = UDim2.new(0.509391129, 0, 0.142545477, 0)
flyhack.Size = UDim2.new(0, 172, 0, 46)
flyhack.Font = Enum.Font.SourceSansBold
flyhack.Text = "Fly hack (Left CTRL + F)"
flyhack.TextColor3 = Color3.new(0.333333, 1, 1)
flyhack.TextSize = 20
flyhack.TextStrokeTransparency = 0
flyhack.TextWrapped = true

flyhacknum.Name = "flyhacknum"
flyhacknum.Parent = MainFrame
flyhacknum.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
flyhacknum.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
flyhacknum.Position = UDim2.new(0.509000003, 0, 0.139753267, 0)
flyhacknum.Size = UDim2.new(0, 172, 0, 46)
flyhacknum.Visible = false
flyhacknum.Font = Enum.Font.SourceSansBold
flyhacknum.PlaceholderColor3 = Color3.new(0.333333, 1, 1)
flyhacknum.PlaceholderText = "Fly Speed number"
flyhacknum.Text = "300"
flyhacknum.TextColor3 = Color3.new(0.333333, 1, 1)
flyhacknum.TextSize = 20
flyhacknum.TextWrapped = true

Confirmation.Name = "Confirmation"
Confirmation.Parent = JailbreakGUI
Confirmation.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Confirmation.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Confirmation.Position = UDim2.new(0.361629754, 0, 0.0886246264, 0)
Confirmation.Size = UDim2.new(0, 318, 0, 236)
Confirmation.Visible = false

Warning.Name = "Warning"
Warning.Parent = Confirmation
Warning.BackgroundColor3 = Color3.new(1, 1, 1)
Warning.BackgroundTransparency = 1
Warning.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Warning.BorderSizePixel = 0
Warning.Position = UDim2.new(0, 0, 0.169345021, 0)
Warning.Size = UDim2.new(0, 318, 0, 102)
Warning.Font = Enum.Font.SourceSansBold
Warning.Text = "Warning: If your exploit cannot use 'mousemoverel', the aimbot will not work. Proceed?"
Warning.TextColor3 = Color3.new(0.996078, 0.858824, 0.211765)
Warning.TextScaled = true
Warning.TextSize = 14
Warning.TextStrokeColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Warning.TextWrapped = true

Yes.Name = "Yes"
Yes.Parent = Confirmation
Yes.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Yes.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Yes.Position = UDim2.new(0.0503144637, 0, 0.631355882, 0)
Yes.Size = UDim2.new(0, 110, 0, 50)
Yes.Font = Enum.Font.SourceSansBold
Yes.Text = "Yes"
Yes.TextColor3 = Color3.new(0, 0.882353, 0)
Yes.TextScaled = true
Yes.TextSize = 14
Yes.TextWrapped = true

No.Name = "No"
No.Parent = Confirmation
No.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
No.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
No.Position = UDim2.new(0.597484291, 0, 0.631355882, 0)
No.Size = UDim2.new(0, 110, 0, 50)
No.Font = Enum.Font.SourceSansBold
No.Text = "No"
No.TextColor3 = Color3.new(1, 0, 0)
No.TextScaled = true
No.TextSize = 14
No.TextWrapped = true

WarningIcon.Name = "WarningIcon"
WarningIcon.Parent = Confirmation
WarningIcon.BackgroundColor3 = Color3.new(1, 1, 1)
WarningIcon.BackgroundTransparency = 1
WarningIcon.Position = UDim2.new(0.42764321, 0, 0.00847457722, 0)
WarningIcon.Size = UDim2.new(0, 45, 0, 45)
WarningIcon.Image = "http://www.roblox.com/asset/?id=3369561948"

AirdropESPFrame.Name = "AirdropESPFrame"
AirdropESPFrame.Parent = JailbreakGUI
AirdropESPFrame.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
AirdropESPFrame.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
AirdropESPFrame.Position = UDim2.new(0.510416687, 0, 0.219444454, 0)
AirdropESPFrame.Size = UDim2.new(0, 399, 0, 152)
AirdropESPFrame.Visible = false

bguis.Name = "bguis"
bguis.Parent = AirdropESPFrame
bguis.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
bguis.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
bguis.Position = UDim2.new(0.0836998522, 0, 0.0918822065, 0)
bguis.Size = UDim2.new(0, 332, 0, 36)
bguis.Font = Enum.Font.SourceSansBold
bguis.Text = "Billboard GUIs: "
bguis.TextColor3 = Color3.new(1, 1, 1)
bguis.TextScaled = true
bguis.TextSize = 14
bguis.TextWrapped = true

pointers.Name = "pointers"
pointers.Parent = AirdropESPFrame
pointers.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
pointers.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
pointers.Position = UDim2.new(0.0836998522, 0, 0.328724325, 0)
pointers.Size = UDim2.new(0, 332, 0, 36)
pointers.Font = Enum.Font.SourceSansBold
pointers.Text = "Pointers: "
pointers.TextColor3 = Color3.new(1, 1, 1)
pointers.TextScaled = true
pointers.TextSize = 14
pointers.TextWrapped = true

hide.Name = "hide"
hide.Parent = AirdropESPFrame
hide.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
hide.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
hide.Position = UDim2.new(0.29422617, 0, 0.762934864, 0)
hide.Size = UDim2.new(0, 163, 0, 36)
hide.Font = Enum.Font.SourceSansBold
hide.Text = "Hide GUI"
hide.TextColor3 = Color3.new(1, 1, 1)
hide.TextScaled = true
hide.TextSize = 14
hide.TextWrapped = true
-- Scripts:
function SCRIPT_STES78_FAKESCRIPT() -- JailbreakGUI.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = JailbreakGUI
	local mainframe = script.Parent.MainFrame.ScrollingFrame
	local confirm = script.Parent.Confirmation
	mainframe.AutomaticCanvasSize = 2
	mainframe.UIGridLayout.SortOrder = 0
	mainframe.ScrollBarImageColor3 = mainframe.Parent.BorderColor3
	local mframe = mainframe.Parent
	local airdropframe = script.Parent.AirdropESPFrame
	
	if game.PlaceId == 606849621 then
		local notif = require(game:GetService("ReplicatedStorage").Game.Notification)
	
		local function notify(text)
			local notiftime = 0
			for i = 1, text:len() do
				notiftime = notiftime + 0.05
			end
			notif.new({["Text"] = text,["Duration"] = notiftime})
		end
		if not _G.RedsJBGUI then
			_G.RedsJBGUI = true
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.ClassName == "Frame" then
					v.Active = true
					v.Draggable = true
				end
			end
	
			local function makeattachment(obj)
				if not obj:FindFirstChild("Attachment") then
				Instance.new("Attachment", obj)
				obj:WaitForChild("Attachment")
				end
				return obj.Attachment
			end
	
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
	
			local GetFamily = function(ins, reverseorder)
				local Pathway = {}
	
				local function _GetFamily(v)
					if v.Parent ~= nil then
						if reverseorder then
							table.insert(Pathway, v)
						else
					      	table.insert(Pathway, 1, v)
						end
					 _GetFamily(v.Parent)
					 else
					 	if reverseorder then
							table.insert(Pathway, v)
						else
					       	table.insert(Pathway, 1, v)
						end
					end
				end
	
				_GetFamily(ins)
				return Pathway
			end
			local speeds = {}
			speeds.walkspeed = 30
			speeds.flyspeed = 300
			mframe.Speednum.Text = tostring(speeds.walkspeed)
	
			local plrs = game.Players
			local lplr = plrs.LocalPlayer
			local mouse = lplr:GetMouse()
			local jewel = workspace.Jewelrys:FindFirstChildOfClass("Model")
			local bank = workspace.Banks:FindFirstChildOfClass("Model")
	
			if syn then
				syn.protect_gui(script.Parent)
			end
	
			notify("Fixed pointer issues with airdrops.")
			local minimap = lplr.PlayerGui.AppUI.Buttons.Minimap.Map.Container.Points
	
			local function makevisible(plr)
				plr:GetPropertyChangedSignal("Visible"):connect(function()
					if plr.Visible == false then
						plr.Visible = true
					end
				end)
			end
	
			for i, plr in pairs(minimap:GetChildren()) do makevisible(plr) end
	
			minimap.ChildAdded:connect(makevisible)
			local plrgui = lplr.PlayerGui
	
			local function walcc()
				lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
					if lplr.Character.Humanoid.WalkSpeed == 0 then
					    lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
					end
				end)
			end
	
			walcc()
	
			lplr.CharacterAdded:connect(function(chr)
				chr:WaitForChild("Humanoid")
				walcc()
			end)
	
			lplr:GetPropertyChangedSignal("Team"):connect(function()
				if lplr.Team == game.Teams.Criminal then
					local fire = fireclickdetector
					if fire ~= nil then
						fire(workspace.ClothingRacks.ClothingRack.Hitbox.ClickDetector)
					end
				end
			end)
	
			local HoldEBypass = false
			local gunshoptp = false
			local moduleui = require(game.ReplicatedStorage.Module.UI)
	
			game.RunService.RenderStepped:connect(function()
	
				for i,a in pairs(moduleui.CircleAction.Specs) do
					if a.Duration ~= false and HoldEBypass and a.Name ~= "Rob" and a.Name ~= "Open Crate" then
					   a.Timed = false;
					end
				end
	
			end)
	
			mainframe.GravToggle.Text = "Gravity Toggle ("..tostring(math.floor(workspace.Gravity))..")"
	
			Changed(workspace, "Gravity", function(grav)
				mainframe.GravToggle.Text = "Gravity Toggle ("..tostring(grav)..")"
			end)
	
			mainframe.GravToggle.MouseButton1Click:connect(function()
				if math.floor(workspace.Gravity) == 196 then
					workspace.Gravity = 0
				elseif workspace.Gravity == 0 then
					workspace.Gravity = 196
				end
			end)
	
			mainframe.aimbot.MouseButton1Click:connect(function()
				confirm.Visible = true
			end)
	
			props = {}
			props.guitext = false
			props.pointers = false
	
			local bguistemplate = airdropframe.bguis.Text
			local pointerstemplate = airdropframe.pointers.Text
			airdropframe.bguis.Text = bguistemplate..tostring(props.guitext)
			airdropframe.pointers.Text = pointerstemplate..tostring(props.pointers)
	
			Changed(props, "guitext", function(val)
				airdropframe.bguis.Text = bguistemplate..tostring(val)
	
				for i,v in pairs(workspace:GetChildren()) do
	
					local success, returnval = pcall(function()
						return v.Root.BillboardGui.TextButton
					end)
	
					if success then
						returnval.Visible = val
					end
				end
	
			end)
			
			local lines = {}
			Changed(props, "pointers", function(val)
				airdropframe.pointers.Text = pointerstemplate..tostring(val)
			end)
	
			airdropframe.bguis.MouseButton1Click:connect(function()
				props.guitext = not props.guitext
			end)
	
			airdropframe.pointers.MouseButton1Click:connect(function()
				props.pointers = not props.pointers
			end)
	
			airdropframe.hide.MouseButton1Click:Connect(function()
				airdropframe.Visible = false
			end)
			
			local function pointer(part)
				local Line = Drawing.new("Line")
				table.insert(lines, Line)
				Line.Color = mainframe.Airdrop.TextColor3
				Line.Thickness = 2
				Line.Transparency = 1
	
				local pointfunction = game.RunService.Heartbeat:connect(function()
					pcall(function()
						local v = workspace.CurrentCamera:WorldToScreenPoint(lplr.Character.Humanoid.RootPart.Position)
						local v2, onscreen = workspace.CurrentCamera:WorldToScreenPoint(part.Position)
						if not onscreen then
							Line.Visible = false
						else
							Line.Visible = props.pointers
						end
						local x,y = v.X, v.Y
						local x2, y2 = v2.X, v2.Y
						Line.From = Vector2.new(x,y)
						Line.To = Vector2.new(x2, y2)
					end)
				end)
	
				coroutine.resume(coroutine.create(function()
					repeat task.wait() until GetFamily(part)[1] ~= game
					pointfunction:Disconnect()
					Line:Remove()
					table.remove(lines, table.find(lines, Line))
				end))
	
			end
	
			local function gui(child)
	
			coroutine.resume(coroutine.create(function()
				if child.Name == "Drop" then
					local Airdrop = child:WaitForChild("Root")
					local BillboardGui = Instance.new("BillboardGui")
					local TextButton = Instance.new("TextButton")
					--Properties:
					BillboardGui.Parent = Airdrop
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
					TextButton.Text = ""
					TextButton.TextColor3 = Color3.new(1, 1, 1)
					TextButton.TextSize = 22
					TextButton.TextStrokeTransparency = 0
					TextButton.Visible = props.guitext
					pointer(Airdrop)
	
				local FormatNumber = function(n)
					local n2 = ""
	
					for i = 1, tostring(n):len() do
					    local v = tostring(n):reverse():sub(i,i)
					    if i/3 == math.floor(i/3) then
					        n2 = n2..v..","
					    else
					        n2 = n2..v
					    end
					end
	
					local n3 = n2:reverse()
					if n3:sub(1,1) == "," then
						n3 = n3:sub(2, n3:len())
					end
					return n3
				end
	
				game.RunService.RenderStepped:connect(function()
					TextButton.Text = "Airdrop | Distance: "..FormatNumber(math.floor(lplr:DistanceFromCharacter(Airdrop.Position)))
				end)
	
				end
			end))
			end
	
			for i,v in pairs(workspace:GetChildren()) do
				gui(v)
			end
	
			workspace.ChildAdded:connect(gui)
	
			mainframe.Airdrop.MouseButton1Click:connect(function()
				airdropframe.Visible = true
			end)
	
			local itemconfig = game.ReplicatedStorage.Game.ItemConfig
	
			local function changegunstats(Table)
	
			for i,v in pairs(itemconfig:GetChildren()) do
				local gun = require(v)
				if v.Name == "Shotgun" then
					gun.BulletSpread = 0.02
				end
	
				for index, value in pairs(Table) do
					gun[index] = value
				end
	
			end
	
			end
	
			mainframe.modguns.MouseButton1Click:connect(function()
				changegunstats({["CamShakeMagnitude"] = 0,["FireAuto"] = true})
				local g = require(game.ReplicatedStorage.Game.ItemConfig.Grenade)
				g.ReloadTime = 0
				g.FuseTime = 0.8
				notify("Removed recoil + all guns fire automatically (also funni grenade spam)")
			end)
	
			local lasersdisabled = false
	
			mainframe.disablelasers.MouseButton1Click:connect(function()
			if lasersdisabled == false then
				lasersdisabled = true
				require(game:GetService("ReplicatedStorage").Game.MilitaryIsland).StopSpin() -- If I don't include this then the dev log will be spammed with SetPrimaryPartCFrame errors
	
				local function removeTI(ti)
					if ti.ClassName == "TouchTransmitter" then
						local laserdescendant = false
				
						for i, fam in pairs(GetFamily(ti)) do
	
							local idklmao, notnil = pcall(function()
								return fam.Parent ~= nil and fam.Parent.Parent ~= nil and fam.Parent.Parent.Parent ~= nil
							end)
	
							if notnil == true then
								if fam.Parent.Name:lower():match("laser") or fam.Parent.Name:lower():match("camera") or fam.Parent.Parent.Parent.Name == "Floors" then
									laserdescendant = true
								break
								end
							end
						end
	
						if laserdescendant or ti.Parent.Name == "BarbedWire" or ti.Parent.Name == "Light" then
							if ti.Parent.Parent and ti.Parent.Parent.Name ~= "WindowEntry" then
								if ti.Parent.CanCollide == false then
									ti.Parent:Destroy()
								end
	
								coroutine.resume(coroutine.create(function()
									repeat
									ti.Parent.Transparency = 0.6
									ti.Parent.Color = Color3.new()
									ti:Destroy()
									task.wait() until GetFamily(ti)[1] ~= game
								end))
	
							end
						end
					end
				end
	
				for i,v in pairs(workspace:GetDescendants()) do
					removeTI(v)
				end
	
				workspace.DescendantAdded:connect(removeTI)
	
				notify("Lasers that are NOT transparent will hurt you.")
				end
			end)
	
			mainframe.forcedaytime.MouseButton1Click:connect(function()
				game.Lighting.ClockTime = 12
				game.Lighting:GetPropertyChangedSignal("ClockTime"):connect(function()
				game.Lighting.ClockTime = 12
			end)
	
			end)
	
			mainframe.holdebypass.MouseButton1Click:connect(function()
			if not HoldEBypass then
				HoldEBypass = true
				notify("Hold E Bypass enabled. Sadly cannot be used with the donut shop, gas station, or air drops ;(")
			end
			end)
	
			local SpeedBypass = false
	
			mframe.speed.MouseButton1Click:Connect(function()
				mframe.speed.Visible = false
				mframe.Speednum.Visible = true
	
				local function speedhack()
	
					lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
						if lplr.Character.Humanoid.WalkSpeed ~= speeds.walkspeed then
						    lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
						end
					end)
	
					lplr.Character.Humanoid.Running:connect(function()
						lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
					end)
	
				end
					if not SpeedBypass then
					SpeedBypass = true
					speedhack()
	
					lplr.CharacterAdded:connect(function(chr)
						chr:WaitForChild("Humanoid")
						speedhack()
					end)
	
					notify("To edit your walkspeed, scroll up/down on the number in the textbox (max 150).")
				end
	
				mframe.Speednum.MouseWheelForward:connect(function()
					speeds.walkspeed = speeds.walkspeed + 5
				end)
	
				mframe.Speednum.MouseWheelBackward:connect(function()
					speeds.walkspeed = speeds.walkspeed - 5
				end)
				Changed(speeds, "walkspeed", function(num)
					if num > 150 then
						speeds.walkspeed = 150
					end
					if num < 0 then
						speeds.walkspeed = 0
					end
					mframe.Speednum.Text = tostring(speeds.walkspeed)
				end)
				
				Changed(mframe.Speednum, "Text", function(txt)
					if tonumber(txt) then
						speeds.walkspeed = tonumber(txt)
					end
				end)
			end)
	
			confirm.No.MouseButton1Click:connect(function()
				confirm.Visible = false
			end)
			confirm.Yes.MouseButton1Click:connect(function()
			confirm.Visible = false
			loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/Aimbot.lua"))()
			end)
	
			local RobberyNotifier = false
			local robtitle = "RedWire's Robbery Notifier"
	
			mainframe.RobberyNotifier.MouseButton1Click:connect(function()
				if not RobberyNotifier then
					RobberyNotifier = true
					local IconIds = {}
					IconIds["bank truck"] = "6133383545"
					IconIds["gas station"] = "4643750797"
					IconIds["donut shop"] = "4643750660"
					IconIds["museum"] = "4643749917"
					IconIds["tomb"] = "6896911415"
					IconIds["casino"] = "9255252609"
					IconIds["mansion"] = "11831534984"
	
					for i,v in pairs(plrgui.WorldMarkersGui:GetChildren()) do
	
						for i2, v2 in pairs(v:GetChildren()) do
	
							for name, id in pairs(IconIds) do
	
								if v2.ImageLabel.Image == "rbxassetid://"..id then
	
									Changed(v2, "ImageColor3", function(color)
										if color == Color3.new(0,1,0) then
											notify("The "..name.." is open for robbery.")
										end
									end)
	
								end
	
							end
	
						end
	
					end
					local smoke = workspace.PowerPlant.Smoke.smoke
	
					jewel.Floors.ChildAdded:connect(function()
						notify("The jewelry is open for robbery.")
					end)
	
					bank.Layout.ChildAdded:connect(function()
						notify("The bank is open for robbery.")
					end)
	
					smoke:GetPropertyChangedSignal("Enabled"):connect(function()
						if smoke.Enabled == true then
							notify("The powerplant is open for robbery.")
						end
					end)
	
					workspace.Trains.ChildAdded:connect(function(child)
						if child.Name == "PassengerArmor" then
							notify("A passenger train has entered the map.")
						elseif child.Name == "LocomotiveFront" then
							notify("A cargo train has entered the map.")
						end
					end)
	
					workspace.ChildAdded:connect(function(c)
						if c.Name == "Plane" then
							notify("The cargo plane is inbound!")
						end
						if c.Name == "CargoShip" then
							notify("The cargo ship is coming!")
						end
					end)
	
				end
			end)
	
			mainframe.infiniteyeet.MouseButton1Click:connect(function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			end)
	
			local ragdollremoved = false
	
			mainframe.removeragdoll.MouseButton1Click:connect(function()
				if not ragdollremoved then
					ragdollremoved = true
					require(game.ReplicatedStorage.Module.AlexRagdoll).Ragdoll = nil
					notify("Removed ragdolling. (WARNING: in some cases you will still take fall damage)")
				end
			end)
	
			mainframe.gunshoptpbutton.Text = "Gunshop TP enabled: "..tostring(gunshoptp)
	
			game.RunService.Heartbeat:connect(function()
	
				local hrpvalid, hrp = pcall(function()
					return lplr.Character.Humanoid.RootPart
				end)
	
				if hrpvalid and gunshoptp then
					hrp.CFrame = CFrame.new() + Vector3.new(418.439, 18, 520)
				end
			end)
	
			mainframe.gunshoptpbutton.MouseButton1Click:connect(function()
				if gunshoptp then
					gunshoptp = false
				else
					gunshoptp = true
				end
				mainframe.gunshoptpbutton.Text = "Gunshop TP enabled: "..tostring(gunshoptp)
			end)
	
			local enablefly = false
			local uiservice = game.UserInputService
			local vehicle = require(game.ReplicatedStorage.Game.Vehicle)
			local getmodel = vehicle.GetLocalVehicleModel
			local getseats = vehicle.getSeats
			local togglelock = vehicle.toggleLocalLocked
			local onexit = vehicle.OnVehicleJumpExited._handlerListHead
			local exitfn = onexit._fn
			local onenter = vehicle.OnVehicleEntered._handlerListHead
			local enterfn = onenter._fn
			local bservice = require(game.ReplicatedStorage.ActionButton.ActionButtonService)
	
			local unlockOnEnter = true -- whether or not you actually want your car to auto-unlock on enter
	
			local function isdriver()
			    local model = getmodel()
			    local driving = false
			    if model then
			        for i,v in pairs(getseats(model)) do
			            if v.Part.Name == "Seat" and v.Player == lplr then
			                driving = true 
			                break
			            end
			        end
			        return driving
			    else
			        return false
			    end
			end
	
			mframe.flyhack.MouseButton1Click:connect(function()
				mframe.flyhacknum.Visible = true
				mframe.flyhack.Visible = false
				if not enablefly then
					enablefly = true
					-- actual fly script
					local flying = false
					local maxdistance = 100000000000000 --using math.huge makes this script wonky
					local uiservice = game.UserInputService
					local mouse = lplr:GetMouse()
	
					local function GetVelocity(pos1,pos2,StudsPerSecond)
						local distance = (pos2 - pos1)
						local mag = distance.Magnitude
						return (distance/mag)*StudsPerSecond
					end
	
					local function getkey(keycode)
						local key = tostring(keycode):lower()
						local findcode, a = key:find("keycode.")
						return key:sub(a+1)
					end
	
					local keys = {}
					local pos = Vector3.new()
	
					game.RunService.Heartbeat:connect(function()
	
						pcall(function()
							local hrp
							local flyspeed = speeds.flyspeed
							local invehicle = getmodel()
								if invehicle and isdriver() then
									hrp = invehicle.Engine
								else
									hrp = lplr.Character.Humanoid.RootPart
									if flyspeed > 150 then
										flyspeed = 150
									end
								end
	
						    if flying then
						    	local cam = workspace.Camera
						    end
	
							local frontoffset = CFrame.new() + Vector3.new(0,0,-maxdistance)
							local backoffset = CFrame.new() + Vector3.new(0,0,maxdistance)
							local leftoffset = CFrame.new() + Vector3.new(-maxdistance,0,0)
							local rightoffset = CFrame.new() + Vector3.new(maxdistance,0,0)
							local upoffset = CFrame.new() + Vector3.new(0,maxdistance,0)
							local downoffset = CFrame.new() + Vector3.new(0,-maxdistance,0)
							local velocity = Vector3.new()
						    if flying then
							    if keys.w_active then
							        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*frontoffset).Position, flyspeed)
							    end
							    if keys.s_active then
							        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*backoffset).Position, flyspeed)
							    end
							    if keys.a_active then
							        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*leftoffset).Position, flyspeed)
							    end
							    if keys.d_active then
							        velocity = velocity + GetVelocity(hrp.Position,(hrp.CFrame*rightoffset).Position, flyspeed)
							    end
							    if keys.e_active then
							        velocity = velocity + GetVelocity(hrp.Position,(CFrame.new(hrp.Position)*upoffset).Position, flyspeed)
							    end
							    if keys.q_active then
							        velocity = velocity + GetVelocity(hrp.Position,(CFrame.new(hrp.Position)*downoffset).Position, flyspeed)
							    end
							    hrp.Velocity = velocity
							    hrp.CFrame = CFrame.new(hrp.Position, (workspace.Camera.CFrame*frontoffset).Position)
						    end
						    if flying and not keys.w_active and not keys.a_active and not keys.s_active and not keys.d_active and not keys.q_active and not keys.e_active then
						        hrp.CFrame = CFrame.new(pos, (workspace.Camera.CFrame*frontoffset).Position)
						        hrp.Velocity = Vector3.new()
								hrp.RotVelocity = Vector3.new()
						    else
						        pos = hrp.Position
						    end
						end)
	
					end)
	
					uiservice.InputBegan:connect(function(key,processed)
					if processed then return end
					    if key.KeyCode == Enum.KeyCode.F and game.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
					        flying = not flying
					        if flying then
					            lplr.Character.Humanoid.CameraOffset = Vector3.new(2,0,0)
					        else
					            lplr.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
					        end
					    end
					    keys[getkey(key.KeyCode).."_active"] = true
					end)
	
					uiservice.InputEnded:connect(function(key)
					    keys[getkey(key.KeyCode).."_active"] = false
					end)
					-- end of fly script
	
					Changed(speeds, "flyspeed", function(num)
						if num > 640 then
							speeds.flyspeed = 640
						end
						if num < 0 then
							speeds.flyspeed = 0
						end
						mframe.flyhacknum.Text = tostring(speeds.flyspeed)
					end)
	
					mframe.flyhacknum.MouseWheelForward:connect(function()
						speeds.flyspeed = speeds.flyspeed + 20
					end)
	
					mframe.flyhacknum.MouseWheelBackward:connect(function()
						speeds.flyspeed = speeds.flyspeed - 20
					end)
	
					Changed(mframe.flyhacknum, "Text", function(txt)
						if tonumber(txt) then
							speeds.flyspeed = tonumber(txt)
						end
					end)
	
					notify("Fly hack enabled! Caps at 150 if you're flying without a vehicle.")
				end
			end)
	
			local keybypass = false
	
			mainframe.keybypass.MouseButton1Click:connect(function()
				if not keybypass then
					keybypass = true
					require(game.ReplicatedStorage.Game.PlayerUtils).hasKey = function()
						return true
					end
					notify("Keycard bypass enabled.")
				end
			end)
	
			local ctxt = mainframe.getcode.Text
	
			mainframe.getcode.MouseButton1Down:connect(function()
				local codes = workspace.Casino.RobberyDoor.Codes
				local code
	
				for i,v in pairs(codes:GetChildren()) do
					if v:FindFirstChildOfClass("Part").SurfaceGui.TextLabel.Text ~= "" then
					    code = v
					    break
					end
				end
	
				local txt = ""
				if code then
	
				for i,v in pairs(code:GetChildren()) do
				    txt = txt..v.SurfaceGui.TextLabel.Text
				end
	
				mainframe.getcode.Text = txt
				else
				mainframe.getcode.Text = "code non-existent"
				end
	
				delay(5,function()
					mainframe.getcode.Text = ctxt
				end)
	
			end)
	
			mainframe.respawn.MouseButton1Click:connect(function()
				lplr.Character.Humanoid.Health = 0
			end)
	
			local delradio = false
	
			mainframe.deleteradio.MouseButton1Click:connect(function()
				if not delradio then
					delradio = true
					if lplr.PlayerGui:FindFirstChild("RadioGui") then
						lplr.PlayerGui.RadioGui:Destroy()
					end
	
					lplr.PlayerGui.ChildAdded:connect(function(c)
						if c.Name == "RadioGui" then
							c:Destroy()
						end
					end)
	
				notify("fuck this stupid gui")
				end
			end)
			
			local vmod = false
	
			mainframe.lockonexit.MouseButton1Click:connect(function()
				if not vmod then 
					vmod = true
	
					local function iscarlocked()
					    local idk, icon = pcall(function()
					        return lplr.PlayerGui.AppUI.Speedometer.Top.Lock.Icon.Image -- the speedometer thing is destroyed when you exit a vehicle, hence the pcall
					    end)
					    if idk then
					        return icon ~= "rbxassetid://5928936296"
					    end
					end
	
					onexit._fn = function(...)
					    if isdriver() and not iscarlocked() then
					        togglelock()
					    end
					    return exitfn(...)
					end
	
					onenter._fn = function(...)
					    coroutine.resume(coroutine.create(function()
					        repeat task.wait() until getmodel()
					        task.wait(0.1) -- sometimes it doesn't always work immediately, so this is just to be safe
					        if isdriver() and iscarlocked() and unlockOnEnter then
					            togglelock()
					        end
					    end))
					    return enterfn(...)
					end
	
					notify("Vehicle auto-lock/unlock enabled!")
				end
			end)
	
		else
			notify("Deleting clone gui")
			wait(0.5)
			script.Parent:Destroy()
		end
	else
		game.StarterGui:SetCore("SendNotification", {
		Title = "Jailbreak gui",
		Text = "this isn't jailbreak smh my head, deleting GUI"
		})
		wait(0.5)
		script.Parent:Destroy()
	end

end
coroutine.resume(coroutine.create(SCRIPT_STES78_FAKESCRIPT))
