-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Aimbot = Instance.new("ScreenGui")
local MFrame = Instance.new("Frame")
local X = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local ChosenPlayerTitle = Instance.new("TextLabel")
local ChosenPlayer = Instance.new("TextLabel")
local Settings = Instance.new("TextButton")
local Manager = Instance.new("TextButton")
local StatusTitle = Instance.new("TextLabel")
local Status = Instance.new("TextButton")
local ManagerUI = Instance.new("Frame")
local WhitelistedInstances = Instance.new("ScrollingFrame")
local whitelistframe = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local WhitelistToggle = Instance.new("TextButton")
local PriorityToggle = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local hide = Instance.new("TextButton")
local searchbar = Instance.new("TextBox")
local Title_2 = Instance.new("TextLabel")
local whitelistlable = Instance.new("TextLabel")
local prioritylable = Instance.new("TextLabel")
local typelabel = Instance.new("TextLabel")
local SettingsUI = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local X_2 = Instance.new("TextButton")
local Target = Instance.new("TextLabel")
local value = Instance.new("TextButton")
local AutoTarget = Instance.new("TextLabel")
local value_2 = Instance.new("TextButton")
local FPEnabled = Instance.new("TextLabel")
local value_3 = Instance.new("TextButton")
local OwnTeamWhitelisted = Instance.new("TextLabel")
local value_4 = Instance.new("TextButton")
local SaveSettings = Instance.new("TextButton")
local SwitchToKeybinds = Instance.new("TextButton")
local MaxStuds = Instance.new("TextLabel")
local value_5 = Instance.new("TextBox")
local AimAdjust = Instance.new("TextLabel")
local value_6 = Instance.new("TextBox")
local WhitelistFriends = Instance.new("TextLabel")
local value_7 = Instance.new("TextButton")
local KeybindUI = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local AimbotToggle = Instance.new("TextLabel")
local value_8 = Instance.new("TextButton")
local reset = Instance.new("TextButton")
local ChangeTargetedPart = Instance.new("TextLabel")
local value_9 = Instance.new("TextButton")
local reset_2 = Instance.new("TextButton")
local SwitchToSettings = Instance.new("TextButton")
--Properties:
Aimbot.Name = "Aimbot"
Aimbot.Parent = game.CoreGui
Aimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MFrame.Name = "MFrame"
MFrame.Parent = Aimbot
MFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MFrame.BorderColor3 = Color3.new(0.333333, 1, 0)
MFrame.Position = UDim2.new(0.663364828, 0, 0.163820162, 0)
MFrame.Size = UDim2.new(0, 260, 0, 248)

X.Name = "X"
X.Parent = MFrame
X.BackgroundColor3 = Color3.new(0, 0, 0)
X.BorderColor3 = Color3.new(0.333333, 1, 0)
X.Position = UDim2.new(0.823076904, 0, 0, 0)
X.Size = UDim2.new(0, 46, 0, 44)
X.Font = Enum.Font.Highway
X.Text = "×"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

Title.Name = "Title"
Title.Parent = MFrame
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.new(0.333333, 1, 0)
Title.Size = UDim2.new(0, 214, 0, 44)
Title.Font = Enum.Font.Highway
Title.Text = "RedWire's Universal Aimbot"
Title.TextColor3 = Color3.new(0.333333, 1, 0)
Title.TextScaled = true
Title.TextSize = 18
Title.TextWrapped = true

ChosenPlayerTitle.Name = "ChosenPlayerTitle"
ChosenPlayerTitle.Parent = MFrame
ChosenPlayerTitle.BackgroundColor3 = Color3.new(0, 0, 0)
ChosenPlayerTitle.BackgroundTransparency = 1
ChosenPlayerTitle.BorderColor3 = Color3.new(0.333333, 1, 0)
ChosenPlayerTitle.BorderSizePixel = 0
ChosenPlayerTitle.Position = UDim2.new(0, 0, 0.378930986, 0)
ChosenPlayerTitle.Size = UDim2.new(0, 259, 0, 29)
ChosenPlayerTitle.Font = Enum.Font.Highway
ChosenPlayerTitle.Text = "Chosen Player:"
ChosenPlayerTitle.TextColor3 = Color3.new(0.333333, 1, 0)
ChosenPlayerTitle.TextScaled = true
ChosenPlayerTitle.TextSize = 14
ChosenPlayerTitle.TextWrapped = true
ChosenPlayerTitle.TextXAlignment = Enum.TextXAlignment.Left

ChosenPlayer.Name = "ChosenPlayer"
ChosenPlayer.Parent = MFrame
ChosenPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
ChosenPlayer.BackgroundTransparency = 1
ChosenPlayer.BorderColor3 = Color3.new(0, 0.666667, 0)
ChosenPlayer.BorderSizePixel = 0
ChosenPlayer.Position = UDim2.new(-0.00548095722, 0, 0.499898672, 0)
ChosenPlayer.Size = UDim2.new(0, 260, 0, 29)
ChosenPlayer.Font = Enum.Font.Highway
ChosenPlayer.Text = "none"
ChosenPlayer.TextColor3 = Color3.new(0.333333, 1, 0)
ChosenPlayer.TextScaled = true
ChosenPlayer.TextSize = 14
ChosenPlayer.TextWrapped = true
ChosenPlayer.TextXAlignment = Enum.TextXAlignment.Left

Settings.Name = "Settings"
Settings.Parent = MFrame
Settings.BackgroundColor3 = Color3.new(0, 0, 0)
Settings.BorderColor3 = Color3.new(0.333333, 1, 0)
Settings.Position = UDim2.new(0, 0, 0.654240847, 0)
Settings.Size = UDim2.new(0, 260, 0, 38)
Settings.Font = Enum.Font.Highway
Settings.Text = "Manage Settings"
Settings.TextColor3 = Color3.new(0.333333, 1, 0)
Settings.TextSize = 28
Settings.TextWrapped = true

Manager.Name = "Manager"
Manager.Parent = MFrame
Manager.BackgroundColor3 = Color3.new(0, 0, 0)
Manager.BorderColor3 = Color3.new(0.333333, 1, 0)
Manager.Position = UDim2.new(0, 0, 0.807580113, 0)
Manager.Size = UDim2.new(0, 260, 0, 38)
Manager.Font = Enum.Font.Highway
Manager.Text = "Manage Teams/Players"
Manager.TextColor3 = Color3.new(0.333333, 1, 0)
Manager.TextSize = 28
Manager.TextWrapped = true

