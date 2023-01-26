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
local gunshoptp = Instance.new("TextButton")
local keybypass = Instance.new("TextButton")
local getcode = Instance.new("TextButton")
local deleteradio = Instance.new("TextButton")
local respawn = Instance.new("TextButton")
local lockonexit = Instance.new("TextButton")
local Tazermod = Instance.new("TextButton")
local ropefollow = Instance.new("TextButton")
local Hotbarautosort = Instance.new("TextButton")
local flyhack = Instance.new("TextButton")
local flyhacknum = Instance.new("TextBox")
local Confirmation = Instance.new("Frame")
local Warning = Instance.new("TextLabel")
local Yes = Instance.new("TextButton")
local No = Instance.new("TextButton")
local WarningIcon = Instance.new("ImageLabel")
local AutosortFrame = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local loadoutframe = Instance.new("ScrollingFrame")
local Title_2 = Instance.new("TextLabel")
local delloadout = Instance.new("TextButton")
local itemframe = Instance.new("Frame")
local x = Instance.new("TextButton")
local itemname = Instance.new("TextBox")
local slotnum = Instance.new("TextBox")
local active = Instance.new("TextButton")
local additem = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local Title_3 = Instance.new("TextLabel")
local hide = Instance.new("TextButton")
local addloadout = Instance.new("TextButton")
local loadoutname = Instance.new("TextBox")
--Properties:
JailbreakGUI.Name = "JailbreakGUI"
JailbreakGUI.Parent = game.CoreGui
JailbreakGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = JailbreakGUI
MainFrame.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
MainFrame.BorderColor3 = Color3.new(0.333333, 1, 0)
MainFrame.Position = UDim2.new(0.884783566, -384, 0.0722088963, 10)
MainFrame.Size = UDim2.new(0, 368, 0, 308)

speed.Name = "speed"
speed.Parent = MainFrame
speed.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
speed.BorderColor3 = Color3.new(0.333333, 1, 0)
speed.Position = UDim2.new(0.0169972964, 0, 0.14200002, 0)
speed.Size = UDim2.new(0, 165, 0, 50)
speed.ZIndex = 33
speed.Font = Enum.Font.Unknown
speed.Text = "Speedhack"
speed.TextColor3 = Color3.new(0.666667, 1, 0.498039)
speed.TextSize = 20
speed.TextStrokeTransparency = 0
speed.TextWrapped = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title.LayoutOrder = 1
Title.Position = UDim2.new(0.0169972964, 0, 0, 0)
Title.Size = UDim2.new(0, 335, 0, 43)
Title.Font = Enum.Font.Jura
Title.Text = "RedWire's Jailbreak GUI"
Title.TextColor3 = Color3.new(0.666667, 1, 0.498039)
Title.TextSize = 32
Title.TextStrokeColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title.TextWrapped = true

Speednum.Name = "Speednum"
Speednum.Parent = MainFrame
Speednum.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Speednum.BorderColor3 = Color3.new(0.333333, 1, 0)
Speednum.Position = UDim2.new(0.0169972964, 0, 0.14200002, 0)
Speednum.Size = UDim2.new(0, 165, 0, 50)
Speednum.Visible = false
Speednum.Font = Enum.Font.Unknown
Speednum.PlaceholderColor3 = Color3.new(0.333333, 1, 0.498039)
Speednum.PlaceholderText = "Walkspeed number"
Speednum.Text = "30"
Speednum.TextColor3 = Color3.new(0.333333, 1, 0.498039)
Speednum.TextSize = 20
Speednum.TextStrokeTransparency = 0
Speednum.TextWrapped = true

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
ScrollingFrame.BorderColor3 = Color3.new(0.333333, 1, 0)
ScrollingFrame.Position = UDim2.new(0.0169971678, 0, 0.330357075, 0)
ScrollingFrame.Size = UDim2.new(0, 354, 0, 187)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

disablelasers.Name = "disablelasers"
disablelasers.Parent = ScrollingFrame
disablelasers.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
disablelasers.BorderColor3 = Color3.new(0.333333, 1, 0)
disablelasers.Position = UDim2.new(1.23584902, 0, 0.767922103, 0)
disablelasers.Size = UDim2.new(0, 106, 0, 52)
disablelasers.Font = Enum.Font.Unknown
disablelasers.Text = "Disable Lasers"
disablelasers.TextColor3 = Color3.new(0.666667, 1, 0.498039)
disablelasers.TextSize = 20
disablelasers.TextStrokeTransparency = 0
disablelasers.TextWrapped = true

holdebypass.Name = "holdebypass"
holdebypass.Parent = ScrollingFrame
holdebypass.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
holdebypass.BorderColor3 = Color3.new(0.333333, 1, 0)
holdebypass.Position = UDim2.new(0.329939932, 0, 0.189644739, 0)
holdebypass.Size = UDim2.new(0, 106, 0, 52)
holdebypass.Font = Enum.Font.Unknown
holdebypass.Text = "Hold E Bypass"
holdebypass.TextColor3 = Color3.new(0.666667, 1, 0.498039)
holdebypass.TextSize = 20
holdebypass.TextStrokeTransparency = 0
holdebypass.TextWrapped = true

aimbot.Name = "aimbot"
aimbot.Parent = ScrollingFrame
aimbot.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
aimbot.BorderColor3 = Color3.new(0.333333, 1, 0)
aimbot.Position = UDim2.new(0, 0, 0.267379671, 0)
aimbot.Size = UDim2.new(0, 110, 0, 50)
aimbot.Font = Enum.Font.Unknown
aimbot.Text = "Aimbot"
aimbot.TextColor3 = Color3.new(0.666667, 1, 0.498039)
aimbot.TextSize = 20
aimbot.TextStrokeTransparency = 0
aimbot.TextWrapped = true

