-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local JailbreakGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local speed = Instance.new("TextButton")
local aimbot = Instance.new("TextButton")
local hacklasers = Instance.new("TextButton")
local holdebypass = Instance.new("TextButton")
local gunmod = Instance.new("TextButton")
local briefcase = Instance.new("TextButton")
local GravToggle = Instance.new("TextButton")
local X = Instance.new("TextButton")
local more = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Speednum = Instance.new("TextBox")
local otherFrame = Instance.new("Frame")
local switch = Instance.new("TextButton")
local RobberyNotifier = Instance.new("TextButton")
local gunshoptpbutton = Instance.new("TextButton")
local infiniteyeet = Instance.new("TextButton")
local healguibutton = Instance.new("TextButton")
local removeragdoll = Instance.new("TextButton")
local Confirmation = Instance.new("Frame")
local Warning = Instance.new("TextLabel")
local Yes = Instance.new("TextButton")
local No = Instance.new("TextButton")
local WarningIcon = Instance.new("ImageLabel")
local EmergencyHealing = Instance.new("Frame")
local About = Instance.new("TextLabel")
local Text1 = Instance.new("TextLabel")
local LowHealth = Instance.new("TextBox")
local Text2 = Instance.new("TextLabel")
local HigherHealth = Instance.new("TextBox")
local Thendo = Instance.new("TextLabel")
local Option1 = Instance.new("TextButton")
local Option2 = Instance.new("TextButton")
local Activatehealer = Instance.new("TextButton")
local HideGui = Instance.new("TextButton")
--Properties:
JailbreakGUI.Name = "JailbreakGUI"
JailbreakGUI.Parent = game.CoreGui
JailbreakGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = JailbreakGUI
MainFrame.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
MainFrame.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
MainFrame.Position = UDim2.new(0.887387753, -384, 0.0240607522, 10)
MainFrame.Size = UDim2.new(0, 318, 0, 240)

speed.Name = "speed"
speed.Parent = MainFrame
speed.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
speed.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
speed.Position = UDim2.new(0.00314465398, 0, 0.631499946, 0)
speed.Size = UDim2.new(0, 159, 0, 52)
speed.ZIndex = 33
speed.Font = Enum.Font.SourceSansBold
speed.Text = "Speedhack"
speed.TextColor3 = Color3.new(1, 1, 1)
speed.TextSize = 18
speed.TextWrapped = true

aimbot.Name = "aimbot"
aimbot.Parent = MainFrame
aimbot.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
aimbot.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
aimbot.Position = UDim2.new(0.668801665, 0, 0.189644754, 0)
aimbot.Size = UDim2.new(0, 106, 0, 52)
aimbot.Font = Enum.Font.SourceSansBold
aimbot.Text = "Aimbot"
aimbot.TextColor3 = Color3.new(1, 1, 1)
aimbot.TextSize = 18
aimbot.TextWrapped = true

hacklasers.Name = "hacklasers"
hacklasers.Parent = MainFrame
hacklasers.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
hacklasers.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
hacklasers.Position = UDim2.new(-3.16649675e-08, 0, 0.187500238, 0)
hacklasers.Size = UDim2.new(0, 106, 0, 52)
hacklasers.Font = Enum.Font.SourceSansBold
hacklasers.Text = "Remove (most) Lasers"
hacklasers.TextColor3 = Color3.new(1, 1, 1)
hacklasers.TextSize = 18
hacklasers.TextWrapped = true

holdebypass.Name = "holdebypass"
holdebypass.Parent = MainFrame
holdebypass.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
holdebypass.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
holdebypass.Position = UDim2.new(0.329939932, 0, 0.189644739, 0)
holdebypass.Size = UDim2.new(0, 106, 0, 52)
holdebypass.Font = Enum.Font.SourceSansBold
holdebypass.Text = "Hold E Bypass"
holdebypass.TextColor3 = Color3.new(1, 1, 1)
holdebypass.TextSize = 18
holdebypass.TextWrapped = true