StatusTitle.Name = "StatusTitle"
StatusTitle.Parent = MFrame
StatusTitle.BackgroundColor3 = Color3.new(0, 0, 0)
StatusTitle.BackgroundTransparency = 1
StatusTitle.BorderColor3 = Color3.new(0, 0.666667, 0)
StatusTitle.BorderSizePixel = 0
StatusTitle.Position = UDim2.new(-0.00548095722, 0, 0.213608384, 0)
StatusTitle.Size = UDim2.new(0, 260, 0, 29)
StatusTitle.Font = Enum.Font.Highway
StatusTitle.Text = "Aimbot status:"
StatusTitle.TextColor3 = Color3.new(0.333333, 1, 0)
StatusTitle.TextScaled = true
StatusTitle.TextSize = 14
StatusTitle.TextWrapped = true
StatusTitle.TextXAlignment = Enum.TextXAlignment.Left

Status.Name = "Status"
Status.Parent = MFrame
Status.BackgroundColor3 = Color3.new(0, 0, 0)
Status.BackgroundTransparency = 1
Status.BorderColor3 = Color3.new(0.333333, 1, 0)
Status.Position = UDim2.new(0.587000012, 0, 0.214000002, 0)
Status.Size = UDim2.new(0, 106, 0, 29)
Status.Font = Enum.Font.Highway
Status.Text = "disabled"
Status.TextColor3 = Color3.new(1, 0, 0)
Status.TextSize = 28
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Right

ManagerUI.Name = "ManagerUI"
ManagerUI.Parent = Aimbot
ManagerUI.BackgroundColor3 = Color3.new(0, 0, 0)
ManagerUI.BorderColor3 = Color3.new(0.333333, 1, 0)
ManagerUI.BorderSizePixel = 2
ManagerUI.Position = UDim2.new(0.319356978, 0, 0.110677086, 0)
ManagerUI.Size = UDim2.new(0, 460, 0, 269)
ManagerUI.Visible = false

WhitelistedInstances.Name = "WhitelistedInstances"
WhitelistedInstances.Parent = ManagerUI
WhitelistedInstances.Active = true
WhitelistedInstances.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistedInstances.BorderColor3 = Color3.new(0.333333, 1, 0)
WhitelistedInstances.Position = UDim2.new(0, 0, 0.359999865, 0)
WhitelistedInstances.Size = UDim2.new(0, 460, 0, 172)
WhitelistedInstances.CanvasSize = UDim2.new(0, 0, 0.140000001, 0)

whitelistframe.Name = "whitelistframe"
whitelistframe.Parent = WhitelistedInstances
whitelistframe.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistframe.BorderColor3 = Color3.new(0.333333, 1, 0)
whitelistframe.Size = UDim2.new(0, 445, 0, 37)
whitelistframe.Visible = false

TextLabel.Parent = whitelistframe
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 235, 0, 37)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "sample text lmao"
TextLabel.TextColor3 = Color3.new(0.333333, 1, 0)
TextLabel.TextSize = 18
TextLabel.TextWrapped = true

WhitelistToggle.Name = "WhitelistToggle"
WhitelistToggle.Parent = whitelistframe
WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
WhitelistToggle.BackgroundTransparency = 1
WhitelistToggle.Position = UDim2.new(0.846153855, 0, 0, 0)
WhitelistToggle.Size = UDim2.new(0, 68, 0, 37)
WhitelistToggle.Font = Enum.Font.Highway
WhitelistToggle.Text = "No"
WhitelistToggle.TextColor3 = Color3.new(1, 0, 0)
WhitelistToggle.TextSize = 22
WhitelistToggle.TextWrapped = true

PriorityToggle.Name = "PriorityToggle"
PriorityToggle.Parent = whitelistframe
PriorityToggle.BackgroundColor3 = Color3.new(1, 1, 1)
PriorityToggle.BackgroundTransparency = 1
PriorityToggle.Position = UDim2.new(0.530669451, 0, 0, 0)
PriorityToggle.Size = UDim2.new(0, 119, 0, 37)
PriorityToggle.Visible = false
PriorityToggle.Font = Enum.Font.Highway
PriorityToggle.Text = "No"
PriorityToggle.TextColor3 = Color3.new(1, 0, 0)
PriorityToggle.TextSize = 22
PriorityToggle.TextWrapped = true

UIListLayout.Parent = WhitelistedInstances
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

hide.Name = "hide"
hide.Parent = ManagerUI
hide.BackgroundColor3 = Color3.new(0, 0, 0)
hide.BorderColor3 = Color3.new(0.333333, 1, 0)
hide.Position = UDim2.new(0.804481864, 0, 0, 0)
hide.Size = UDim2.new(0, 89, 0, 29)
hide.Font = Enum.Font.Highway
hide.Text = "Close"
hide.TextColor3 = Color3.new(1, 0, 0)
hide.TextScaled = true
hide.TextSize = 14
hide.TextWrapped = true

searchbar.Name = "searchbar"
searchbar.Parent = ManagerUI
searchbar.BackgroundColor3 = Color3.new(0, 0, 0)
searchbar.BorderColor3 = Color3.new(0.333333, 1, 0)
searchbar.Position = UDim2.new(0, 0, 0.111524165, 0)
searchbar.Size = UDim2.new(0, 459, 0, 33)
searchbar.Font = Enum.Font.Highway
searchbar.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
searchbar.PlaceholderText = "Filter Scrolling Frame results"
searchbar.Text = ""
searchbar.TextColor3 = Color3.new(0.333333, 1, 0)
searchbar.TextScaled = true
searchbar.TextSize = 14
searchbar.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = ManagerUI
Title_2.BackgroundColor3 = Color3.new(0, 0, 0)
Title_2.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_2.Size = UDim2.new(0, 370, 0, 29)
Title_2.Font = Enum.Font.Highway
Title_2.Text = "Aimbot Manager"
Title_2.TextColor3 = Color3.new(0.333333, 1, 0)
Title_2.TextScaled = true
Title_2.TextSize = 14
Title_2.TextWrapped = true