Airdrop.Name = "Airdrop"
Airdrop.Parent = ScrollingFrame
Airdrop.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Airdrop.BorderColor3 = Color3.new(0.333333, 1, 0)
Airdrop.Position = UDim2.new(0, 0, 0.451666713, 0)
Airdrop.Size = UDim2.new(0, 106, 0, 51)
Airdrop.ZIndex = -222
Airdrop.Font = Enum.Font.Unknown
Airdrop.Text = "Airdrop ESP Toggle"
Airdrop.TextColor3 = Color3.new(0.666667, 1, 0.498039)
Airdrop.TextSize = 20
Airdrop.TextStrokeTransparency = 0
Airdrop.TextWrapped = true

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.CellSize = UDim2.new(0, 165, 0, 50)

modguns.Name = "modguns"
modguns.Parent = ScrollingFrame
modguns.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
modguns.BorderColor3 = Color3.new(0.333333, 1, 0)
modguns.Position = UDim2.new(0.329939932, 0, 0.451666713, 0)
modguns.Size = UDim2.new(0, 106, 0, 51)
modguns.ZIndex = -99
modguns.Font = Enum.Font.Unknown
modguns.Text = "Mod guns"
modguns.TextColor3 = Color3.new(0.666667, 1, 0.498039)
modguns.TextSize = 20
modguns.TextStrokeTransparency = 0
modguns.TextWrapped = true

GravToggle.Name = "GravToggle"
GravToggle.Parent = ScrollingFrame
GravToggle.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
GravToggle.BorderColor3 = Color3.new(0.333333, 1, 0)
GravToggle.Position = UDim2.new(0.668999851, 0, 0.451666713, 0)
GravToggle.Size = UDim2.new(0, 105, 0, 51)
GravToggle.ZIndex = 0
GravToggle.Font = Enum.Font.Unknown
GravToggle.Text = "Gravity Toggle (196)"
GravToggle.TextColor3 = Color3.new(0.666667, 1, 0.498039)
GravToggle.TextSize = 20
GravToggle.TextStrokeTransparency = 0
GravToggle.TextWrapped = true

forcedaytime.Name = "forcedaytime"
forcedaytime.Parent = ScrollingFrame
forcedaytime.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
forcedaytime.BorderColor3 = Color3.new(0.333333, 1, 0)
forcedaytime.Position = UDim2.new(0.333333343, 0, 0.710666597, 0)
forcedaytime.Size = UDim2.new(0, 106, 0, 52)
forcedaytime.ZIndex = 0
forcedaytime.Font = Enum.Font.Unknown
forcedaytime.Text = "Force Daytime"
forcedaytime.TextColor3 = Color3.new(0.666667, 1, 0.498039)
forcedaytime.TextSize = 20
forcedaytime.TextStrokeTransparency = 0
forcedaytime.TextWrapped = true

removeragdoll.Name = "removeragdoll"
removeragdoll.Parent = ScrollingFrame
removeragdoll.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
removeragdoll.BorderColor3 = Color3.new(0.333333, 1, 0)
removeragdoll.Size = UDim2.new(0, 115, 0, 47)
removeragdoll.Font = Enum.Font.Unknown
removeragdoll.Text = "Remove Ragdoll"
removeragdoll.TextColor3 = Color3.new(0.666667, 1, 0.498039)
removeragdoll.TextSize = 20
removeragdoll.TextStrokeTransparency = 0
removeragdoll.TextWrapped = true

RobberyNotifier.Name = "RobberyNotifier"
RobberyNotifier.Parent = ScrollingFrame
RobberyNotifier.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
RobberyNotifier.BorderColor3 = Color3.new(0.333333, 1, 0)
RobberyNotifier.Position = UDim2.new(0.327883303, 0, 0, 0)
RobberyNotifier.Size = UDim2.new(0, 117, 0, 47)
RobberyNotifier.Font = Enum.Font.Unknown
RobberyNotifier.Text = "Robbery Notifier"
RobberyNotifier.TextColor3 = Color3.new(0.666667, 1, 0.498039)
RobberyNotifier.TextSize = 20
RobberyNotifier.TextStrokeTransparency = 0
RobberyNotifier.TextWrapped = true

infiniteyeet.Name = "infiniteyeet"
infiniteyeet.Parent = ScrollingFrame
infiniteyeet.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
infiniteyeet.BorderColor3 = Color3.new(0.333333, 1, 0)
infiniteyeet.Position = UDim2.new(0.663817644, 0, 0, 0)
infiniteyeet.Size = UDim2.new(0, 117, 0, 47)
infiniteyeet.Font = Enum.Font.Unknown
infiniteyeet.Text = "Inf Yield"
infiniteyeet.TextColor3 = Color3.new(0.666667, 1, 0.498039)
infiniteyeet.TextSize = 20
infiniteyeet.TextStrokeTransparency = 0
infiniteyeet.TextWrapped = true