gunmod.Name = "gunmod"
gunmod.Parent = MainFrame
gunmod.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
gunmod.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
gunmod.Position = UDim2.new(0.329939932, 0, 0.410478085, 0)
gunmod.Size = UDim2.new(0, 106, 0, 52)
gunmod.ZIndex = 2
gunmod.Font = Enum.Font.SourceSansBold
gunmod.Text = "Mod guns"
gunmod.TextColor3 = Color3.new(1, 1, 1)
gunmod.TextSize = 18
gunmod.TextWrapped = true

briefcase.Name = "briefcase"
briefcase.Parent = MainFrame
briefcase.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
briefcase.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
briefcase.Position = UDim2.new(-0.00100957463, 0, 0.414644718, 0)
briefcase.Size = UDim2.new(0, 106, 0, 52)
briefcase.Font = Enum.Font.SourceSansBold
briefcase.Text = "Briefcase ESP"
briefcase.TextColor3 = Color3.new(1, 1, 1)
briefcase.TextSize = 18
briefcase.TextStrokeColor3 = Color3.new(1, 0, 0)
briefcase.TextWrapped = true

GravToggle.Name = "GravToggle"
GravToggle.Parent = MainFrame
GravToggle.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
GravToggle.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
GravToggle.Position = UDim2.new(0.668801725, 0, 0.410666645, 0)
GravToggle.Size = UDim2.new(0, 106, 0, 52)
GravToggle.Font = Enum.Font.SourceSansBold
GravToggle.Text = "Gravity Toggle / Current: 196"
GravToggle.TextColor3 = Color3.new(1, 1, 1)
GravToggle.TextSize = 18
GravToggle.TextWrapped = true

X.Name = "X"
X.Parent = MainFrame
X.BackgroundColor3 = Color3.new(1, 1, 1)
X.BackgroundTransparency = 1
X.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
X.Position = UDim2.new(0.868968844, 0, 0.0250000004, 0)
X.Size = UDim2.new(0, 37, 0, 38)
X.Font = Enum.Font.SourceSansBold
X.Text = "×"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

more.Name = "more"
more.Parent = MainFrame
more.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
more.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
more.Position = UDim2.new(0.503144681, 0, 0.631499946, 0)
more.Size = UDim2.new(0, 159, 0, 52)
more.Font = Enum.Font.SourceSansBold
more.Text = "More Options"
more.TextColor3 = Color3.new(1, 1, 1)
more.TextSize = 18
more.TextWrapped = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Title.LayoutOrder = 1
Title.Position = UDim2.new(0.0186191779, 0, 1.27156582e-07, 0)
Title.Size = UDim2.new(0, 265, 0, 50)
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
Speednum.Position = UDim2.new(0, 0, 0.630999982, 0)
Speednum.Size = UDim2.new(0, 160, 0, 52)
Speednum.Font = Enum.Font.SourceSansBold
Speednum.PlaceholderColor3 = Color3.new(1, 1, 1)
Speednum.PlaceholderText = "Speed Number goes here"
Speednum.Text = "30"
Speednum.TextColor3 = Color3.new(1, 1, 1)
Speednum.TextSize = 22
Speednum.TextWrapped = true

otherFrame.Name = "otherFrame"
otherFrame.Parent = JailbreakGUI
otherFrame.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
otherFrame.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
otherFrame.Position = UDim2.new(0.514061332, 0, 0.551395953, 0)
otherFrame.Size = UDim2.new(0, 324, 0, 183)
otherFrame.Visible = false

switch.Name = "switch"
switch.Parent = otherFrame
switch.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
switch.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
switch.Position = UDim2.new(0.31862399, 0, 0.754811764, 0)
switch.Size = UDim2.new(0, 107, 0, 44)
switch.Font = Enum.Font.SourceSansBold
switch.Text = "Switch back"
switch.TextColor3 = Color3.new(1, 1, 1)
switch.TextSize = 18
switch.TextWrapped = true

RobberyNotifier.Name = "RobberyNotifier"
RobberyNotifier.Parent = otherFrame
RobberyNotifier.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
RobberyNotifier.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
RobberyNotifier.Position = UDim2.new(0.327883303, 0, 0, 0)
RobberyNotifier.Size = UDim2.new(0, 108, 0, 47)
RobberyNotifier.Font = Enum.Font.SourceSansBold
RobberyNotifier.Text = "Robbery Notifier"
RobberyNotifier.TextColor3 = Color3.new(1, 1, 1)
RobberyNotifier.TextSize = 16
RobberyNotifier.TextWrapped = true