whitelistlable.Name = "whitelistlable"
whitelistlable.Parent = ManagerUI
whitelistlable.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistlable.BorderColor3 = Color3.new(0.333333, 1, 0)
whitelistlable.Position = UDim2.new(0.746994019, 0, 0.241635695, 0)
whitelistlable.Size = UDim2.new(0, 115, 0, 29)
whitelistlable.Font = Enum.Font.Highway
whitelistlable.Text = "Is Whitelisted"
whitelistlable.TextColor3 = Color3.new(0.333333, 1, 0)
whitelistlable.TextScaled = true
whitelistlable.TextSize = 14
whitelistlable.TextWrapped = true

prioritylable.Name = "prioritylable"
prioritylable.Parent = ManagerUI
prioritylable.BackgroundColor3 = Color3.new(0, 0, 0)
prioritylable.BorderColor3 = Color3.new(0.333333, 1, 0)
prioritylable.Position = UDim2.new(0.507863581, 0, 0.24163568, 0)
prioritylable.Size = UDim2.new(0, 110, 0, 29)
prioritylable.Font = Enum.Font.Highway
prioritylable.Text = "Is Prioritized"
prioritylable.TextColor3 = Color3.new(0.333333, 1, 0)
prioritylable.TextScaled = true
prioritylable.TextSize = 14
prioritylable.TextWrapped = true

typelabel.Name = "typelabel"
typelabel.Parent = ManagerUI
typelabel.BackgroundColor3 = Color3.new(0, 0, 0)
typelabel.BorderColor3 = Color3.new(0.333333, 1, 0)
typelabel.Position = UDim2.new(0, 0, 0.241635695, 0)
typelabel.Size = UDim2.new(0, 234, 0, 29)
typelabel.Font = Enum.Font.Highway
typelabel.Text = "Player/Team Name"
typelabel.TextColor3 = Color3.new(0.333333, 1, 0)
typelabel.TextScaled = true
typelabel.TextSize = 14
typelabel.TextWrapped = true

SettingsUI.Name = "SettingsUI"
SettingsUI.Parent = Aimbot
SettingsUI.BackgroundColor3 = Color3.new(0, 0, 0)
SettingsUI.BorderColor3 = Color3.new(0.333333, 1, 0)
SettingsUI.Position = UDim2.new(0.472395837, 0, 0.11203704, 0)
SettingsUI.Size = UDim2.new(0, 289, 0, 561)
SettingsUI.Visible = false

Title_3.Name = "Title"
Title_3.Parent = SettingsUI
Title_3.BackgroundColor3 = Color3.new(0, 0, 0)
Title_3.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_3.Size = UDim2.new(0, 242, 0, 45)
Title_3.Font = Enum.Font.Highway
Title_3.Text = "Settings"
Title_3.TextColor3 = Color3.new(0.333333, 1, 0)
Title_3.TextScaled = true
Title_3.TextSize = 14
Title_3.TextWrapped = true

X_2.Name = "X"
X_2.Parent = SettingsUI
X_2.BackgroundColor3 = Color3.new(0, 0, 0)
X_2.BorderColor3 = Color3.new(0.333333, 1, 0)
X_2.Position = UDim2.new(0.837431252, 0, 0, 0)
X_2.Size = UDim2.new(0, 46, 0, 45)
X_2.Font = Enum.Font.Highway
X_2.Text = "Close"
X_2.TextColor3 = Color3.new(1, 0, 0)
X_2.TextScaled = true
X_2.TextSize = 14
X_2.TextWrapped = true

Target.Name = "Target"
Target.Parent = SettingsUI
Target.BackgroundColor3 = Color3.new(0, 0, 0)
Target.BackgroundTransparency = 1
Target.BorderColor3 = Color3.new(0, 0.666667, 0)
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0, 0, 0.0769153982, 0)
Target.Size = UDim2.new(0, 169, 0, 28)
Target.Font = Enum.Font.Highway
Target.Text = "Targeted Part:"
Target.TextColor3 = Color3.new(0.333333, 1, 0)
Target.TextSize = 24
Target.TextXAlignment = Enum.TextXAlignment.Left

value.Name = "value"
value.Parent = Target
value.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value.BorderColor3 = Color3.new(0.333333, 1, 0)
value.Position = UDim2.new(0, 0, 0.998714447, 0)
value.Size = UDim2.new(0, 288, 0, 28)
value.Font = Enum.Font.Highway
value.Text = "Head"
value.TextColor3 = Color3.new(0.333333, 1, 0)
value.TextSize = 24
value.TextXAlignment = Enum.TextXAlignment.Left

AutoTarget.Name = "AutoTarget"
AutoTarget.Parent = SettingsUI
AutoTarget.BackgroundColor3 = Color3.new(0, 0, 0)
AutoTarget.BackgroundTransparency = 1
AutoTarget.BorderColor3 = Color3.new(0, 0.666667, 0)
AutoTarget.BorderSizePixel = 0
AutoTarget.Position = UDim2.new(-0.00295857992, 0, 0.177647993, 0)
AutoTarget.Size = UDim2.new(0, 169, 0, 28)
AutoTarget.Font = Enum.Font.Highway
AutoTarget.Text = "Auto-Targeting Enabled:"
AutoTarget.TextColor3 = Color3.new(0.333333, 1, 0)
AutoTarget.TextSize = 24
AutoTarget.TextXAlignment = Enum.TextXAlignment.Left

value_2.Name = "value"
value_2.Parent = AutoTarget
value_2.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_2.BorderColor3 = Color3.new(0.333333, 1, 0)
value_2.Position = UDim2.new(0.00591752073, 0, 0.998713911, 0)
value_2.Size = UDim2.new(0, 288, 0, 28)
value_2.Font = Enum.Font.Highway
value_2.Text = "true"
value_2.TextColor3 = Color3.new(0.333333, 1, 0)
value_2.TextSize = 24
value_2.TextXAlignment = Enum.TextXAlignment.Left

FPEnabled.Name = "FPEnabled"
FPEnabled.Parent = SettingsUI
FPEnabled.BackgroundColor3 = Color3.new(0, 0, 0)
FPEnabled.BackgroundTransparency = 1
FPEnabled.BorderColor3 = Color3.new(0, 0.666667, 0)
FPEnabled.BorderSizePixel = 0
FPEnabled.Position = UDim2.new(-0.00295857992, 0, 0.276904285, 0)
FPEnabled.Size = UDim2.new(0, 169, 0, 28)
FPEnabled.Font = Enum.Font.Highway
FPEnabled.Text = "First Person Mode Enabled:"
FPEnabled.TextColor3 = Color3.new(0.333333, 1, 0)
FPEnabled.TextSize = 24
FPEnabled.TextXAlignment = Enum.TextXAlignment.Left