gunshoptp.Name = "gunshoptp"
gunshoptp.Parent = ScrollingFrame
gunshoptp.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
gunshoptp.BorderColor3 = Color3.new(0.333333, 1, 0)
gunshoptp.Position = UDim2.new(0, 0, 0.262000024, 0)
gunshoptp.Size = UDim2.new(0, 117, 0, 47)
gunshoptp.Font = Enum.Font.Unknown
gunshoptp.Text = "Gunshop TP"
gunshoptp.TextColor3 = Color3.new(0.666667, 1, 0.498039)
gunshoptp.TextSize = 20
gunshoptp.TextStrokeTransparency = 0
gunshoptp.TextWrapped = true

keybypass.Name = "keybypass"
keybypass.Parent = ScrollingFrame
keybypass.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
keybypass.BorderColor3 = Color3.new(0.333333, 1, 0)
keybypass.Position = UDim2.new(0.333333343, 0, 0.262000024, 0)
keybypass.Size = UDim2.new(0, 116, 0, 47)
keybypass.ZIndex = 0
keybypass.Font = Enum.Font.Unknown
keybypass.Text = "Keycard Bypass"
keybypass.TextColor3 = Color3.new(0.666667, 1, 0.498039)
keybypass.TextSize = 20
keybypass.TextStrokeTransparency = 0
keybypass.TextWrapped = true

getcode.Name = "getcode"
getcode.Parent = ScrollingFrame
getcode.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
getcode.BorderColor3 = Color3.new(0.333333, 1, 0)
getcode.Position = UDim2.new(0, 0, 0.523438752, 0)
getcode.Size = UDim2.new(0, 116, 0, 47)
getcode.ZIndex = 0
getcode.Font = Enum.Font.Unknown
getcode.Text = "Get Casino code"
getcode.TextColor3 = Color3.new(0.666667, 1, 0.498039)
getcode.TextSize = 20
getcode.TextStrokeTransparency = 0
getcode.TextWrapped = true

deleteradio.Name = "deleteradio"
deleteradio.Parent = ScrollingFrame
deleteradio.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
deleteradio.BorderColor3 = Color3.new(0.333333, 1, 0)
deleteradio.Position = UDim2.new(0.333333343, 0, 0.523438752, 0)
deleteradio.Size = UDim2.new(0, 117, 0, 47)
deleteradio.ZIndex = -1
deleteradio.Font = Enum.Font.Unknown
deleteradio.Text = "Delete Radio Gui (its stupid)"
deleteradio.TextColor3 = Color3.new(0.666667, 1, 0.498039)
deleteradio.TextSize = 20
deleteradio.TextStrokeTransparency = 0
deleteradio.TextWrapped = true

respawn.Name = "respawn"
respawn.Parent = ScrollingFrame
respawn.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
respawn.BorderColor3 = Color3.new(0.333333, 1, 0)
respawn.Position = UDim2.new(0.667000175, 0, 0.523438752, 0)
respawn.Size = UDim2.new(0, 116, 0, 47)
respawn.ZIndex = -1
respawn.Font = Enum.Font.Unknown
respawn.Text = "Respawn"
respawn.TextColor3 = Color3.new(0.666667, 1, 0.498039)
respawn.TextSize = 20
respawn.TextStrokeTransparency = 0
respawn.TextWrapped = true

lockonexit.Name = "lockonexit"
lockonexit.Parent = ScrollingFrame
lockonexit.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
lockonexit.BorderColor3 = Color3.new(0.333333, 1, 0)
lockonexit.Position = UDim2.new(0.667000175, 0, 0.523438752, 0)
lockonexit.Size = UDim2.new(0, 116, 0, 47)
lockonexit.ZIndex = -1
lockonexit.Font = Enum.Font.Unknown
lockonexit.Text = "Lock on exit + Unlock on enter"
lockonexit.TextColor3 = Color3.new(0.666667, 1, 0.498039)
lockonexit.TextSize = 20
lockonexit.TextStrokeTransparency = 0
lockonexit.TextWrapped = true

Tazermod.Name = "Tazermod"
Tazermod.Parent = ScrollingFrame
Tazermod.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Tazermod.BorderColor3 = Color3.new(0.333333, 1, 0)
Tazermod.Position = UDim2.new(0, 0, 0.451666713, 0)
Tazermod.Size = UDim2.new(0, 106, 0, 51)
Tazermod.ZIndex = -222
Tazermod.Font = Enum.Font.Unknown
Tazermod.Text = "Tazer mod"
Tazermod.TextColor3 = Color3.new(0.666667, 1, 0.498039)
Tazermod.TextSize = 20
Tazermod.TextStrokeTransparency = 0
Tazermod.TextWrapped = true

ropefollow.Name = "ropefollow"
ropefollow.Parent = ScrollingFrame
ropefollow.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
ropefollow.BorderColor3 = Color3.new(0.333333, 1, 0)
ropefollow.Position = UDim2.new(0, 0, 0.451666713, 0)
ropefollow.Size = UDim2.new(0, 106, 0, 51)
ropefollow.ZIndex = -222
ropefollow.Font = Enum.Font.Unknown
ropefollow.Text = "Rope-Follow-Part"
ropefollow.TextColor3 = Color3.new(0.666667, 1, 0.498039)
ropefollow.TextSize = 20
ropefollow.TextStrokeTransparency = 0
ropefollow.TextWrapped = true

Hotbarautosort.Name = "Hotbarautosort"
Hotbarautosort.Parent = ScrollingFrame
Hotbarautosort.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Hotbarautosort.BorderColor3 = Color3.new(0.333333, 1, 0)
Hotbarautosort.Position = UDim2.new(0, 0, 0.451666713, 0)
Hotbarautosort.Size = UDim2.new(0, 106, 0, 51)
Hotbarautosort.ZIndex = -222
Hotbarautosort.Font = Enum.Font.Unknown
Hotbarautosort.Text = "Hotbar Auto-sorter"
Hotbarautosort.TextColor3 = Color3.new(0.666667, 1, 0.498039)
Hotbarautosort.TextSize = 20
Hotbarautosort.TextStrokeTransparency = 0
Hotbarautosort.TextWrapped = true