gunshoptpbutton.Name = "gunshoptpbutton"
gunshoptpbutton.Parent = otherFrame
gunshoptpbutton.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
gunshoptpbutton.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
gunshoptpbutton.Position = UDim2.new(0.00126026291, 0, 0.263706565, 0)
gunshoptpbutton.Size = UDim2.new(0, 162, 0, 45)
gunshoptpbutton.Font = Enum.Font.SourceSansBold
gunshoptpbutton.Text = "Gunshop TP Enabled:"
gunshoptpbutton.TextColor3 = Color3.new(1, 1, 1)
gunshoptpbutton.TextSize = 16
gunshoptpbutton.TextWrapped = true

infiniteyeet.Name = "infiniteyeet"
infiniteyeet.Parent = otherFrame
infiniteyeet.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
infiniteyeet.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
infiniteyeet.Position = UDim2.new(0.663520157, 0, 0, 0)
infiniteyeet.Size = UDim2.new(0, 108, 0, 47)
infiniteyeet.Font = Enum.Font.SourceSansBold
infiniteyeet.Text = "Inf Yield"
infiniteyeet.TextColor3 = Color3.new(1, 1, 1)
infiniteyeet.TextSize = 16
infiniteyeet.TextWrapped = true

healguibutton.Name = "healguibutton"
healguibutton.Parent = otherFrame
healguibutton.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
healguibutton.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
healguibutton.Position = UDim2.new(0.497712135, 0, 0.263706565, 0)
healguibutton.Size = UDim2.new(0, 162, 0, 45)
healguibutton.Font = Enum.Font.SourceSansBold
healguibutton.Text = "Emergency Healing GUI"
healguibutton.TextColor3 = Color3.new(1, 1, 1)
healguibutton.TextSize = 16
healguibutton.TextWrapped = true

removeragdoll.Name = "removeragdoll"
removeragdoll.Parent = otherFrame
removeragdoll.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
removeragdoll.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
removeragdoll.Position = UDim2.new(0.00156788772, 0, 0, 0)
removeragdoll.Size = UDim2.new(0, 108, 0, 47)
removeragdoll.Font = Enum.Font.SourceSansBold
removeragdoll.Text = "Remove Ragdoll"
removeragdoll.TextColor3 = Color3.new(1, 1, 1)
removeragdoll.TextSize = 16
removeragdoll.TextWrapped = true

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

EmergencyHealing.Name = "EmergencyHealing"
EmergencyHealing.Parent = JailbreakGUI
EmergencyHealing.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
EmergencyHealing.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
EmergencyHealing.Position = UDim2.new(0.416544646, 0, 0.16787979, 0)
EmergencyHealing.Size = UDim2.new(0, 404, 0, 221)
EmergencyHealing.Visible = false

About.Name = "About"
About.Parent = EmergencyHealing
About.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
About.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
About.Size = UDim2.new(0, 404, 0, 46)
About.Font = Enum.Font.SourceSansBold
About.Text = "About to die? this GUI will let you teleport high up and let you heal yourself."
About.TextColor3 = Color3.new(1, 1, 1)
About.TextScaled = true
About.TextSize = 14
About.TextWrapped = true

Text1.Name = "Text1"
Text1.Parent = EmergencyHealing
Text1.BackgroundColor3 = Color3.new(1, 1, 1)
Text1.BackgroundTransparency = 1
Text1.Position = UDim2.new(0, 0, 0.208144799, 0)
Text1.Size = UDim2.new(0, 269, 0, 36)
Text1.Font = Enum.Font.SourceSansBold
Text1.Text = "You will begin the healing process when your health gets below:"
Text1.TextColor3 = Color3.new(1, 1, 1)
Text1.TextScaled = true
Text1.TextSize = 17
Text1.TextWrapped = true
Text1.TextXAlignment = Enum.TextXAlignment.Left
Text1.TextYAlignment = Enum.TextYAlignment.Bottom