value_3.Name = "value"
value_3.Parent = FPEnabled
value_3.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_3.BorderColor3 = Color3.new(0.333333, 1, 0)
value_3.Position = UDim2.new(0.00591752073, 0, 0.998713911, 0)
value_3.Size = UDim2.new(0, 288, 0, 28)
value_3.Font = Enum.Font.Highway
value_3.Text = "true"
value_3.TextColor3 = Color3.new(0.333333, 1, 0)
value_3.TextSize = 24
value_3.TextXAlignment = Enum.TextXAlignment.Left

OwnTeamWhitelisted.Name = "OwnTeamWhitelisted"
OwnTeamWhitelisted.Parent = SettingsUI
OwnTeamWhitelisted.BackgroundColor3 = Color3.new(0, 0, 0)
OwnTeamWhitelisted.BackgroundTransparency = 1
OwnTeamWhitelisted.BorderColor3 = Color3.new(0, 0.666667, 0)
OwnTeamWhitelisted.BorderSizePixel = 0
OwnTeamWhitelisted.Position = UDim2.new(-0.00295857992, 0, 0.375213265, 0)
OwnTeamWhitelisted.Size = UDim2.new(0, 169, 0, 28)
OwnTeamWhitelisted.Font = Enum.Font.Highway
OwnTeamWhitelisted.Text = "Whitelist own team:"
OwnTeamWhitelisted.TextColor3 = Color3.new(0.333333, 1, 0)
OwnTeamWhitelisted.TextSize = 24
OwnTeamWhitelisted.TextXAlignment = Enum.TextXAlignment.Left

value_4.Name = "value"
value_4.Parent = OwnTeamWhitelisted
value_4.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_4.BorderColor3 = Color3.new(0.333333, 1, 0)
value_4.Position = UDim2.new(0.00591752073, 0, 0.962999642, 0)
value_4.Size = UDim2.new(0, 288, 0, 28)
value_4.Font = Enum.Font.Highway
value_4.Text = "true"
value_4.TextColor3 = Color3.new(0.333333, 1, 0)
value_4.TextSize = 24
value_4.TextXAlignment = Enum.TextXAlignment.Left

SaveSettings.Name = "SaveSettings"
SaveSettings.Parent = SettingsUI
SaveSettings.BackgroundColor3 = Color3.new(0, 0, 0)
SaveSettings.BorderColor3 = Color3.new(0.333333, 1, 0)
SaveSettings.Position = UDim2.new(0.210458443, 0, 0.916242361, 0)
SaveSettings.Size = UDim2.new(0, 168, 0, 46)
SaveSettings.Font = Enum.Font.Highway
SaveSettings.Text = "Save Settings"
SaveSettings.TextColor3 = Color3.new(0.333333, 1, 0)
SaveSettings.TextScaled = true
SaveSettings.TextSize = 24
SaveSettings.TextWrapped = true

SwitchToKeybinds.Name = "SwitchToKeybinds"
SwitchToKeybinds.Parent = SettingsUI
SwitchToKeybinds.BackgroundColor3 = Color3.new(0, 0, 0)
SwitchToKeybinds.BorderColor3 = Color3.new(0.333333, 1, 0)
SwitchToKeybinds.Position = UDim2.new(0.210458443, 0, 0.833478212, 0)
SwitchToKeybinds.Size = UDim2.new(0, 168, 0, 46)
SwitchToKeybinds.Font = Enum.Font.Highway
SwitchToKeybinds.Text = "Switch to Keybinds"
SwitchToKeybinds.TextColor3 = Color3.new(0.333333, 1, 0)
SwitchToKeybinds.TextScaled = true
SwitchToKeybinds.TextSize = 24
SwitchToKeybinds.TextWrapped = true

MaxStuds.Name = "MaxStuds"
MaxStuds.Parent = SettingsUI
MaxStuds.BackgroundColor3 = Color3.new(0, 0, 0)
MaxStuds.BackgroundTransparency = 1
MaxStuds.BorderColor3 = Color3.new(0, 0.666667, 0)
MaxStuds.BorderSizePixel = 0
MaxStuds.Position = UDim2.new(-0.00295857992, 0, 0.667083621, 0)
MaxStuds.Size = UDim2.new(0, 169, 0, 28)
MaxStuds.Font = Enum.Font.Highway
MaxStuds.Text = "Auto-Target max studs:"
MaxStuds.TextColor3 = Color3.new(0.333333, 1, 0)
MaxStuds.TextSize = 24
MaxStuds.TextXAlignment = Enum.TextXAlignment.Left

value_5.Name = "value"
value_5.Parent = MaxStuds
value_5.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_5.BorderColor3 = Color3.new(0.333333, 1, 0)
value_5.Position = UDim2.new(0.00599986408, 0, 0.962999642, 0)
value_5.Size = UDim2.new(0, 288, 0, 28)
value_5.Font = Enum.Font.Highway
value_5.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
value_5.PlaceholderText = "Default is 500"
value_5.Text = "500"
value_5.TextColor3 = Color3.new(0.333333, 1, 0)
value_5.TextSize = 24
value_5.TextXAlignment = Enum.TextXAlignment.Left

AimAdjust.Name = "AimAdjust"
AimAdjust.Parent = SettingsUI
AimAdjust.BackgroundColor3 = Color3.new(0, 0, 0)
AimAdjust.BackgroundTransparency = 1
AimAdjust.BorderColor3 = Color3.new(0, 0.666667, 0)
AimAdjust.BorderSizePixel = 0
AimAdjust.Position = UDim2.new(0, 0, 0.570990562, 0)
AimAdjust.Size = UDim2.new(0, 169, 0, 28)
AimAdjust.Font = Enum.Font.Highway
AimAdjust.Text = "Aim Intensity"
AimAdjust.TextColor3 = Color3.new(0.333333, 1, 0)
AimAdjust.TextSize = 24
AimAdjust.TextXAlignment = Enum.TextXAlignment.Left

value_6.Name = "value"
value_6.Parent = AimAdjust
value_6.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_6.BorderColor3 = Color3.new(0.333333, 1, 0)
value_6.Position = UDim2.new(8.23433511e-05, 0, 0.927285314, 0)
value_6.Size = UDim2.new(0, 288, 0, 28)
value_6.Font = Enum.Font.Highway
value_6.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
value_6.PlaceholderText = "Default is 250"
value_6.Text = "250"
value_6.TextColor3 = Color3.new(0.333333, 1, 0)
value_6.TextSize = 24
value_6.TextXAlignment = Enum.TextXAlignment.Left