flyhack.Name = "flyhack"
flyhack.Parent = MainFrame
flyhack.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
flyhack.BorderColor3 = Color3.new(0.333333, 1, 0)
flyhack.Position = UDim2.new(0.478953809, 0, 0.14200002, 0)
flyhack.Size = UDim2.new(0, 165, 0, 50)
flyhack.Font = Enum.Font.Unknown
flyhack.Text = "Fly hack (Left CTRL + F)"
flyhack.TextColor3 = Color3.new(0.666667, 1, 0.498039)
flyhack.TextSize = 20
flyhack.TextStrokeTransparency = 0
flyhack.TextWrapped = true

flyhacknum.Name = "flyhacknum"
flyhacknum.Parent = MainFrame
flyhacknum.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
flyhacknum.BorderColor3 = Color3.new(0.333333, 1, 0)
flyhacknum.Position = UDim2.new(0.479000002, 0, 0.142000005, 0)
flyhacknum.Size = UDim2.new(0, 165, 0, 50)
flyhacknum.Visible = false
flyhacknum.Font = Enum.Font.Unknown
flyhacknum.PlaceholderColor3 = Color3.new(0.333333, 1, 1)
flyhacknum.PlaceholderText = "Fly Speed number"
flyhacknum.Text = "300"
flyhacknum.TextColor3 = Color3.new(0.333333, 1, 1)
flyhacknum.TextSize = 20
flyhacknum.TextWrapped = true

Confirmation.Name = "Confirmation"
Confirmation.Parent = JailbreakGUI
Confirmation.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Confirmation.BorderColor3 = Color3.new(0.333333, 1, 0)
Confirmation.Position = UDim2.new(0.459546417, 0, 0.114550553, 0)
Confirmation.Size = UDim2.new(0, 318, 0, 236)
Confirmation.Visible = false

Warning.Name = "Warning"
Warning.Parent = Confirmation
Warning.BackgroundColor3 = Color3.new(1, 1, 1)
Warning.BackgroundTransparency = 1
Warning.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Warning.BorderSizePixel = 0
Warning.Position = UDim2.new(0.0251572318, 0, 0.169345021, 0)
Warning.Size = UDim2.new(0, 301, 0, 102)
Warning.Font = Enum.Font.Unknown
Warning.Text = "Warning: If your exploit cannot use 'mousemoverel', the aimbot will not work. Proceed?"
Warning.TextColor3 = Color3.new(0.996078, 0.858824, 0.211765)
Warning.TextSize = 24
Warning.TextStrokeColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Warning.TextWrapped = true

Yes.Name = "Yes"
Yes.Parent = Confirmation
Yes.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Yes.BorderColor3 = Color3.new(0.333333, 1, 0)
Yes.Position = UDim2.new(0.0503144637, 0, 0.631355882, 0)
Yes.Size = UDim2.new(0, 110, 0, 50)
Yes.Font = Enum.Font.Unknown
Yes.Text = "Yes"
Yes.TextColor3 = Color3.new(0, 0.882353, 0)
Yes.TextSize = 40
Yes.TextWrapped = true

No.Name = "No"
No.Parent = Confirmation
No.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
No.BorderColor3 = Color3.new(0.333333, 1, 0)
No.Position = UDim2.new(0.597484291, 0, 0.631355882, 0)
No.Size = UDim2.new(0, 110, 0, 50)
No.Font = Enum.Font.Unknown
No.Text = "No"
No.TextColor3 = Color3.new(1, 0, 0)
No.TextSize = 40
No.TextWrapped = true

WarningIcon.Name = "WarningIcon"
WarningIcon.Parent = Confirmation
WarningIcon.BackgroundColor3 = Color3.new(1, 1, 1)
WarningIcon.BackgroundTransparency = 1
WarningIcon.Position = UDim2.new(0.42764321, 0, 0, 0)
WarningIcon.Size = UDim2.new(0, 45, 0, 45)
WarningIcon.Image = "http://www.roblox.com/asset/?id=3369561948"

AutosortFrame.Name = "AutosortFrame"
AutosortFrame.Parent = JailbreakGUI
AutosortFrame.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
AutosortFrame.BorderColor3 = Color3.new(0.333333, 1, 0)
AutosortFrame.Position = UDim2.new(0.462671399, 0, 0.0823940709, 0)
AutosortFrame.Size = UDim2.new(0, 402, 0, 335)
AutosortFrame.Visible = false

ScrollingFrame_2.Parent = AutosortFrame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
ScrollingFrame_2.BorderColor3 = Color3.new(0.333333, 1, 0)
ScrollingFrame_2.Position = UDim2.new(0.0329122208, 0, 0.127253339, 0)
ScrollingFrame_2.Size = UDim2.new(0, 375, 0, 215)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = ScrollingFrame_2
UIListLayout.Padding = UDim.new(0, 10)

loadoutframe.Name = "loadoutframe"
loadoutframe.Parent = ScrollingFrame_2
loadoutframe.Active = true
loadoutframe.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
loadoutframe.BorderColor3 = Color3.new(0.333333, 1, 0)
loadoutframe.Size = UDim2.new(0, 358, 0, 198)
loadoutframe.Visible = false
loadoutframe.CanvasSize = UDim2.new(0, 0, 0, 0)