LowHealth.Name = "LowHealth"
LowHealth.Parent = EmergencyHealing
LowHealth.BackgroundColor3 = Color3.new(0.431373, 0.431373, 0.972549)
LowHealth.BorderSizePixel = 0
LowHealth.Position = UDim2.new(0.672999978, 0, 0.211999997, 0)
LowHealth.Size = UDim2.new(0, 132, 0, 36)
LowHealth.Font = Enum.Font.SourceSansBold
LowHealth.PlaceholderColor3 = Color3.new(0, 0, 0)
LowHealth.PlaceholderText = "Low Health"
LowHealth.Text = ""
LowHealth.TextColor3 = Color3.new(0, 0, 0)
LowHealth.TextSize = 22
LowHealth.TextWrapped = true

Text2.Name = "Text2"
Text2.Parent = EmergencyHealing
Text2.BackgroundColor3 = Color3.new(1, 1, 1)
Text2.BackgroundTransparency = 1
Text2.Position = UDim2.new(0, 0, 0.416289598, 0)
Text2.Size = UDim2.new(0, 119, 0, 36)
Text2.Font = Enum.Font.SourceSansBold
Text2.Text = "Once your health regenerates to:"
Text2.TextColor3 = Color3.new(1, 1, 1)
Text2.TextScaled = true
Text2.TextSize = 17
Text2.TextWrapped = true
Text2.TextXAlignment = Enum.TextXAlignment.Left
Text2.TextYAlignment = Enum.TextYAlignment.Bottom

HigherHealth.Name = "HigherHealth"
HigherHealth.Parent = EmergencyHealing
HigherHealth.BackgroundColor3 = Color3.new(0.431373, 0.431373, 0.972549)
HigherHealth.BorderSizePixel = 0
HigherHealth.Position = UDim2.new(0.294554442, 0, 0.416289598, 0)
HigherHealth.Size = UDim2.new(0, 166, 0, 36)
HigherHealth.Font = Enum.Font.SourceSansBold
HigherHealth.PlaceholderColor3 = Color3.new(0, 0, 0)
HigherHealth.PlaceholderText = "Higher Health"
HigherHealth.Text = ""
HigherHealth.TextColor3 = Color3.new(0, 0, 0)
HigherHealth.TextSize = 22
HigherHealth.TextWrapped = true

Thendo.Name = "Thendo"
Thendo.Parent = EmergencyHealing
Thendo.BackgroundColor3 = Color3.new(1, 1, 1)
Thendo.BackgroundTransparency = 1
Thendo.Position = UDim2.new(0.705445588, 0, 0.416289598, 0)
Thendo.Size = UDim2.new(0, 119, 0, 36)
Thendo.Font = Enum.Font.SourceSansBold
Thendo.Text = "then"
Thendo.TextColor3 = Color3.new(1, 1, 1)
Thendo.TextSize = 22
Thendo.TextWrapped = true

Option1.Name = "Option1"
Option1.Parent = EmergencyHealing
Option1.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Option1.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Option1.Position = UDim2.new(0, 0, 0.626630127, 0)
Option1.Size = UDim2.new(0, 202, 0, 26)
Option1.Font = Enum.Font.SourceSansBold
Option1.Text = "Teleport me back to where I was: Y"
Option1.TextColor3 = Color3.new(0, 1, 0)
Option1.TextSize = 14
Option1.TextWrapped = true

Option2.Name = "Option2"
Option2.Parent = EmergencyHealing
Option2.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Option2.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Option2.Position = UDim2.new(0.5, 0, 0.626630127, 0)
Option2.Size = UDim2.new(0, 202, 0, 26)
Option2.Font = Enum.Font.SourceSansBold
Option2.Text = "Let me skydive to another location: N"
Option2.TextColor3 = Color3.new(1, 0, 0)
Option2.TextSize = 14
Option2.TextWrapped = true

Activatehealer.Name = "Activatehealer"
Activatehealer.Parent = EmergencyHealing
Activatehealer.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
Activatehealer.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
Activatehealer.Position = UDim2.new(0.21534653, 0, 0.828054309, 0)
Activatehealer.Size = UDim2.new(0, 115, 0, 38)
Activatehealer.Font = Enum.Font.SourceSansBold
Activatehealer.Text = "Set Values & Activate"
Activatehealer.TextColor3 = Color3.new(1, 1, 1)
Activatehealer.TextSize = 18
Activatehealer.TextWrapped = true