WhitelistFriends.Name = "WhitelistFriends"
WhitelistFriends.Parent = SettingsUI
WhitelistFriends.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistFriends.BackgroundTransparency = 1
WhitelistFriends.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistFriends.BorderSizePixel = 0
WhitelistFriends.Position = UDim2.new(-0.00295857992, 0, 0.473963648, 0)
WhitelistFriends.Size = UDim2.new(0, 169, 0, 28)
WhitelistFriends.Font = Enum.Font.Highway
WhitelistFriends.Text = "Auto-Whitelist Friends:"
WhitelistFriends.TextColor3 = Color3.new(0.333333, 1, 0)
WhitelistFriends.TextSize = 24
WhitelistFriends.TextXAlignment = Enum.TextXAlignment.Left

value_7.Name = "value"
value_7.Parent = WhitelistFriends
value_7.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_7.BorderColor3 = Color3.new(0.333333, 1, 0)
value_7.Position = UDim2.new(0.00591752073, 0, 0.962999642, 0)
value_7.Size = UDim2.new(0, 288, 0, 28)
value_7.Font = Enum.Font.Highway
value_7.Text = "false"
value_7.TextColor3 = Color3.new(0.333333, 1, 0)
value_7.TextSize = 24
value_7.TextXAlignment = Enum.TextXAlignment.Left

KeybindUI.Name = "KeybindUI"
KeybindUI.Parent = Aimbot
KeybindUI.BackgroundColor3 = Color3.new(0, 0, 0)
KeybindUI.BorderColor3 = Color3.new(0.333333, 1, 0)
KeybindUI.Position = UDim2.new(0.359375, 0, 0.126851857, 0)
KeybindUI.Size = UDim2.new(0, 338, 0, 234)
KeybindUI.Visible = false

Title_4.Name = "Title"
Title_4.Parent = KeybindUI
Title_4.BackgroundColor3 = Color3.new(0, 0, 0)
Title_4.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_4.Size = UDim2.new(0, 338, 0, 45)
Title_4.Font = Enum.Font.Highway
Title_4.Text = "Keybinds"
Title_4.TextColor3 = Color3.new(0.333333, 1, 0)
Title_4.TextScaled = true
Title_4.TextSize = 14
Title_4.TextWrapped = true

AimbotToggle.Name = "AimbotToggle"
AimbotToggle.Parent = KeybindUI
AimbotToggle.BackgroundColor3 = Color3.new(0, 0, 0)
AimbotToggle.BackgroundTransparency = 1
AimbotToggle.BorderColor3 = Color3.new(0, 0.666667, 0)
AimbotToggle.BorderSizePixel = 0
AimbotToggle.Position = UDim2.new(0.00295857992, 0, 0.20372282, 0)
AimbotToggle.Size = UDim2.new(0, 169, 0, 28)
AimbotToggle.Font = Enum.Font.Highway
AimbotToggle.Text = "Aimbot Toggle:"
AimbotToggle.TextColor3 = Color3.new(0.333333, 1, 0)
AimbotToggle.TextSize = 24
AimbotToggle.TextXAlignment = Enum.TextXAlignment.Left

value_8.Name = "value"
value_8.Parent = AimbotToggle
value_8.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_8.BorderColor3 = Color3.new(0.333333, 1, 0)
value_8.Position = UDim2.new(0, 0, 0.998714447, 0)
value_8.Size = UDim2.new(0, 258, 0, 28)
value_8.Font = Enum.Font.Highway
value_8.Text = "Enum.KeyCode.LeftAlt"
value_8.TextColor3 = Color3.new(0.333333, 1, 0)
value_8.TextSize = 24
value_8.TextXAlignment = Enum.TextXAlignment.Left

reset.Name = "reset"
reset.Parent = AimbotToggle
reset.BackgroundColor3 = Color3.new(0, 0.333333, 0)
reset.BorderColor3 = Color3.new(0.333333, 1, 0)
reset.Position = UDim2.new(1.53254437, 0, 0.998714447, 0)
reset.Size = UDim2.new(0, 78, 0, 28)
reset.Font = Enum.Font.Highway
reset.Text = "Reset"
reset.TextColor3 = Color3.new(1, 0, 0)
reset.TextSize = 24

ChangeTargetedPart.Name = "ChangeTargetedPart"
ChangeTargetedPart.Parent = KeybindUI
ChangeTargetedPart.BackgroundColor3 = Color3.new(0, 0, 0)
ChangeTargetedPart.BackgroundTransparency = 1
ChangeTargetedPart.BorderColor3 = Color3.new(0, 0.666667, 0)
ChangeTargetedPart.BorderSizePixel = 0
ChangeTargetedPart.Position = UDim2.new(0, 0, 0.448541999, 0)
ChangeTargetedPart.Size = UDim2.new(0, 169, 0, 28)
ChangeTargetedPart.Font = Enum.Font.Highway
ChangeTargetedPart.Text = "Change Targeted Part:"
ChangeTargetedPart.TextColor3 = Color3.new(0.333333, 1, 0)
ChangeTargetedPart.TextSize = 24
ChangeTargetedPart.TextXAlignment = Enum.TextXAlignment.Left

value_9.Name = "value"
value_9.Parent = ChangeTargetedPart
value_9.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_9.BorderColor3 = Color3.new(0.333333, 1, 0)
value_9.Position = UDim2.new(0.00591715984, 0, 0.998713911, 0)
value_9.Size = UDim2.new(0, 258, 0, 28)
value_9.Font = Enum.Font.Highway
value_9.Text = "Enum.KeyCode.X"
value_9.TextColor3 = Color3.new(0.333333, 1, 0)
value_9.TextSize = 24
value_9.TextXAlignment = Enum.TextXAlignment.Left

reset_2.Name = "reset"
reset_2.Parent = ChangeTargetedPart
reset_2.BackgroundColor3 = Color3.new(0, 0.333333, 0)
reset_2.BorderColor3 = Color3.new(0.333333, 1, 0)
reset_2.Position = UDim2.new(1.53846157, 0, 0.998714447, 0)
reset_2.Size = UDim2.new(0, 78, 0, 28)
reset_2.Font = Enum.Font.Highway
reset_2.Text = "Reset"
reset_2.TextColor3 = Color3.new(1, 0, 0)
reset_2.TextSize = 24