Title_2.Name = "Title"
Title_2.Parent = loadoutframe
Title_2.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
Title_2.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_2.LayoutOrder = 1
Title_2.Size = UDim2.new(0, 317, 0, 25)
Title_2.Font = Enum.Font.Unknown
Title_2.Text = "loadoutname"
Title_2.TextColor3 = Color3.new(0.666667, 1, 0.498039)
Title_2.TextScaled = true
Title_2.TextSize = 27
Title_2.TextStrokeColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title_2.TextWrapped = true

delloadout.Name = "delloadout"
delloadout.Parent = Title_2
delloadout.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
delloadout.BorderColor3 = Color3.new(0.333333, 1, 0)
delloadout.Position = UDim2.new(1, 0, -0.0149493404, 0)
delloadout.Size = UDim2.new(0, 25, 0, 25)
delloadout.Font = Enum.Font.Unknown
delloadout.Text = "X"
delloadout.TextColor3 = Color3.new(1, 0, 0)
delloadout.TextScaled = true
delloadout.TextSize = 14
delloadout.TextWrapped = true

itemframe.Name = "itemframe"
itemframe.Parent = loadoutframe
itemframe.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
itemframe.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
itemframe.Position = UDim2.new(0, 0, 0.378787875, 0)
itemframe.Size = UDim2.new(0, 342, 0, 25)
itemframe.Visible = false

x.Name = "x"
x.Parent = itemframe
x.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
x.BorderColor3 = Color3.new(0.333333, 1, 0)
x.Position = UDim2.new(0.926900625, 0, 0, 0)
x.Size = UDim2.new(0, 25, 0, 25)
x.Font = Enum.Font.Unknown
x.Text = "X"
x.TextColor3 = Color3.new(1, 0, 0)
x.TextScaled = true
x.TextSize = 14
x.TextWrapped = true

itemname.Name = "itemname"
itemname.Parent = itemframe
itemname.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
itemname.BorderColor3 = Color3.new(0.333333, 1, 0)
itemname.Size = UDim2.new(0, 171, 0, 25)
itemname.Font = Enum.Font.Unknown
itemname.PlaceholderText = "Item Name"
itemname.Text = ""
itemname.TextColor3 = Color3.new(0.666667, 1, 0.498039)
itemname.TextScaled = true
itemname.TextSize = 14
itemname.TextWrapped = true

slotnum.Name = "slotnum"
slotnum.Parent = itemframe
slotnum.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
slotnum.BorderColor3 = Color3.new(0.333333, 1, 0)
slotnum.Position = UDim2.new(0.5, 0, 0, 0)
slotnum.Size = UDim2.new(0, 146, 0, 25)
slotnum.Font = Enum.Font.Unknown
slotnum.PlaceholderText = "Slot number"
slotnum.Text = ""
slotnum.TextColor3 = Color3.new(0.666667, 1, 0.498039)
slotnum.TextScaled = true
slotnum.TextSize = 14
slotnum.TextWrapped = true

active.Name = "active"
active.Parent = loadoutframe
active.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
active.BorderColor3 = Color3.new(0.333333, 1, 0)
active.Position = UDim2.new(0, 0, 0.25252524, 0)
active.Size = UDim2.new(0, 342, 0, 25)
active.Font = Enum.Font.Unknown
active.Text = "Active"
active.TextColor3 = Color3.new(1, 0, 0)
active.TextScaled = true
active.TextSize = 14
active.TextWrapped = true

additem.Name = "additem"
additem.Parent = loadoutframe
additem.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
additem.BorderColor3 = Color3.new(0.333333, 1, 0)
additem.Position = UDim2.new(0, 0, 0.25252524, 0)
additem.Size = UDim2.new(0, 342, 0, 25)
additem.Font = Enum.Font.Unknown
additem.Text = "+ Add Item"
additem.TextColor3 = Color3.new(0.333333, 1, 0)
additem.TextScaled = true
additem.TextSize = 14
additem.TextWrapped = true

UIListLayout_2.Parent = loadoutframe

Title_3.Name = "Title"
Title_3.Parent = AutosortFrame
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title_3.LayoutOrder = 1
Title_3.Position = UDim2.new(0.0602755435, 0, 0.0149253728, 0)
Title_3.Size = UDim2.new(0, 352, 0, 30)
Title_3.Font = Enum.Font.Unknown
Title_3.Text = "Hotbar Auto-Sorter"
Title_3.TextColor3 = Color3.new(0.666667, 1, 0.498039)
Title_3.TextSize = 30
Title_3.TextStrokeColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title_3.TextWrapped = true

hide.Name = "hide"
hide.Parent = AutosortFrame
hide.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
hide.BorderColor3 = Color3.new(0.333333, 1, 0)
hide.Position = UDim2.new(0.337292314, 0, 0.922172725, 0)
hide.Size = UDim2.new(0, 129, 0, 26)
hide.ZIndex = 33
hide.Font = Enum.Font.Unknown
hide.Text = "Hide"
hide.TextColor3 = Color3.new(0.666667, 1, 0.498039)
hide.TextSize = 28
hide.TextStrokeTransparency = 0
hide.TextWrapped = true