HideGui.Name = "HideGui"
HideGui.Parent = EmergencyHealing
HideGui.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.219608)
HideGui.BorderColor3 = Color3.new(0.431373, 0.431373, 0.972549)
HideGui.Position = UDim2.new(0.5, 0, 0.828054309, 0)
HideGui.Size = UDim2.new(0, 115, 0, 38)
HideGui.Font = Enum.Font.SourceSansBold
HideGui.Text = "Hide GUI"
HideGui.TextColor3 = Color3.new(1, 1, 1)
HideGui.TextSize = 18
HideGui.TextWrapped = true
-- Scripts:
function SCRIPT_MCVD81_FAKESCRIPT() -- JailbreakGUI.JBGUIScript 
	local script = Instance.new('LocalScript')
	script.Parent = JailbreakGUI
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
	local function notify(text, duration)
	if not duration then duration = 2 end
	local notiftime = 0
	for i = 1, text:len() do
	notiftime = notiftime + 0.03
	end
	local n = require(game:GetService("ReplicatedStorage").Game.Notification)
	n.new({["Text"] = text,["Duration"] = notiftime + duration})
	end
	local Changed = function(part, PropertyName, func)
	    local current = part[PropertyName]
	    coroutine.resume(coroutine.create(function()
	        while true do
	            repeat game.RunService.RenderStepped:wait() until part[PropertyName] ~= current
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
	local ws = {}
	ws.number = 30
	local plrs = game.Players
	local lplr = plrs.LocalPlayer
	local mouse = lplr:GetMouse()
	local jewel = workspace.Jewelrys:FindFirstChildOfClass("Model")
	local bank = workspace.Banks:FindFirstChildOfClass("Model")
	if syn.protect_gui then
	syn.protect_gui(script.Parent)
	end
	notify("Made certain notifications not take a long time to go away.", 3)
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
	local backupparts = {}
	for i,part in pairs(workspace.TouchTrigger:GetChildren()) do
	if part:IsA("BasePart") then
		part.Size = Vector3.new(1,1,1)
		backupparts[part.Name] = part
	end
	end
		workspace.TouchTrigger.ChildRemoved:connect(function(child)
				local d2 = backupparts[child.Name]:Clone()
				d2.Parent = workspace.TouchTrigger
		end)
	function walcc()
	lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
	if lplr.Character.Humanoid.WalkSpeed == 0 then
	    lplr.Character.Humanoid.WalkSpeed = ws.number
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
	local mainframe = script.Parent.MainFrame
	local HoldEBypass = false
	local gunshoptp = false
	game.RunService.RenderStepped:connect(function()
		for i,a in pairs(require(game.ReplicatedStorage.Module.UI).CircleAction.Specs) do
		if a.Duration ~= false and HoldEBypass then
		   a.Timed = false;
		end
		end
	end)
	mainframe.GravToggle.Text = "Gravity Toggle / Current: "..tostring(math.floor(workspace.Gravity))
	Changed(workspace, "Gravity", function(grav)
	mainframe.GravToggle.Text = "Gravity Toggle / Current: "..tostring(grav)
	end)
	mainframe.GravToggle.MouseButton1Click:connect(function()
	if math.floor(workspace.Gravity) == 196 then
	workspace.Gravity = 0
	elseif workspace.Gravity == 0 then
	workspace.Gravity = 196
	end
	end)
	mainframe.X.MouseButton1Click:connect(function()
	mainframe.Parent:Destroy()
	end)
	mainframe.aimbot.MouseButton1Click:connect(function()
	mainframe.Parent.Confirmation.Visible = true
	end)
	local BriefcaseESP = false
	mainframe.briefcase.MouseButton1Click:connect(function()
		if not BriefcaseESP then
		BriefcaseESP = true
	local function gui(child)
	if child.Name == "Drop" then
	child:WaitForChild("Briefcase")
	local briefcase = child.Briefcase
	local BillboardGui = Instance.new("BillboardGui")
	local TextButton = Instance.new("TextButton")
	--Properties:
	BillboardGui.Parent = briefcase
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
	TextButton.Text = "Briefcase | Distance:"
	TextButton.TextColor3 = Color3.new(1, 1, 1)
	TextButton.TextSize = 22
	TextButton.TextStrokeTransparency = 0
	game.RunService.RenderStepped:connect(function()
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
	TextButton.Text = "Briefcase | Distance: "..FormatNumber(math.floor(lplr:DistanceFromCharacter(briefcase.Position)))
	end)
	end
	end
	for i,v in pairs(workspace:GetChildren()) do gui(v) end
	workspace.ChildAdded:connect(gui)
	end
	end)
	local barbedwireshacked = false
	local itemconfig = game.ReplicatedStorage.Game.ItemConfig
	function changegunstats(Table)
	for i,v in pairs(itemconfig:GetChildren()) do
	local gun = require(v)
	if v.Name == "Shotgun" then
	gun.BulletSpread = 0.02
	end
	for prefix, value in pairs(Table) do
	gun[prefix] = value
	end
	end
	end
	mainframe.gunmod.MouseButton1Click:connect(function()
	changegunstats({["CamShakeMagnitude"] = 0,["FireAuto"] = true})
	local g = require(game.ReplicatedStorage.Game.ItemConfig.Grenade)
	g.ReloadTime = 0
	g.FuseTime = 0.8
	end)
	mainframe.hacklasers.MouseButton1Click:connect(function()
	local lights = workspace.Museum.Lights
	local function remove(part)
	part.Size = Vector3.new(1,1,1)
	part.CFrame = CFrame.new()
	end
	local floor = jewel.Floors:FindFirstChildOfClass("Model")
	for i,v in pairs(floor:GetChildren()) do
	for a,p in pairs(v:GetChildren()) do
	if p.Name == "Lasers" or p.Name == "Laser" then
	for c,x in pairs(p:GetDescendants()) do
	if x:IsA("BasePart") then
	remove(x)
	end
	end
	end
	end
	end
	local layout = bank.Layout:FindFirstChildOfClass("Model")
	if layout:FindFirstChild("Lasers") then
	layout.Lasers:Destroy()
	end
	for i,v in pairs(lights:GetChildren()) do
	v.Light.Size = Vector3.new(1,1,1)
		end
		if not barbedwireshacked then
			barbedwireshacked = true
	for i,v in pairs(workspace:GetDescendants()) do
	if v.Name == "BarbedWire" then
					v.Size = Vector3.new(1,1,1)
	end
	end
	end
	end)
	mainframe.holdebypass.MouseButton1Click:connect(function()
	if not HoldEBypass then
	HoldEBypass = true
	notify("Hold E Bypass enabled. Script by Interpreter on V3rmillion, inf looped by me.")
	end
	end)
	mainframe.more.MouseButton1Click:connect(function()
		local gui = mainframe.Parent
		gui.MainFrame.Visible = false
		gui.otherFrame.Visible = true
	end)
	mainframe.speed.MouseButton1Click:Connect(function()
	mainframe.speed.Visible = false
	mainframe.Speednum.Visible = true
	local function speedhack()
	lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
	if lplr.Character.Humanoid.WalkSpeed ~= ws then
	    lplr.Character.Humanoid.WalkSpeed = ws.number
	end
	end)
	lplr.Character.Humanoid.Running:connect(function()
	lplr.Character.Humanoid.WalkSpeed = ws.number
	end)
	end
	if not _G.SpeedBypass then
	_G.SpeedBypass = true
	speedhack()
	lplr.CharacterAdded:connect(function(chr)
	chr:WaitForChild("Humanoid")
	speedhack()
	end)
	notify("To edit your walkspeed, scroll up/down on the number in the textbox (max 150).", 4)
	end
	mainframe.Speednum.MouseWheelForward:connect(function()
	ws.number = ws.number + 5
	end)
	mainframe.Speednum.MouseWheelBackward:connect(function()
	ws.number = ws.number - 5
	end)
	Changed(ws, "number", function(num)
	if num > 150 then
	ws.number = 150
	end
	if num < 0 then
	ws.number = 0
	end
	mainframe.Speednum.Text = tostring(ws.number)
	end)
	Changed(mainframe.Speednum, "Text", function(txt)
	if tonumber(txt) then
	ws.number = tonumber(txt)
	end
	end)
	end)
	local dests = {}
	local DestinationNames = {}
	local Prisonpart = Instance.new("Part")
	Prisonpart.CFrame = CFrame.new() + Vector3.new(-1170.85, 18, -1388.4)
	local Jetpackpart = Instance.new("Part")
	Jetpackpart.CFrame = CFrame.new() + Vector3.new(1390.17, 170, 2600.83)
	local DonutShop = Instance.new("Part")
	DonutShop.CFrame = CFrame.new() + Vector3.new(96.2, 22,-1509.2)
	local gunshop1 = Instance.new("Part")
	local gunshop2 = Instance.new("Part")
	gunshop1.CFrame = CFrame.new() + Vector3.new(379.7, 22, 530.6)
	gunshop2.CFrame = CFrame.new() + Vector3.new(-5, 22, -1775.74)
	local mbase = Instance.new("Part")
	mbase.CFrame = CFrame.new() + Vector3.new(819, 22,-279)
	local Destination = false
	dests.pp = {workspace.PowerPlant.Spawns.Spawn, "powerplant"}
	dests.jewel = {jewel.TeleportCriminals.Part, "jewelry store"}
	dests.bank = {bank.TeleportCriminals.Part, "bank"}
	dests.cplane = {workspace.AirportCrates.Talkie, "cargo plane"}
	dests.msm = {workspace.Museum.Spawns.Spawn, "museum"}
	dests.gas = {workspace.GasStations:GetChildren()[1].Region, "gas station"}
	dests.prison = {Prisonpart, "prison"}
	dests.base1 = {workspace.Collect.CollectBase1, "city criminal base"}
	dests.base2 = {workspace.Collect.CollectBase2, "volcano criminal base"}
	dests.jetpack = {Jetpackpart, "jetpack"}
	dests.donut = {DonutShop, "donut shop"}
	dests.briefcase = {game, "briefcase"}
	dests.gunshop1 = {gunshop1, "city gun shop"}
	dests.gunshop2 = {gunshop2, "other gun shop"}
	dests.mbase = {mbase, "military base"}
	for i,v in pairs(dests) do
	table.insert(DestinationNames, i)
	end
	table.sort(DestinationNames)
	local ConfGUI = script.Parent.Confirmation
	ConfGUI.No.MouseButton1Click:connect(function()
	ConfGUI.Parent.Confirmation.Visible = false
	end)
	ConfGUI.Yes.MouseButton1Click:connect(function()
	ConfGUI.Parent.Confirmation.Visible = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/Aimbot.lua"))()
	end)
	local frame2 = script.Parent.otherFrame
	local RobberyNotifier = false
	local robtitle = "RedWire's Robbery Notifier"
	frame2.RobberyNotifier.MouseButton1Click:connect(function()
		if not RobberyNotifier then
		RobberyNotifier = true
	local IconIds = {["bank truck"] = "6133383545",["gas station"] = "4643750797",["donut shop"] = "4643750660", ["museum"] = "4643749917", ["tomb"] = "6896911415"}
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
	frame2.infiniteyeet.MouseButton1Click:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
	local ragdollremoved = false
	frame2.removeragdoll.MouseButton1Click:connect(function()
	if not ragdollremoved then
	ragdollremoved = true
	require(game.ReplicatedStorage.Module.AlexRagdoll).Ragdoll = nil
	notify("Ragdoll is no more.")
	end
	end)
	frame2.switch.MouseButton1Down:connect(function()
	local gui = frame2.Parent
	gui.otherFrame.Visible = false
	gui.MainFrame.Visible = true
	end)
	frame2.gunshoptpbutton.Text = "Gunshop TP enabled: "..tostring(gunshoptp)
	game.RunService.Heartbeat:connect(function()
		local hrpvalid, hrp = pcall(function()
		return lplr.Character.HumanoidRootPart
		end)
		if hrpvalid and gunshoptp then
	hrp.CFrame = CFrame.new() + Vector3.new(418.439, 18, 520)
	end
	end)
	frame2.gunshoptpbutton.MouseButton1Click:connect(function()
	if gunshoptp then
	gunshoptp = false
	else
	gunshoptp = true
	end
	frame2.gunshoptpbutton.Text = "Gunshop TP enabled: "..tostring(gunshoptp)
	end)
	local healgui = script.Parent.EmergencyHealing
	local TPBackEnabled = true
	local SkydiveEnabled = false
	local lowhealth
	local higherhealth
	local healscripton = false
	function EmergencyHealingScript(chr)
	coroutine.resume(coroutine.create(function()
	local beginprocess = false
	chr:WaitForChild("Humanoid")
	chr:WaitForChild("HumanoidRootPart")
	local CFrameY
	Changed(chr.Humanoid, "Health", function(newhealth)
	if newhealth <= lowhealth and not beginprocess then
	beginprocess = true
	CFrameY = chr.HumanoidRootPart.CFrame.Y
	chr.HumanoidRootPart.CFrame = chr.HumanoidRootPart.CFrame + Vector3.new(0,1000,0)
	local part = Instance.new("Part", workspace)
	part.CFrame = chr.HumanoidRootPart.CFrame + Vector3.new(0,-5,0)
	part.Size = Vector3.new(9,1,9)
	part.Anchored = true
	repeat wait() until chr.Humanoid.Health >= higherhealth
	if SkydiveEnabled then
	part:Destroy()
	end
	if TPBackEnabled then
	part:Destroy()
	chr.HumanoidRootPart.CFrame = CFrame.new(chr.HumanoidRootPart.CFrame.X, CFrameY, chr.HumanoidRootPart.CFrame.Z)
	end
	beginprocess = false
	end
	end)
	end))
	end
	healgui.Activatehealer.MouseButton1Click:connect(function()
	if not healscripton then
	healscripton = true
	lowhealth = tonumber(healgui.LowHealth.Text)
	higherhealth = tonumber(healgui.HigherHealth.Text)
	EmergencyHealingScript(lplr.Character)
	lplr.CharacterAdded:connect(EmergencyHealingScript)
	else
	lowhealth = tonumber(healgui.LowHealth.Text)
	higherhealth = tonumber(healgui.HigherHealth.Text)
	end
	end)
	healgui.Option1.MouseButton1Click:connect(function()
	local option1 = healgui.Option1
	local option2 = healgui.Option2
	if TPBackEnabled then
	TPBackEnabled = false
	SkydiveEnabled = true
	option1.Text = "Teleport me back to where I was: N"
	option1.TextColor3 = Color3.new(1,0,0)
	option2.Text = "Let me skydive to another location: Y"
	option2.TextColor3 = Color3.new(0,1,0)
	else
	TPBackEnabled = true
	SkydiveEnabled = false
	option1.Text = "Teleport me back to where I was: Y"
	option1.TextColor3 = Color3.new(0,1,0)
	option2.Text = "Let me skydive to another location: N"
	option2.TextColor3 = Color3.new(1,0,0)
	end
	end)
	healgui.Option2.MouseButton1Click:connect(function()
	local option1 = healgui.Option1
	local option2 = healgui.Option2
	if not SkydiveEnabled then
	TPBackEnabled = false
	SkydiveEnabled = true
	option1.Text = "Teleport me back to where I was: N"
	option1.TextColor3 = Color3.new(1,0,0)
	option2.Text = "Let me skydive to another location: Y"
	option2.TextColor3 = Color3.new(0,1,0)
	else
	TPBackEnabled = true
	SkydiveEnabled = false
	option1.Text = "Teleport me back to where I was: Y"
	option1.TextColor3 = Color3.new(0,1,0)
	option2.Text = "Let me skydive to another location: N"
	option2.TextColor3 = Color3.new(1,0,0)
	end
	end)
	frame2.healguibutton.MouseButton1Click:connect(function()
	healgui.Visible = true
	end)
	healgui.HideGui.MouseButton1Click:connect(function()
	healgui.Visible = false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_MCVD81_FAKESCRIPT))