SwitchToSettings.Name = "SwitchToSettings"
SwitchToSettings.Parent = KeybindUI
SwitchToSettings.BackgroundColor3 = Color3.new(0, 0, 0)
SwitchToSettings.BorderColor3 = Color3.new(0.333333, 1, 0)
SwitchToSettings.Position = UDim2.new(0.251479298, 0, 0.799804866, 0)
SwitchToSettings.Size = UDim2.new(0, 168, 0, 46)
SwitchToSettings.Font = Enum.Font.Highway
SwitchToSettings.Text = "Switch to Settings"
SwitchToSettings.TextColor3 = Color3.new(0.333333, 1, 0)
SwitchToSettings.TextScaled = true
SwitchToSettings.TextSize = 24
SwitchToSettings.TextWrapped = true
-- Scripts:
function SCRIPT_EJCV69_FAKESCRIPT() -- Aimbot.Scripts 
	local script = Instance.new('LocalScript')
	script.Parent = Aimbot
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()
	if not _G.RedsAimbot then
	_G.RedsAimbot = true
	for i,v in pairs(script.Parent:GetChildren()) do
	if v.ClassName == "Frame" then
	v.Draggable = true
	v.Active = true
	end
	end
	local wlui = script.Parent.ManagerUI
	local settingsui = script.Parent.SettingsUI
	local keybindui = script.Parent.KeybindUI
	if syn.protect_gui then
	syn.protect_gui(script.Parent)
	end
	local WhitelistedTeams = {}
	local WhitelistedPlrs = {}
	local AddedTeams = {} --This is NOT the same as whitelistedteams so don't remove it again smh
	local PrioritizedPlrs = {}
	local plrs = game.Players
	local lplr = plrs.LocalPlayer
	local m = lplr:GetMouse()
	local misc = {}
	misc.IsAimbotOn = false
	misc.TargetedCharacter = ""
	local botstats
	local AimbotStats
	local Keybinds
	local function gengamestats()
	botstats[game.PlaceId] = {}
	AimbotStats = botstats[game.PlaceId]
	AimbotStats.Target = "Head"
	AimbotStats.AimAdjust = 250
	AimbotStats.AutoTarget = true
	AimbotStats.FPEnabled = true
	AimbotStats.WhitelistFriends = false
	AimbotStats.MaxStuds = 500
	AimbotStats.OwnTeamWhitelisted = true
	end
	if isfile("RedsAimbotStats.lua") then
	botstats = loadfile("RedsAimbotStats.lua")()
	if not botstats[game.PlaceId] then gengamestats() end
	for i,v in pairs(botstats[game.PlaceId]) do
	settingsui[i].value.Text = tostring(v)
	end
	for i,v in pairs(botstats.Keybinds) do
	keybindui[i].value.Text = tostring(v)
	end
	else
	botstats = {}
	botstats.Keybinds = {}
	gengamestats()
	botstats.Keybinds.AimbotToggle = Enum.KeyCode.LeftAlt
	botstats.Keybinds.ChangeTargetedPart = Enum.KeyCode.X
	end
	AimbotStats = botstats[game.PlaceId]
	Keybinds = botstats.Keybinds
	deselect = function()
	misc.TargetedCharacter = ""
	coroutine.resume(coroutine.create(function()
	if misc.IsAimbotOn then
	misc.IsAimbotOn = false
	task.wait()
	misc.IsAimbotOn = true
	end
	end))
	end
	function CheckDN(plr)
	if plr.DisplayName == plr.Name then
	return plr.Name
	else
	return plr.Name.." (DisplayName: "..plr.DisplayName..")"
	end
	end
	function IsNotWhitelisted(plr)
	if AimbotStats.OwnTeamWhitelisted then
	return plr.Team ~= lplr.Team and not table.find(WhitelistedPlrs, plr) and not table.find(WhitelistedTeams, plr.Team.Name)
	else
	local validteam, teamname = pcall(function()
	return plr.Team.Name
	end)
	if validteam then
	return not table.find(WhitelistedPlrs, plr) and not table.find(WhitelistedTeams, teamname)
	else
	return not table.find(WhitelistedPlrs, plr)
	end
	end
	end
	function GetPlayer(player)
	local humanoidvalid, humanoid = pcall(function()
	return player.Character.Humanoid
	end)
	local function checkplr()
	selectplr(player.Character)
	end
	if player.Name ~= lplr.Name and humanoidvalid then
	if game.Teams:FindFirstChildOfClass("Team") and IsNotWhitelisted(player) and humanoid.Health ~= 0 then
	checkplr()
	elseif not game.Teams:FindFirstChildOfClass("Team") and IsNotWhitelisted(player) then
	checkplr()
	end
	end
	end
	GetNearestPlayer = function()
	local table1 = {}
	local table2 = {}
	local PrioritizedPlrsOnScreen = {}
	for i,v in pairs(plrs:GetPlayers()) do
	local outcome = pcall(function()
	 return v.Character.Humanoid and v.Character[AimbotStats.Target]
	end)
	if outcome and v.Name ~= lplr.Name and v.Character.Humanoid.Health ~= 0 and IsNotWhitelisted(v) then
	local pos = math.floor(lplr:DistanceFromCharacter(v.Character[AimbotStats.Target].Position))
	local _, onscreen = workspace.Camera:WorldToScreenPoint(v.Character[AimbotStats.Target].Position)
	if onscreen and pos < AimbotStats.MaxStuds then
	table1[pos] = v
	table.insert(table2, pos)
	if table.find(PrioritizedPlrs, v) then
	table.insert(PrioritizedPlrsOnScreen, v)
	end
	end
	end
	end
	if #PrioritizedPlrsOnScreen == 0 then
	table.sort(table2)
	else
	for pos, plr in pairs(table1) do
	if not table.find(PrioritizedPlrsOnScreen, plr) then
	local num = table.find(table2,pos)
	table.remove(table2, num)
	table1[pos] = nil
	end
	end
	table.sort(table2)
	end
	for position, player in pairs(table1) do
	if table2[1] == position then
	GetPlayer(player)
	end
	end
	end
	Changed = function(part, value, func)
	    local current = part[value]
	    coroutine.resume(coroutine.create(function()
	        while true do
	            repeat task.wait() until part[value] ~= current
	            func(part[value], current, part)
	            current = part[value]
	    end
	    end))
	end
	GetFamily = function(ins)
	local Pathway = {}
	function _GetFamily(v)
	if v.Parent ~= nil then
	        table.insert(Pathway, 1, v)
	        _GetFamily(v.Parent)
	    else
	       table.insert(Pathway, 1, v)
	    end
	end
	_GetFamily(ins)
	return Pathway
	end
	function repack(str)
	local t = {}
	local arg = ""
	local tableseperator = " "
	str = str..tableseperator
	for i = 1, string.len(str) do
	if str:sub(i,i) ~= tableseperator then
	arg = arg..str:sub(i,i)
	else
	if tonumber(arg) then
	table.insert(t, tonumber(arg))
	else
	table.insert(t, arg)
	end
	arg = ""
	end
	end
	return t
	end
	function selectplr(chr)
	if misc.IsAimbotOn == true and misc.TargetedCharacter == "" then
	misc.TargetedCharacter = chr
	if game.PlaceId == 286090429 then
	chr.ChildAdded:connect(function(c)
	if c.Name == "Cam" and misc.TargetedCharacter == chr then
	chr.Humanoid.Health = 0
	chr.ChildRemoved:Wait()
	chr.Humanoid.Health = 100
	end
	end)
	end
	end
	end
	if not lplr.Character then
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot target";
	Duration = 10;
	Text = "Spawn in the game for the aimbot to work";
	})
	lplr.CharacterAdded:Wait()
	end
	local chr = lplr.Character
	repeat task.wait() until chr:FindFirstChild("Torso") or chr:FindFirstChild("UpperTorso")
	local Torso = chr:FindFirstChild("Torso") or chr:FindFirstChild("UpperTorso")
	game.UserInputService.InputBegan:connect(function(key,processed)
	    if processed then return end
	local keycode = key.KeyCode
	if keycode == Keybinds.ChangeTargetedPart then
	if AimbotStats.Target == "Torso" or AimbotStats.Target == "UpperTorso" then
	AimbotStats.Target = "Head"
	else
	AimbotStats.Target = Torso.Name
	end
	end
	if keycode == Keybinds.AimbotToggle then
	misc.IsAimbotOn = not misc.IsAimbotOn
	end
	end)
	settingsui.X.MouseButton1Click:connect(function()
	settingsui.Visible = false
	end)
	local stext = settingsui.SaveSettings.Text
	settingsui.SaveSettings.MouseButton1Click:connect(function()
	if writefile then
	writefile("RedsAimbotStats.lua",TableToString(botstats))
	settingsui.SaveSettings.Text = "Success!"
	wait(1)
	settingsui.SaveSettings.Text = stext
	else
	settingsui.SaveSettings.Text = "Exploit can't use writefile :("
	wait(3)
	settingsui.SaveSettings.Text = stext
	end
	end)
	for i,v in pairs(settingsui:GetChildren()) do
	if v:FindFirstChild("value") then
	if v.Name == "AutoTarget" or v.Name == "FPEnabled" or v.Name == "OwnTeamWhitelisted" or v.Name == "WhitelistFriends" then
	v.value.MouseButton1Click:connect(function()
	AimbotStats[v.Name] = not AimbotStats[v.Name]
	end)
	Changed(AimbotStats,v.Name,function(val)
	v.value.Text = tostring(val)
	end)
	end
	end
	end
	settingsui.Target.value.MouseButton1Click:connect(function()
	if AimbotStats.Target == "Head" then
	AimbotStats.Target = Torso.Name
	else
	AimbotStats.Target = "Head"
	end
	end)
	Changed(AimbotStats,"Target",function(val)
	settingsui.Target.value.Text = val
	end)
	Changed(settingsui.MaxStuds.value, "Text", function(n)
	local num = tonumber(n)
	if num then
	AimbotStats.MaxStuds = num
	else 
	AimbotStats.MaxStuds = 500
	end
	end)
	Changed(settingsui.AimAdjust.value, "Text",function(n)
	local num = tonumber(n)
	if num then
	AimbotStats.AimAdjust = num
	else
	AimbotStats.AimAdjust = 250
	end
	end)
	for i,v in pairs(keybindui:GetChildren()) do
	if v:FindFirstChild("reset") then
	v.reset.MouseButton1Click:connect(function()
	botstats.Keybinds[v.Name] = "none"
	v.value.Text = "none"
	end)
	end
	if v:FindFirstChild("value") then
	v.value.MouseButton1Click:connect(function()
	botstats.Keybinds[v.Name] = "none"
	v.value.Text = "Press any key"
	local key = game.UserInputService.InputBegan:Wait()
	botstats.Keybinds[v.Name] = key.KeyCode
	v.value.Text = tostring(key.KeyCode)
	end)
	end
	end
	local AimbotFunction = game.RunService.RenderStepped:connect(function()
	if misc.TargetedCharacter ~= "" and misc.TargetedCharacter:FindFirstChild(AimbotStats.Target) then
	local v, _ = workspace.Camera:WorldToScreenPoint(misc.TargetedCharacter[AimbotStats.Target].Position)
	if _ then
	local StabilizeNum = AimbotStats.AimAdjust/workspace.Camera.ViewportSize.Y
	local x, y = (v.X - m.X)*StabilizeNum, (v.Y - m.Y)*StabilizeNum
	if misc.IsAimbotOn then
	mousemoverel(x, y)
	end
	else
	deselect()
	end
	end
	if m.Target ~= nil then
	for i,v in pairs(GetFamily(m.Target)) do
	if game.Players:FindFirstChild(v.Name) then
	GetPlayer(game.Players[v.Name])
	end
	end
	end
	if AimbotStats.AutoTarget then
	GetNearestPlayer()
	end
	if AimbotStats.FPEnabled then
	if misc.TargetedCharacter ~= ""  and misc.IsAimbotOn then
	plrs.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
	else
	plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
	end
	else
	plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
	end
	end)
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot Update:";
	Duration = 5;
	Text = "Made a huge re-design! cool amirite :0";})
	
	function Died(player)
	if not player.Character then player.CharacterAdded:Wait() end
	local function OnDeath(chr)
	chr:WaitForChild("Humanoid")
	chr.Humanoid.Died:connect(function()
	if misc.TargetedCharacter == chr then
	deselect()
	end
	end)
	end
	OnDeath(player.Character)
	player.CharacterAdded:connect(OnDeath)
	player.CharacterRemoving:connect(function(chr)
	if misc.TargetedCharacter == chr then
	deselect()
	end
	end)
	end
	for i,v in pairs(plrs:GetPlayers()) do Died(v) end
	plrs.PlayerAdded:connect(Died)
	plrs.PlayerRemoving:connect(function(plr)
	if plr.Character and plr.Character == misc.TargetedCharacter then
	deselect()
	end
	end)
	local MainFrame = script.Parent.MFrame
	MainFrame.X.MouseButton1Click:connect(function()
	AimbotFunction:disconnect()
	_G.RedsAimbot = false
	MainFrame.Parent:Destroy()
	end)
	Changed(misc, "TargetedCharacter", function(v)
	if v ~= "" then
	local player = game.Players:GetPlayerFromCharacter(v)
	MainFrame.ChosenPlayer.Text = CheckDN(player)
	else
	MainFrame.ChosenPlayer.Text = "none"
	end
	end)
	MainFrame.Manager.MouseButton1Click:connect(function()
	wlui.Visible = true
	end)
	MainFrame.Settings.MouseButton1Click:connect(function()
	settingsui.Visible = true
	end)
	settingsui.SwitchToKeybinds.MouseButton1Click:connect(function()
	settingsui.Visible = false
	keybindui.Visible = true
	end)
	keybindui.SwitchToSettings.MouseButton1Click:connect(function()
	keybindui.Visible = false
	settingsui.Visible = true
	end)
	Changed(misc, "IsAimbotOn", function(v)
	if v == false then
	MainFrame.Status.TextColor3 = Color3.new(1,0,0)
	MainFrame.Status.Text = "disabled"
	deselect()
	else
	MainFrame.Status.TextColor3 = Color3.new(0,1,0)
	MainFrame.Status.Text = "enabled"
	end
	end)
	wlui.hide.MouseButton1Click:connect(function()
	wlui.Visible = false
	end)
	MainFrame.Status.MouseButton1Click:connect(function()
	misc.IsAimbotOn = not misc.IsAimbotOn
	end)
	local wlframe = wlui.WhitelistedInstances.whitelistframe
	function AddtoList(ins)
	local clone = wlframe:Clone()
	clone.Visible = true
	clone.Parent = wlframe.Parent
	local function togglefunc(Table)
	local button
	if Table == PrioritizedPlrs then
	button = clone.PriorityToggle
	else
	button = clone.WhitelistToggle
	end
	if ins.ClassName == "Player" and AimbotStats.WhitelistFriends and lplr:IsFriendsWith(ins.UserId) then
	button.TextColor3 = Color3.new(0,1,0)
	button.Text = "Yes"
	table.insert(WhitelistedPlrs, ins)
	end
	button.MouseButton1Click:connect(function()
	if button.Text == "No" then
	button.TextColor3 = Color3.new(0,1,0)
	button.Text = "Yes"
	if Table == WhitelistedTeams then
	table.insert(Table, ins.Name)
	else
	table.insert(Table,ins)
	end
	if Table == PrioritizedPlrs and clone.WhitelistToggle.Text == "Yes" then
	clone.WhitelistToggle.Text = "No"
	clone.WhitelistToggle.TextColor3 = Color3.new(1,0,0)
	local wlistplr = table.find(WhitelistedPlrs, ins)
	table.remove(WhitelistedPlrs, wlistplr)
	end
	if Table == WhitelistedPlrs and clone.PriorityToggle.Text == "Yes" then
	clone.PriorityToggle.Text = "No"
	clone.PriorityToggle.TextColor3 = Color3.new(1,0,0)
	local prioplr = table.find(PrioritizedPlrs, ins)
	table.remove(PrioritizedPlrs, prioplr)
	end
	else
	button.TextColor3 = Color3.new(1,0,0)
	button.Text = "No"
	local removeins = table.find(Table, ins)
	table.remove(Table,removeins)
	end
	end)
	end
	if ins.ClassName == "Team" then
	clone.TextLabel.Text = ins.ClassName..": "..ins.Name
	togglefunc(WhitelistedTeams)
	table.insert(AddedTeams, ins.Name)
	coroutine.resume(coroutine.create(function()
	repeat task.wait() until not game.Teams:FindFirstChild(ins.Name)
	clone:Destroy()
	local team = table.find(AddedTeams,ins.Name)
	table.remove(AddedTeams,team)
	end))
	else
	clone.TextLabel.Text = ins.ClassName..": "..CheckDN(ins)
	togglefunc(WhitelistedPlrs)
	clone.PriorityToggle.Visible = true
	togglefunc(PrioritizedPlrs)
	coroutine.resume(coroutine.create(function()
	repeat task.wait() until not game.Players:FindFirstChild(ins.Name)
	clone:Destroy()
	end))
	end
	end
	wlui.WhitelistedInstances.ChildAdded:connect(function()
	local yval = wlui.WhitelistedInstances.CanvasSize.Y.Scale + 0.14
	wlui.WhitelistedInstances.CanvasSize = UDim2.new(0,0,yval, 0)
	end)
	wlui.WhitelistedInstances.ChildRemoved:connect(function()
	local yval = wlui.WhitelistedInstances.CanvasSize.Y.Scale - 0.14
	wlui.WhitelistedInstances.CanvasSize = UDim2.new(0,0,yval, 0)
	end)
	for i, team in pairs(game.Teams:GetTeams()) do
	if not table.find(AddedTeams, team.Name) then
	AddtoList(team)
	end
	end
	for i,plr in pairs(plrs:GetPlayers()) do
	if plr ~= lplr then
	AddtoList(plr)
	end
	end
	plrs.PlayerAdded:connect(AddtoList)
	game.Teams.ChildAdded:connect(function(team)
	if team.ClassName == "Team" and not table.find(AddedTeams, team.Name) then
	AddtoList(team)
	end
	end)
	Changed(wlui.searchbar, "Text", function(txt)
	for i,v in pairs(wlui.WhitelistedInstances:GetChildren()) do
	if v.ClassName == "Frame" and v ~= wlframe then
	if v.TextLabel.Text:lower():match(txt:lower()) then
	v.Visible = true
	else
	v.Visible = false
	end
	end
	end
	end)
	else
	game.StarterGui:SetCore("SendNotification", {
	Title = "Aimbot";
	Text = "Seems like you've already executed this. Deleting clone GUI.";
	})
	task.wait(0.2)
	script.Parent:Destroy()
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_EJCV69_FAKESCRIPT))