addloadout.Name = "addloadout"
addloadout.Parent = AutosortFrame
addloadout.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
addloadout.BorderColor3 = Color3.new(0.333333, 1, 0)
addloadout.Position = UDim2.new(0.0315795019, 0, 0.803062916, 0)
addloadout.Size = UDim2.new(0, 168, 0, 25)
addloadout.ZIndex = 33
addloadout.Font = Enum.Font.Unknown
addloadout.Text = "Add loadout with name:"
addloadout.TextColor3 = Color3.new(0.666667, 1, 0.498039)
addloadout.TextScaled = true
addloadout.TextSize = 28
addloadout.TextStrokeTransparency = 0
addloadout.TextWrapped = true

loadoutname.Name = "loadoutname"
loadoutname.Parent = AutosortFrame
loadoutname.BackgroundColor3 = Color3.new(0.0117647, 0.164706, 0.00392157)
loadoutname.BorderColor3 = Color3.new(0.333333, 1, 0)
loadoutname.Position = UDim2.new(0.449489921, 0, 0.802994728, 0)
loadoutname.Size = UDim2.new(0, 206, 0, 25)
loadoutname.Font = Enum.Font.Unknown
loadoutname.PlaceholderText = "Loadout Name"
loadoutname.Text = ""
loadoutname.TextColor3 = Color3.new(0.666667, 1, 0.498039)
loadoutname.TextScaled = true
loadoutname.TextSize = 14
loadoutname.TextWrapped = true
-- Scripts:
function SCRIPT_MZWD83_FAKESCRIPT() -- JailbreakGUI.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = JailbreakGUI
	local mframe = script.Parent.MainFrame
	local mainframe = mframe.ScrollingFrame
	local confirm = script.Parent.Confirmation
	mainframe.UIGridLayout.SortOrder = 0
	local aframe = script.Parent.AutosortFrame
	local autosortframe = aframe.ScrollingFrame
	autosortframe.UIListLayout.SortOrder = 0
	local rstorage = game.ReplicatedStorage
	local runservice = game["Run Service"]
	
	for i,v in pairs(script.Parent:GetDescendants()) do
		if v.ClassName == "ScrollingFrame" then
			v.AutomaticCanvasSize = 2
			v.ScrollBarImageColor3 = mainframe.Parent.BorderColor3
		end
		if v.ClassName == "Frame" then
			v.Active = true
			v.Draggable = true
		end
		if v.ClassName == "TextBox" or v.ClassName == "TextButton" or v.ClassName == "TextLabel" then
			v.Font = Enum.Font.Jura
		end
	end
	
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
			loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()
	
	
			local thread = function(f)
	
				return coroutine.resume(coroutine.create(function()
					return f()
				end))
	
			end
	
	
			local Changed = function(part, PropertyName, func)
			    local current = part[PropertyName]
				local elapsedTime = 0
				
			    thread(function()
			        while true do
			            repeat elapsedTime = elapsedTime + task.wait() until part[PropertyName] ~= current
						
						local v,v2 = thread(function()
							return func(part[PropertyName], current, elapsedTime)
						end)
						
						if v2 == "stop" then break end
						elapsedTime = 0
						current = part[PropertyName]
					end
				end)
				
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
	
			notify("Fixed train robbery notifs appearing more than once.")
			local minimap = lplr.PlayerGui.AppUI.Buttons.Minimap.Map.Container.Points
	
			local function makevisible(plr)
				Changed(plr, "Visible", function(v)
					if not v then
						plr.Visible = true
					end
				end)
			end
	
			for i, plr in pairs(minimap:GetChildren()) do makevisible(plr) end
	
			minimap.ChildAdded:connect(makevisible)
			local plrgui = lplr.PlayerGui
	
			local function walcc()
				runservice.RenderStepped:connect(function()
					
					pcall(function()
						if lplr.Character.Humanoid.WalkSpeed == 0 then
						    lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
						end
					end)
					
				end)
			end
	
			walcc()
	
			lplr.CharacterAdded:connect(function(chr)
				chr:WaitForChild("Humanoid")
				walcc()
			end)
	
			Changed(lplr, "Team", function(team)
				if team == game.Teams.Criminal then
					local fire = fireclickdetector
					if fire ~= nil then
						fire(workspace.ClothingRacks.ClothingRack.Hitbox.ClickDetector)
					end
				end
			end)
	
			local HoldEBypass = false
			local gunshoptp = false
			local moduleui = require(game.ReplicatedStorage.Module.UI)
	
			runservice.RenderStepped:connect(function()
	
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
			local lines = {}
			local bbguis = {}
	
			Changed(props, "guitext", function(val)
	
				for i,v in pairs(bbguis) do
					v.TextButton.Visible = val
				end
	
			end)
			
			local function pointer(part)
				local Line = Drawing.new("Line")
				table.insert(lines, Line)
				Line.Color = mainframe.Airdrop.TextColor3
				Line.Thickness = 2
				Line.Transparency = 1
	
				local pointfunction = runservice.Heartbeat:connect(function()
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
					table.insert(bbguis, BillboardGui)
	
					coroutine.resume(coroutine.create(function()
						repeat task.wait() until GetFamily(child)[1] ~= game
						table.remove(bbguis, table.find(bbguis, BillboardGui))
					end))
	
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
	
				runservice.RenderStepped:connect(function()
					TextButton.Text = "Airdrop | Distance: "..FormatNumber(math.floor(lplr:DistanceFromCharacter(Airdrop.Position)))
				end)
	
				end
			end))
			end
	
			for i,v in pairs(workspace:GetChildren()) do
				gui(v)
			end
	
			workspace.ChildAdded:connect(gui)
			local airdroptxt = mainframe.Airdrop.Text
			mainframe.Airdrop.Text = airdroptxt.." ("..tostring(props.pointers)..")"
	
			mainframe.Airdrop.MouseButton1Click:connect(function()
				if not props.pointers then
					props.pointers = true
					props.guitext = true
				else
					props.pointers = false
					props.guitext = false
				end
				mainframe.Airdrop.Text = airdroptxt.." ("..tostring(props.pointers)..")"
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
			local gunnotif = false
			
			mainframe.modguns.MouseButton1Click:connect(function()
				changegunstats({["CamShakeMagnitude"] = 0,["FireAuto"] = true})
				local g = require(game.ReplicatedStorage.Game.ItemConfig.Grenade)
				g.ReloadTime = 0
				g.FuseTime = 0.8
				if not gunnotif then
				gunnotif = true
				notify("Removed recoil + all guns fire automatically (also funni grenade spam)")
				end
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
				
				Changed(game.Lighting, "ClockTime", function()
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
	
					runservice.RenderStepped:connect(function()
						pcall(function()
							lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
						end)
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
			local trainrob = true
	
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
					IconIds["power plant"] = "4643749556"
					IconIds["jewelry"] = "4643749718"
					IconIds["bank"] = "4643749317"
					IconIds["cargo train"] = "7301405189"
					IconIds["cargo plane"]= "7301406769"
					IconIds["cargo ship"] = "7301406299"
					IconIds["passenger train"] = "7301405813"
	
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
	
					plrgui.WorldMarkersGui.ChildAdded:connect(function(marker)
						while true do
							if pcall(function()
									return marker.ImageLabel.ImageLabel.Image
								end) then
								break
							else
								task.wait()
							end
						end
						local img = marker.ImageLabel.ImageLabel.Image
						for i,v in pairs(IconIds) do
							if img == "rbxassetid://"..v then
								if i == "cargo train" or i == "passenger train" then
									if trainrob then
										notify("The "..i.." has entered the map.")
										trainrob = false
										
										delay(4, function()
											trainrob = true
										end)
	
									end
								elseif i == "cargo ship" then
									notify("The cargo ship is coming!")
								elseif i == "cargo plane" then
									notify("The cargo plane is inbound!")
								else
									notify("The "..i.." is open for robbery.")
								end
							end
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
	
			runservice.Heartbeat:connect(function()
	
				local hrpvalid, hrp = pcall(function()
					return lplr.Character.Humanoid.RootPart
				end)
	
				if hrpvalid and gunshoptp then
					hrp.CFrame = CFrame.new() + Vector3.new(418.439, 18, 520)
				end
			end)
	
			mainframe.gunshoptp.Text = "Gunshop TP ("..tostring(gunshoptp)..")"
	
			mainframe.gunshoptp.MouseButton1Click:connect(function()
				if gunshoptp then
					gunshoptp = false
				else
					gunshoptp = true
				end
				mainframe.gunshoptp.Text = "Gunshop TP ("..tostring(gunshoptp)..")"
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
	
					runservice.Heartbeat:connect(function()
	
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
					local c = {}
					
					for i,v in pairs(code:GetChildren()) do
					    table.insert(c, v.Position.Magnitude)
					end
					
					table.sort(c)
					for i,v in pairs(c) do
						for i, cpart in pairs(code:GetChildren()) do
							if v == cpart.Position.Magnitude then
								txt = txt..cpart.SurfaceGui.TextLabel.Text
							end
						end
					end
					mainframe.getcode.Text = txt.." (or "..txt:reverse()..")"
				else
					mainframe.getcode.Text = "code non-existent"
				end
	
				delay(5,function()
					mainframe.getcode.Text = ctxt
				end)
	
			end)
			local respawnconfirm = false
			local respawntxt = mainframe.respawn.Text
			
			mainframe.respawn.MouseButton1Click:connect(function()
				if respawnconfirm then
					lplr.Character.Humanoid.Health = 0
				end
				if not respawnconfirm then
					respawnconfirm = true
					mainframe.respawn.Text = respawntxt.." (you sure?)"
					wait(1)
					respawnconfirm = false
					mainframe.respawn.Text = respawntxt
				end
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
			
			local tazermod = false
				
			mainframe.Tazermod.MouseButton1Click:connect(function()
				if not tazermod then
					local function hasval(t, child)
					    return pcall(function()
					        return t[child]
					    end)
					end
	
					for i,v in pairs(getreg()) do
						if type(v) == "table" then
							if isreadonly and setreadonly and isreadonly(v) then
								setreadonly(v, false)
							end
							if hasval(v, "ReloadTime") and hasval(v, "ReloadTimeHit") then
					        	v.ReloadTime = 0
					        	v.ReloadTimeHit = 0
							end
						end
					end
					notify("Funni tazer")
				end
			end)
	
			local ropefollow = false
			local ropepart = nil
			local ropenotif = false
			local ropetxt = mainframe.ropefollow.Text
			mainframe.ropefollow.Text = ropetxt.." ("..tostring(ropefollow)..")"
	
			mainframe.ropefollow.MouseButton1Click:connect(function()
		        ropefollow = not ropefollow
				mainframe.ropefollow.Text = ropetxt.." ("..tostring(ropefollow)..")"
		        if not ropefollow then
		            ropepart = nil
		        end
				if not ropenotif then
					ropenotif = true
					notify("Click on a vehicle (or cargo plane crate) to follow it with a rope.")
				end
			end)
	
			runservice.Heartbeat:connect(function()
			    local model = require(rstorage.Game.Vehicle).GetLocalVehicleModel()
			    if model and ropefollow and ropepart and ropepart ~= model then
					if pcall(function() return model.Preset.RopePull end) then
						if ropepart.Parent == workspace.Vehicles then
							model.Preset.RopePull.CFrame = ropepart.Engine.CFrame
						else
							model.Preset.RopePull.CFrame = ropepart.MeshPart.CFrame
						end
			        end
			    end
			end)
	
			mouse.Button1Down:connect(function()
				local t = mouse.Target
				if t and ropefollow then
					local gf = GetFamily(t)
					if gf[3] == workspace.Vehicles then
						ropepart = gf[4]
					elseif gf[3].Name == "CargoShip" and gf[4].Name == "Crates" then
						ropepart = gf[5]
					end
			    end
			end)
			
			local loadouts
			local file = "JBLoadouts.lua"
			if isfile and loadfile then
				if isfile(file) then
					loadouts = loadfile(file)()
				else
				loadouts = {}
				end
			else
				loadouts = {}
			end
			local items = {}
			
			for i,v in pairs(rstorage.Game.Item:GetChildren()) do 
				table.insert(items, v.Name)
			end
			
			local function saveloadout()
				if writefile then
					writefile(file, TableToString(loadouts, "Loadouts"))
				end
			end
			
			local function addloadout(name)
				if not loadouts[name] then
					loadouts[name] = {}
					loadouts[name].active = false
					loadouts[name].items = {}
				end
				local loadout = loadouts[name]
				local clone = autosortframe.loadoutframe:Clone()
				clone.Parent = autosortframe
				clone.Visible = true
				clone.Title.Text = name
				clone.active.Text = "Active ("..tostring(loadouts[name].active)..")"
				
				local function updateloadout()
					loadout.items = {}
					for i,v in pairs(clone:GetChildren()) do 
						if v.Name == "itemframe" and table.find(items, v.itemname.Text) and tonumber(v.slotnum.Text) then
							loadout.items[v.itemname.Text] = tonumber(v.slotnum.Text)
						end
					end
					saveloadout()
				end
				
				if loadout.active then 
					clone.active.TextColor3 = Color3.new(0,1,0)
				end
				
				clone.active.MouseButton1Click:connect(function()
					loadout.active = not loadout.active
					updateloadout()
				end)
				
				Changed(loadout, "active", function(val)
					if val then
						clone.active.TextColor3 = Color3.new(0,1,0)
						
						for i,v in pairs(loadouts) do
							if v ~= loadout and v.active then
								v.active = false
							end
						end
						
					else
						clone.active.TextColor3 = Color3.new(1,0,0)
					end
					clone.active.Text = "Active ("..tostring(val)..")"
				end)
				
				local function additem(txt,txt2)
					if not txt then txt = "" end
					if not txt2 then txt2 = "" end
					local itemclone = clone.itemframe:Clone()
					itemclone.Parent = clone
					itemclone.Visible = true
					itemclone.itemname.Text = txt
					itemclone.slotnum.Text = txt2
					itemclone.itemname.FocusLost:connect(updateloadout)
					itemclone.slotnum.FocusLost:connect(updateloadout)
	
					Changed(itemclone.itemname, "Text", function(txt)
						local items2 = {}
	
						for i,v in pairs(items) do
							if v:lower():sub(1, txt:len()) == txt:lower() then
								table.insert(items2, v)
							end
						end
	
						if #items2 == 1 then
							itemclone.itemname.Text = items2[1]
						end
					end)
	
					itemclone.x.MouseButton1Click:connect(function()
						itemclone:Destroy()
						updateloadout()
					end)
					
				end
				
				for i,v in pairs(loadout.items) do
					additem(i, tostring(v))
				end
				
				clone.additem.MouseButton1Click:connect(function()
					additem()
				end)
				
				clone.Title.delloadout.MouseButton1Click:connect(function()
					
					for i,v in pairs(loadouts) do
						if i == clone.Title.Text then
							loadouts[i] = nil
						end
					end
					
					clone:Destroy()
					saveloadout()
				end)
			end
			
			for i,v in pairs(loadouts) do
				addloadout(i)
			end
			
			aframe.addloadout.MouseButton1Click:connect(function()
				local lname = aframe.loadoutname.Text
				local namematch = false
				
				for i,v in pairs(loadouts) do
					if i == lname then
						namematch = true
						break
					end
				end
				
				if not namematch then
					addloadout(lname)
				end
			end)
			
			aframe.hide.MouseButton1Click:connect(function()
				aframe.Visible = false
			end)
			
			local hb = require(rstorage.Hotbar.HotbarItemUtils)
			local setorder = hb.setDisplayOrder
			local getorder = hb.getDisplayOrder
	
			runservice.Heartbeat:connect(function()
				local loadout
				for i,v in pairs(loadouts) do
					if v.active then
						loadout = v.items
						break
					end
				end
				if loadout then
					pcall(function()
						local folitems = lplr.Folder:GetChildren()
						for item, pos in pairs(loadout) do
							for i, item2 in pairs(folitems) do
								if getorder(item2) == pos and item2.Name ~= item then
									setorder(item2, #folitems+1)
								end
								if lplr.Folder:FindFirstChild(item) then
									setorder(lplr.Folder[item], pos)
								end
							end
						end
					end)
				end
			end)
			
			mainframe.Hotbarautosort.MouseButton1Click:connect(function()
				aframe.Visible = true
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
coroutine.resume(coroutine.create(SCRIPT_MZWD83_FAKESCRIPT))
