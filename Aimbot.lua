-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Aimbot = Instance.new("ScreenGui")
local MFrame = Instance.new("Frame")
local X = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local CurrentTargetTitle = Instance.new("TextLabel")
local CurrentTarget = Instance.new("TextLabel")
local EditGameSettings = Instance.new("TextButton")
local Manager = Instance.new("TextButton")
local StatusTitle = Instance.new("TextLabel")
local Status = Instance.new("TextButton")
local EditGlobalSettings = Instance.new("TextButton")
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
local GameSettingsUI = Instance.new("Frame")
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
local MaxStuds = Instance.new("TextLabel")
local value_5 = Instance.new("TextBox")
local WhitelistFriends = Instance.new("TextLabel")
local value_6 = Instance.new("TextButton")
local SwitchToTeam = Instance.new("TextButton")
local TargetNPCs = Instance.new("TextLabel")
local value_7 = Instance.new("TextButton")
local NPCWarning = Instance.new("TextLabel")
local TargetCloserPlayers = Instance.new("TextLabel")
local value_8 = Instance.new("TextButton")
local About = Instance.new("TextLabel")
local GlobalSettingsUI = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local AimbotToggle = Instance.new("TextLabel")
local value_9 = Instance.new("TextButton")
local reset = Instance.new("TextButton")
local TargetedPartToggle = Instance.new("TextLabel")
local value_10 = Instance.new("TextButton")
local reset_2 = Instance.new("TextButton")
local TeamAutofill = Instance.new("TextLabel")
local value_11 = Instance.new("TextButton")
local X_3 = Instance.new("TextButton")
local AimIntensity = Instance.new("TextLabel")
local value_12 = Instance.new("TextBox")
local TeamUI = Instance.new("Frame")
local WhitelistedTeams = Instance.new("ScrollingFrame")
local whitelistframe_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local undo = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local WLTeam = Instance.new("TextButton")
local whitelistteam = Instance.new("TextBox")
local yourteam = Instance.new("TextBox")
local label1 = Instance.new("TextLabel")
local label2 = Instance.new("TextLabel")
local Title_5 = Instance.new("TextLabel")
local X_4 = Instance.new("TextButton")
local SwitchToSettings = Instance.new("TextButton")
--Properties:
Aimbot.Name = "Aimbot"
Aimbot.Parent = game.CoreGui
Aimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MFrame.Name = "MFrame"
MFrame.Parent = Aimbot
MFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MFrame.BorderColor3 = Color3.new(0.333333, 1, 0)
MFrame.Position = UDim2.new(0.682635665, 0, 0.170301646, 0)
MFrame.Size = UDim2.new(0, 260, 0, 252)

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

CurrentTargetTitle.Name = "CurrentTargetTitle"
CurrentTargetTitle.Parent = MFrame
CurrentTargetTitle.BackgroundColor3 = Color3.new(0, 0, 0)
CurrentTargetTitle.BackgroundTransparency = 1
CurrentTargetTitle.BorderColor3 = Color3.new(0.333333, 1, 0)
CurrentTargetTitle.BorderSizePixel = 0
CurrentTargetTitle.Position = UDim2.new(0.0076923077, 0, 0.378930956, 0)
CurrentTargetTitle.Size = UDim2.new(0, 257, 0, 29)
CurrentTargetTitle.Font = Enum.Font.Highway
CurrentTargetTitle.Text = "Current Target:"
CurrentTargetTitle.TextColor3 = Color3.new(0.333333, 1, 0)
CurrentTargetTitle.TextScaled = true
CurrentTargetTitle.TextSize = 14
CurrentTargetTitle.TextWrapped = true
CurrentTargetTitle.TextXAlignment = Enum.TextXAlignment.Left

CurrentTarget.Name = "CurrentTarget"
CurrentTarget.Parent = MFrame
CurrentTarget.BackgroundColor3 = Color3.new(0, 0, 0)
CurrentTarget.BackgroundTransparency = 1
CurrentTarget.BorderColor3 = Color3.new(0, 0.666667, 0)
CurrentTarget.BorderSizePixel = 0
CurrentTarget.Position = UDim2.new(0.0076923077, 0, 0.495866328, 0)
CurrentTarget.Size = UDim2.new(0, 258, 0, 29)
CurrentTarget.Font = Enum.Font.Highway
CurrentTarget.Text = "none"
CurrentTarget.TextColor3 = Color3.new(1, 0, 0)
CurrentTarget.TextScaled = true
CurrentTarget.TextSize = 14
CurrentTarget.TextWrapped = true
CurrentTarget.TextXAlignment = Enum.TextXAlignment.Left

EditGameSettings.Name = "EditGameSettings"
EditGameSettings.Parent = MFrame
EditGameSettings.BackgroundColor3 = Color3.new(0, 0, 0)
EditGameSettings.BorderColor3 = Color3.new(0.333333, 1, 0)
EditGameSettings.Position = UDim2.new(0, 0, 0.615087628, 0)
EditGameSettings.Size = UDim2.new(0, 260, 0, 30)
EditGameSettings.Font = Enum.Font.Highway
EditGameSettings.Text = "Edit Game Settings"
EditGameSettings.TextColor3 = Color3.new(0.333333, 1, 0)
EditGameSettings.TextSize = 24
EditGameSettings.TextWrapped = true

Manager.Name = "Manager"
Manager.Parent = MFrame
Manager.BackgroundColor3 = Color3.new(0, 0, 0)
Manager.BorderColor3 = Color3.new(0.333333, 1, 0)
Manager.Position = UDim2.new(0, 0, 0.856389582, 0)
Manager.Size = UDim2.new(0, 260, 0, 30)
Manager.Font = Enum.Font.Highway
Manager.Text = "Manage Players"
Manager.TextColor3 = Color3.new(0.333333, 1, 0)
Manager.TextSize = 24
Manager.TextWrapped = true

StatusTitle.Name = "StatusTitle"
StatusTitle.Parent = MFrame
StatusTitle.BackgroundColor3 = Color3.new(0, 0, 0)
StatusTitle.BackgroundTransparency = 1
StatusTitle.BorderColor3 = Color3.new(0, 0.666667, 0)
StatusTitle.BorderSizePixel = 0
StatusTitle.Position = UDim2.new(0.0076923077, 0, 0.213608399, 0)
StatusTitle.Size = UDim2.new(0, 256, 0, 29)
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

EditGlobalSettings.Name = "EditGlobalSettings"
EditGlobalSettings.Parent = MFrame
EditGlobalSettings.BackgroundColor3 = Color3.new(0, 0, 0)
EditGlobalSettings.BorderColor3 = Color3.new(0.333333, 1, 0)
EditGlobalSettings.Position = UDim2.new(0, 0, 0.733473659, 0)
EditGlobalSettings.Size = UDim2.new(0, 260, 0, 30)
EditGlobalSettings.Font = Enum.Font.Highway
EditGlobalSettings.Text = "Edit Global Settings"
EditGlobalSettings.TextColor3 = Color3.new(0.333333, 1, 0)
EditGlobalSettings.TextSize = 24
EditGlobalSettings.TextWrapped = true

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
WhitelistedInstances.CanvasSize = UDim2.new(0, 0, 0, 0)

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
searchbar.BackgroundColor3 = Color3.new(0, 0.333333, 0)
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
typelabel.Text = "Player Name"
typelabel.TextColor3 = Color3.new(0.333333, 1, 0)
typelabel.TextScaled = true
typelabel.TextSize = 14
typelabel.TextWrapped = true

GameSettingsUI.Name = "GameSettingsUI"
GameSettingsUI.Parent = Aimbot
GameSettingsUI.BackgroundColor3 = Color3.new(0, 0, 0)
GameSettingsUI.BorderColor3 = Color3.new(0.333333, 1, 0)
GameSettingsUI.Position = UDim2.new(0.349479169, 0, 0.17027837, 0)
GameSettingsUI.Size = UDim2.new(0, 578, 0, 372)
GameSettingsUI.Visible = false

Title_3.Name = "Title"
Title_3.Parent = GameSettingsUI
Title_3.BackgroundColor3 = Color3.new(0, 0, 0)
Title_3.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_3.Size = UDim2.new(0, 534, 0, 32)
Title_3.Font = Enum.Font.Highway
Title_3.Text = "Game Settings"
Title_3.TextColor3 = Color3.new(0.333333, 1, 0)
Title_3.TextSize = 32
Title_3.TextWrapped = true

X_2.Name = "X"
X_2.Parent = GameSettingsUI
X_2.BackgroundColor3 = Color3.new(0, 0, 0)
X_2.BorderColor3 = Color3.new(0.333333, 1, 0)
X_2.Position = UDim2.new(0.920764387, 0, 0, 0)
X_2.Size = UDim2.new(0, 46, 0, 32)
X_2.Font = Enum.Font.Highway
X_2.Text = "Close"
X_2.TextColor3 = Color3.new(1, 0, 0)
X_2.TextScaled = true
X_2.TextSize = 14
X_2.TextWrapped = true

Target.Name = "Target"
Target.Parent = GameSettingsUI
Target.BackgroundColor3 = Color3.new(0, 0, 0)
Target.BackgroundTransparency = 1
Target.BorderColor3 = Color3.new(0, 0.666667, 0)
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0.00174203573, 0, 0.0852477774, 0)
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
value.Size = UDim2.new(0, 285, 0, 28)
value.Font = Enum.Font.Highway
value.Text = "Head"
value.TextColor3 = Color3.new(0.333333, 1, 0)
value.TextSize = 24
value.TextXAlignment = Enum.TextXAlignment.Left

AutoTarget.Name = "AutoTarget"
AutoTarget.Parent = GameSettingsUI
AutoTarget.BackgroundColor3 = Color3.new(0, 0, 0)
AutoTarget.BackgroundTransparency = 1
AutoTarget.BorderColor3 = Color3.new(0, 0.666667, 0)
AutoTarget.BorderSizePixel = 0
AutoTarget.Position = UDim2.new(0.500572026, 0, 0.0855119601, 0)
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
value_2.Position = UDim2.new(-0.00613674195, 0, 0.998713911, 0)
value_2.Size = UDim2.new(0, 290, 0, 28)
value_2.Font = Enum.Font.Highway
value_2.Text = "true"
value_2.TextColor3 = Color3.new(0.333333, 1, 0)
value_2.TextSize = 24
value_2.TextXAlignment = Enum.TextXAlignment.Left

FPEnabled.Name = "FPEnabled"
FPEnabled.Parent = GameSettingsUI
FPEnabled.BackgroundColor3 = Color3.new(0, 0, 0)
FPEnabled.BackgroundTransparency = 1
FPEnabled.BorderColor3 = Color3.new(0, 0.666667, 0)
FPEnabled.BorderSizePixel = 0
FPEnabled.Position = UDim2.new(0.000507593853, 0, 0.234820038, 0)
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
OwnTeamWhitelisted.Parent = GameSettingsUI
OwnTeamWhitelisted.BackgroundColor3 = Color3.new(0, 0, 0)
OwnTeamWhitelisted.BackgroundTransparency = 1
OwnTeamWhitelisted.BorderColor3 = Color3.new(0, 0.666667, 0)
OwnTeamWhitelisted.BorderSizePixel = 0
OwnTeamWhitelisted.Position = UDim2.new(0.5, 0, 0.237000003, 0)
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
value_4.Position = UDim2.new(-0.0117938705, 0, 0.962999642, 0)
value_4.Size = UDim2.new(0, 290, 0, 28)
value_4.Font = Enum.Font.Highway
value_4.Text = "true"
value_4.TextColor3 = Color3.new(0.333333, 1, 0)
value_4.TextSize = 24
value_4.TextXAlignment = Enum.TextXAlignment.Left

MaxStuds.Name = "MaxStuds"
MaxStuds.Parent = GameSettingsUI
MaxStuds.BackgroundColor3 = Color3.new(0, 0, 0)
MaxStuds.BackgroundTransparency = 1
MaxStuds.BorderColor3 = Color3.new(0, 0.666667, 0)
MaxStuds.BorderSizePixel = 0
MaxStuds.Position = UDim2.new(0.495329261, 0, 0.381821215, 0)
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
value_5.Position = UDim2.new(0.0117938705, 0, 0.962999642, 0)
value_5.Size = UDim2.new(0, 290, 0, 28)
value_5.Font = Enum.Font.Highway
value_5.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
value_5.PlaceholderText = "Default is 500"
value_5.Text = "500"
value_5.TextColor3 = Color3.new(0.333333, 1, 0)
value_5.TextSize = 24
value_5.TextXAlignment = Enum.TextXAlignment.Left

WhitelistFriends.Name = "WhitelistFriends"
WhitelistFriends.Parent = GameSettingsUI
WhitelistFriends.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistFriends.BackgroundTransparency = 1
WhitelistFriends.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistFriends.BorderSizePixel = 0
WhitelistFriends.Position = UDim2.new(0.000507593853, 0, 0.382631421, 0)
WhitelistFriends.Size = UDim2.new(0, 169, 0, 28)
WhitelistFriends.Font = Enum.Font.Highway
WhitelistFriends.Text = "Auto-Whitelist Friends:"
WhitelistFriends.TextColor3 = Color3.new(0.333333, 1, 0)
WhitelistFriends.TextSize = 24
WhitelistFriends.TextXAlignment = Enum.TextXAlignment.Left

value_6.Name = "value"
value_6.Parent = WhitelistFriends
value_6.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_6.BorderColor3 = Color3.new(0.333333, 1, 0)
value_6.Position = UDim2.new(0.00591715984, 0, 0.962999642, 0)
value_6.Size = UDim2.new(0, 285, 0, 28)
value_6.Font = Enum.Font.Highway
value_6.Text = "false"
value_6.TextColor3 = Color3.new(0.333333, 1, 0)
value_6.TextSize = 24
value_6.TextXAlignment = Enum.TextXAlignment.Left

SwitchToTeam.Name = "SwitchToTeam"
SwitchToTeam.Parent = GameSettingsUI
SwitchToTeam.BackgroundColor3 = Color3.new(0, 0, 0)
SwitchToTeam.BorderColor3 = Color3.new(0.333333, 1, 0)
SwitchToTeam.Position = UDim2.new(0.317609012, 0, 0.902128994, 0)
SwitchToTeam.Size = UDim2.new(0, 210, 0, 36)
SwitchToTeam.Font = Enum.Font.Highway
SwitchToTeam.Text = "Whitelist Teams"
SwitchToTeam.TextColor3 = Color3.new(0.333333, 1, 0)
SwitchToTeam.TextSize = 24
SwitchToTeam.TextWrapped = true

TargetNPCs.Name = "TargetNPCs"
TargetNPCs.Parent = GameSettingsUI
TargetNPCs.BackgroundColor3 = Color3.new(0, 0, 0)
TargetNPCs.BackgroundTransparency = 1
TargetNPCs.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetNPCs.BorderSizePixel = 0
TargetNPCs.Position = UDim2.new(-0.000667671789, 0, 0.533571303, 0)
TargetNPCs.Size = UDim2.new(0, 169, 0, 28)
TargetNPCs.Font = Enum.Font.Highway
TargetNPCs.Text = "Target NPCs (test):"
TargetNPCs.TextColor3 = Color3.new(0.333333, 1, 0)
TargetNPCs.TextSize = 24
TargetNPCs.TextXAlignment = Enum.TextXAlignment.Left

value_7.Name = "value"
value_7.Parent = TargetNPCs
value_7.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_7.BorderColor3 = Color3.new(0.333333, 1, 0)
value_7.Position = UDim2.new(0.00591752073, 0, 0.962999642, 0)
value_7.Size = UDim2.new(0, 288, 0, 28)
value_7.Font = Enum.Font.Highway
value_7.Text = "false"
value_7.TextColor3 = Color3.new(0.333333, 1, 0)
value_7.TextSize = 24
value_7.TextXAlignment = Enum.TextXAlignment.Left

NPCWarning.Name = "NPCWarning"
NPCWarning.Parent = TargetNPCs
NPCWarning.BackgroundColor3 = Color3.new(0, 0, 0)
NPCWarning.BackgroundTransparency = 1
NPCWarning.BorderColor3 = Color3.new(0, 0.666667, 0)
NPCWarning.BorderSizePixel = 0
NPCWarning.Position = UDim2.new(1.76091588, 0, 0.252492636, 0)
NPCWarning.Size = UDim2.new(0, 280, 0, 46)
NPCWarning.Font = Enum.Font.Highway
NPCWarning.Text = "For performance reasons, you cannot auto-target NPCs. Auto-Targeting will be disabled to be able to target NPCs."
NPCWarning.TextColor3 = Color3.new(0.333333, 1, 0)
NPCWarning.TextScaled = true
NPCWarning.TextSize = 24
NPCWarning.TextWrapped = true

TargetCloserPlayers.Name = "TargetCloserPlayers"
TargetCloserPlayers.Parent = GameSettingsUI
TargetCloserPlayers.BackgroundColor3 = Color3.new(0, 0, 0)
TargetCloserPlayers.BackgroundTransparency = 1
TargetCloserPlayers.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetCloserPlayers.BorderSizePixel = 0
TargetCloserPlayers.Position = UDim2.new(-0.000667671789, 0, 0.678828359, 0)
TargetCloserPlayers.Size = UDim2.new(0, 169, 0, 28)
TargetCloserPlayers.Font = Enum.Font.Highway
TargetCloserPlayers.Text = "Target Closer Players:"
TargetCloserPlayers.TextColor3 = Color3.new(0.333333, 1, 0)
TargetCloserPlayers.TextSize = 24
TargetCloserPlayers.TextXAlignment = Enum.TextXAlignment.Left

value_8.Name = "value"
value_8.Parent = TargetCloserPlayers
value_8.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_8.BorderColor3 = Color3.new(0.333333, 1, 0)
value_8.Position = UDim2.new(0.00591752073, 0, 0.962999642, 0)
value_8.Size = UDim2.new(0, 288, 0, 28)
value_8.Font = Enum.Font.Highway
value_8.Text = "true"
value_8.TextColor3 = Color3.new(0.333333, 1, 0)
value_8.TextSize = 24
value_8.TextXAlignment = Enum.TextXAlignment.Left

About.Name = "About"
About.Parent = TargetCloserPlayers
About.BackgroundColor3 = Color3.new(0, 0, 0)
About.BackgroundTransparency = 1
About.BorderColor3 = Color3.new(0, 0.666667, 0)
About.BorderSizePixel = 0
About.Position = UDim2.new(1.75499868, 0, 0.00249263225, 0)
About.Size = UDim2.new(0, 280, 0, 46)
About.Font = Enum.Font.Highway
About.Text = "If enabled, targets can swap with players closer to you. If disabled, targets will only swap if dead."
About.TextColor3 = Color3.new(0.333333, 1, 0)
About.TextScaled = true
About.TextSize = 24
About.TextWrapped = true

GlobalSettingsUI.Name = "GlobalSettingsUI"
GlobalSettingsUI.Parent = Aimbot
GlobalSettingsUI.BackgroundColor3 = Color3.new(0, 0, 0)
GlobalSettingsUI.BorderColor3 = Color3.new(0.333333, 1, 0)
GlobalSettingsUI.Position = UDim2.new(0.270833343, 0, 0.151851848, 0)
GlobalSettingsUI.Size = UDim2.new(0, 338, 0, 294)
GlobalSettingsUI.Visible = false

Title_4.Name = "Title"
Title_4.Parent = GlobalSettingsUI
Title_4.BackgroundColor3 = Color3.new(0, 0, 0)
Title_4.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_4.Size = UDim2.new(0, 291, 0, 37)
Title_4.Font = Enum.Font.Highway
Title_4.Text = "Global Settings"
Title_4.TextColor3 = Color3.new(0.333333, 1, 0)
Title_4.TextSize = 37
Title_4.TextWrapped = true

AimbotToggle.Name = "AimbotToggle"
AimbotToggle.Parent = GlobalSettingsUI
AimbotToggle.BackgroundColor3 = Color3.new(0, 0, 0)
AimbotToggle.BackgroundTransparency = 1
AimbotToggle.BorderColor3 = Color3.new(0, 0.666667, 0)
AimbotToggle.BorderSizePixel = 0
AimbotToggle.Position = UDim2.new(0, 0, 0.125404671, 0)
AimbotToggle.Size = UDim2.new(0, 169, 0, 28)
AimbotToggle.Font = Enum.Font.Highway
AimbotToggle.Text = "Aimbot Toggle:"
AimbotToggle.TextColor3 = Color3.new(0.333333, 1, 0)
AimbotToggle.TextSize = 24
AimbotToggle.TextXAlignment = Enum.TextXAlignment.Left

value_9.Name = "value"
value_9.Parent = AimbotToggle
value_9.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_9.BorderColor3 = Color3.new(0.333333, 1, 0)
value_9.Position = UDim2.new(0, 0, 0.998714447, 0)
value_9.Size = UDim2.new(0, 258, 0, 28)
value_9.Font = Enum.Font.Highway
value_9.Text = "Enum.KeyCode.LeftAlt"
value_9.TextColor3 = Color3.new(0.333333, 1, 0)
value_9.TextSize = 24
value_9.TextXAlignment = Enum.TextXAlignment.Left

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

TargetedPartToggle.Name = "TargetedPartToggle"
TargetedPartToggle.Parent = GlobalSettingsUI
TargetedPartToggle.BackgroundColor3 = Color3.new(0, 0, 0)
TargetedPartToggle.BackgroundTransparency = 1
TargetedPartToggle.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetedPartToggle.BorderSizePixel = 0
TargetedPartToggle.Position = UDim2.new(0, 0, 0.315722615, 0)
TargetedPartToggle.Size = UDim2.new(0, 169, 0, 28)
TargetedPartToggle.Font = Enum.Font.Highway
TargetedPartToggle.Text = "Targeted Part Toggle:"
TargetedPartToggle.TextColor3 = Color3.new(0.333333, 1, 0)
TargetedPartToggle.TextSize = 24
TargetedPartToggle.TextXAlignment = Enum.TextXAlignment.Left

value_10.Name = "value"
value_10.Parent = TargetedPartToggle
value_10.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_10.BorderColor3 = Color3.new(0.333333, 1, 0)
value_10.Position = UDim2.new(0.00591715984, 0, 0.998713911, 0)
value_10.Size = UDim2.new(0, 258, 0, 28)
value_10.Font = Enum.Font.Highway
value_10.Text = "Enum.KeyCode.X"
value_10.TextColor3 = Color3.new(0.333333, 1, 0)
value_10.TextSize = 24
value_10.TextXAlignment = Enum.TextXAlignment.Left

reset_2.Name = "reset"
reset_2.Parent = TargetedPartToggle
reset_2.BackgroundColor3 = Color3.new(0, 0.333333, 0)
reset_2.BorderColor3 = Color3.new(0.333333, 1, 0)
reset_2.Position = UDim2.new(1.53846157, 0, 0.998714447, 0)
reset_2.Size = UDim2.new(0, 78, 0, 28)
reset_2.Font = Enum.Font.Highway
reset_2.Text = "Reset"
reset_2.TextColor3 = Color3.new(1, 0, 0)
reset_2.TextSize = 24

TeamAutofill.Name = "TeamAutofill"
TeamAutofill.Parent = GlobalSettingsUI
TeamAutofill.BackgroundColor3 = Color3.new(0, 0, 0)
TeamAutofill.BackgroundTransparency = 1
TeamAutofill.BorderColor3 = Color3.new(0, 0.666667, 0)
TeamAutofill.BorderSizePixel = 0
TeamAutofill.Position = UDim2.new(0, 0, 0.505451977, 0)
TeamAutofill.Size = UDim2.new(0, 169, 0, 28)
TeamAutofill.Font = Enum.Font.Highway
TeamAutofill.Text = "Autofill Team Names:"
TeamAutofill.TextColor3 = Color3.new(0.333333, 1, 0)
TeamAutofill.TextSize = 24
TeamAutofill.TextXAlignment = Enum.TextXAlignment.Left

value_11.Name = "value"
value_11.Parent = TeamAutofill
value_11.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_11.BorderColor3 = Color3.new(0.333333, 1, 0)
value_11.Position = UDim2.new(0.00591715984, 0, 0.998713911, 0)
value_11.Size = UDim2.new(0, 337, 0, 28)
value_11.Font = Enum.Font.Highway
value_11.Text = "true"
value_11.TextColor3 = Color3.new(0.333333, 1, 0)
value_11.TextSize = 24
value_11.TextXAlignment = Enum.TextXAlignment.Left

X_3.Name = "X"
X_3.Parent = GlobalSettingsUI
X_3.BackgroundColor3 = Color3.new(0, 0, 0)
X_3.BorderColor3 = Color3.new(0.333333, 1, 0)
X_3.Position = UDim2.new(0.861099899, 0, 0, 0)
X_3.Size = UDim2.new(0, 46, 0, 37)
X_3.Font = Enum.Font.Highway
X_3.Text = "Close"
X_3.TextColor3 = Color3.new(1, 0, 0)
X_3.TextScaled = true
X_3.TextSize = 14
X_3.TextWrapped = true

AimIntensity.Name = "AimIntensity"
AimIntensity.Parent = GlobalSettingsUI
AimIntensity.BackgroundColor3 = Color3.new(0, 0, 0)
AimIntensity.BackgroundTransparency = 1
AimIntensity.BorderColor3 = Color3.new(0, 0.666667, 0)
AimIntensity.BorderSizePixel = 0
AimIntensity.Position = UDim2.new(0.000501627801, 0, 0.692914128, 0)
AimIntensity.Size = UDim2.new(0, 169, 0, 28)
AimIntensity.Font = Enum.Font.Highway
AimIntensity.Text = "Aim Intensity"
AimIntensity.TextColor3 = Color3.new(0.333333, 1, 0)
AimIntensity.TextSize = 24
AimIntensity.TextXAlignment = Enum.TextXAlignment.Left

value_12.Name = "value"
value_12.Parent = AimIntensity
value_12.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_12.BorderColor3 = Color3.new(0.333333, 1, 0)
value_12.Position = UDim2.new(8.23432856e-05, 0, 0.927285314, 0)
value_12.Size = UDim2.new(0, 337, 0, 28)
value_12.Font = Enum.Font.Highway
value_12.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
value_12.PlaceholderText = "Default is 250"
value_12.Text = "250"
value_12.TextColor3 = Color3.new(0.333333, 1, 0)
value_12.TextSize = 24
value_12.TextXAlignment = Enum.TextXAlignment.Left

TeamUI.Name = "TeamUI"
TeamUI.Parent = Aimbot
TeamUI.BackgroundColor3 = Color3.new(0, 0, 0)
TeamUI.BorderColor3 = Color3.new(0.333333, 1, 0)
TeamUI.Position = UDim2.new(0.460416645, 0, 0.239812747, 0)
TeamUI.Size = UDim2.new(0, 352, 0, 309)
TeamUI.Visible = false

WhitelistedTeams.Name = "WhitelistedTeams"
WhitelistedTeams.Parent = TeamUI
WhitelistedTeams.Active = true
WhitelistedTeams.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistedTeams.BorderColor3 = Color3.new(0.333333, 1, 0)
WhitelistedTeams.Position = UDim2.new(0.0201041475, 0, 0.457388461, 0)
WhitelistedTeams.Size = UDim2.new(0, 336, 0, 136)
WhitelistedTeams.ZIndex = 2
WhitelistedTeams.CanvasSize = UDim2.new(0, 0, 0, 0)

whitelistframe_2.Name = "whitelistframe"
whitelistframe_2.Parent = WhitelistedTeams
whitelistframe_2.BackgroundColor3 = Color3.new(0, 0, 0)
whitelistframe_2.BorderColor3 = Color3.new(0.333333, 1, 0)
whitelistframe_2.Size = UDim2.new(0, 336, 0, 37)
whitelistframe_2.Visible = false

TextLabel_2.Parent = whitelistframe_2
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Size = UDim2.new(0, 258, 0, 37)
TextLabel_2.Font = Enum.Font.Highway
TextLabel_2.Text = "[Criminal] will be ignored when on [Prisoner]"
TextLabel_2.TextColor3 = Color3.new(0.333333, 1, 0)
TextLabel_2.TextSize = 18
TextLabel_2.TextWrapped = true

undo.Name = "undo"
undo.Parent = whitelistframe_2
undo.BackgroundColor3 = Color3.new(1, 1, 1)
undo.BackgroundTransparency = 1
undo.Position = UDim2.new(0.767874956, 0, 0, 0)
undo.Size = UDim2.new(0, 76, 0, 37)
undo.Font = Enum.Font.Highway
undo.Text = "undo"
undo.TextColor3 = Color3.new(1, 0, 0)
undo.TextSize = 22
undo.TextWrapped = true

UIListLayout_2.Parent = WhitelistedTeams
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

WLTeam.Name = "WLTeam"
WLTeam.Parent = TeamUI
WLTeam.BackgroundColor3 = Color3.new(0, 0, 0)
WLTeam.BorderColor3 = Color3.new(0.333333, 1, 0)
WLTeam.Position = UDim2.new(0.260002017, 0, 0.355608493, 0)
WLTeam.Size = UDim2.new(0, 168, 0, 32)
WLTeam.Font = Enum.Font.Highway
WLTeam.Text = "Whitelist"
WLTeam.TextColor3 = Color3.new(0.333333, 1, 0)
WLTeam.TextScaled = true
WLTeam.TextSize = 24
WLTeam.TextWrapped = true

whitelistteam.Name = "whitelistteam"
whitelistteam.Parent = TeamUI
whitelistteam.BackgroundColor3 = Color3.new(0, 0.333333, 0)
whitelistteam.BorderColor3 = Color3.new(0.333333, 1, 0)
whitelistteam.Position = UDim2.new(0.548530579, 0, 0.230982572, 0)
whitelistteam.Size = UDim2.new(0, 158, 0, 28)
whitelistteam.Font = Enum.Font.Highway
whitelistteam.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
whitelistteam.PlaceholderText = "Team to whitelist"
whitelistteam.Text = ""
whitelistteam.TextColor3 = Color3.new(0.333333, 1, 0)
whitelistteam.TextScaled = true
whitelistteam.TextSize = 24
whitelistteam.TextWrapped = true

yourteam.Name = "yourteam"
yourteam.Parent = TeamUI
yourteam.BackgroundColor3 = Color3.new(0, 0.333333, 0)
yourteam.BorderColor3 = Color3.new(0.333333, 1, 0)
yourteam.Position = UDim2.new(0.548513234, 0, 0.104414456, 0)
yourteam.Size = UDim2.new(0, 158, 0, 28)
yourteam.Font = Enum.Font.Highway
yourteam.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
yourteam.PlaceholderText = "Your team"
yourteam.Text = ""
yourteam.TextColor3 = Color3.new(0.333333, 1, 0)
yourteam.TextScaled = true
yourteam.TextSize = 24
yourteam.TextWrapped = true

label1.Name = "label1"
label1.Parent = TeamUI
label1.BackgroundColor3 = Color3.new(0, 0, 0)
label1.BackgroundTransparency = 1
label1.BorderColor3 = Color3.new(0.333333, 1, 0)
label1.Position = UDim2.new(0.00307625066, 0, 0.107597612, 0)
label1.Size = UDim2.new(0, 192, 0, 30)
label1.Font = Enum.Font.Highway
label1.Text = "When on this team: "
label1.TextColor3 = Color3.new(0.333333, 1, 0)
label1.TextSize = 24
label1.TextWrapped = true
label1.TextXAlignment = Enum.TextXAlignment.Left

label2.Name = "label2"
label2.Parent = TeamUI
label2.BackgroundColor3 = Color3.new(0, 0, 0)
label2.BackgroundTransparency = 1
label2.BorderColor3 = Color3.new(0.333333, 1, 0)
label2.Position = UDim2.new(0.00305864029, 0, 0.22910738, 0)
label2.Size = UDim2.new(0, 192, 0, 30)
label2.Font = Enum.Font.Highway
label2.Text = "Ignore this team:"
label2.TextColor3 = Color3.new(0.333333, 1, 0)
label2.TextSize = 24
label2.TextWrapped = true
label2.TextXAlignment = Enum.TextXAlignment.Left

Title_5.Name = "Title"
Title_5.Parent = TeamUI
Title_5.BackgroundColor3 = Color3.new(0, 0, 0)
Title_5.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_5.Size = UDim2.new(0, 305, 0, 31)
Title_5.Font = Enum.Font.Highway
Title_5.Text = "Team Whitelister"
Title_5.TextColor3 = Color3.new(0.333333, 1, 0)
Title_5.TextSize = 31
Title_5.TextWrapped = true

X_4.Name = "X"
X_4.Parent = TeamUI
X_4.BackgroundColor3 = Color3.new(0, 0, 0)
X_4.BorderColor3 = Color3.new(0.333333, 1, 0)
X_4.Position = UDim2.new(0.866781771, 0, 0, 0)
X_4.Size = UDim2.new(0, 46, 0, 31)
X_4.Font = Enum.Font.Highway
X_4.Text = "Close"
X_4.TextColor3 = Color3.new(1, 0, 0)
X_4.TextScaled = true
X_4.TextSize = 14
X_4.TextWrapped = true

SwitchToSettings.Name = "SwitchToSettings"
SwitchToSettings.Parent = TeamUI
SwitchToSettings.BackgroundColor3 = Color3.new(0, 0, 0)
SwitchToSettings.BorderColor3 = Color3.new(0.333333, 1, 0)
SwitchToSettings.Position = UDim2.new(0.260002136, 0, 0.89751792, 0)
SwitchToSettings.Size = UDim2.new(0, 168, 0, 31)
SwitchToSettings.Font = Enum.Font.Highway
SwitchToSettings.Text = "Edit Game Settings"
SwitchToSettings.TextColor3 = Color3.new(0.333333, 1, 0)
SwitchToSettings.TextScaled = true
SwitchToSettings.TextSize = 24
SwitchToSettings.TextWrapped = true
-- Scripts:
function SCRIPT_WZTM70_FAKESCRIPT() -- Aimbot.Scripts 
	local script = Instance.new('LocalScript')
	script.Parent = Aimbot
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()
	if not _G.RedsAimbot then
	_G.RedsAimbot = true
	
	for i,v in pairs(script.Parent:GetDescendants()) do
	if v.ClassName == "Frame" and v.Parent.ClassName ~= "ScrollingFrame" then
	v.Draggable = true
	v.Active = true
	end
	if v.ClassName == "ScrollingFrame" then
	v.AutomaticCanvasSize = 2
	v.ScrollBarImageColor3 = Color3.new(0,1,0)
	end
	end
	
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
	
	local tablecount = function(t)
	local n = 0
	for i,v in pairs(t) do n = n + 1 end
	return n
	end
	
	local TableAdded = function(Table, func)
	    local count = tablecount(Table)
		local clone = table.clone(Table)
		local elapsedTime = 0
	
	    thread(function()
	        while true do
	            repeat elapsedTime = elapsedTime + task.wait() until tablecount(Table) ~= count
				if tablecount(Table) > count then
	
	            for i,v in pairs(Table) do
	                if clone[i] == nil then
	
					local v,v2 = thread(function()
	                    return func(i,v,elapsedTime)
					end)
	
					if v2 == "stop" then break end
	                end
	            end
				elapsedTime = 0
				end
	
	            count = tablecount(Table)
				clone = table.clone(Table)
	    end
	    end)
	
	end
	
	local TableChanged = function(Table,f)
	
	    for i,v in pairs(Table) do
	
	        Changed(Table,i,function(...)
			f(i,...)
			end)
	
	    end
	
	    TableAdded(Table,function(index,value,t)
	        f(index,value,nil,t)
	
	        Changed(Table,index,function(...)
			f(index,...)
			end)
	
	    end)
	end
	
	local plrs = game.Players
	local lplr = plrs.LocalPlayer
	
	local ischaracter = function(part)
	
	for i,v in pairs(GetFamily(part)) do
	
	for i,plr in pairs(plrs:GetPlayers()) do
	if plr.Character == v then
	return v
	end
	end
	
	end
	end
	
	local isnpc = function(ins)
	
	for i,v in pairs(GetFamily(ins,true)) do
	if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("HumanoidRootPart") and not ischaracter(v) then
	return v
	end
	end
	
	end
	
	local wlui = script.Parent.ManagerUI
	local gamesettings = script.Parent.GameSettingsUI
	local globalsettings = script.Parent.GlobalSettingsUI
	local teamui = script.Parent.TeamUI
	local teams = game.Teams
	
	if syn then
	syn.protect_gui(script.Parent)
	end
	
	local WhitelistedPlrs = {}
	local PrioritizedPlrs = {}
	local m = lplr:GetMouse()
	local misc = {}
	misc.IsAimbotOn = false
	misc.TargetedCharacter = ""
	local GlobalStats
	local GameStats
	local Keybinds
	
	local function gengamestats()
	GlobalStats[game.PlaceId] = {}
	GameStats = GlobalStats[game.PlaceId]
	GameStats.Target = "Head"
	GameStats.TargetNPCs = false
	GameStats.AutoTarget = true
	GameStats.FPEnabled = true
	GameStats.WhitelistFriends = false
	GameStats.MaxStuds = 500
	GameStats.OwnTeamWhitelisted = true
	GameStats.Teams = {}
	GameStats.TargetCloserPlayers = true
	end
	
	if isfile and loadfile and isfile("RedsAimbotStats.lua") then
	GlobalStats = loadfile("RedsAimbotStats.lua")()
	
	if GlobalStats.TeamAutofill == nil then
	GlobalStats.TeamAutofill = true
	end
	
	if not GlobalStats.AimIntensity then
	GlobalStats.AimIntensity = 250
	end
	
	if not GlobalStats[game.PlaceId] then
	gengamestats()
	end
	
	for i,v in pairs(GlobalStats[game.PlaceId]) do
	if type(v) ~= "table" then
	gamesettings[i].value.Text = tostring(v)
	end
	end
	
	for i,v in pairs(GlobalStats.Keybinds) do
	if globalsettings:FindFirstChild(i) then
	globalsettings[i].value.Text = tostring(v)
	end
	end
	
	globalsettings.TeamAutofill.value.Text = tostring(GlobalStats.TeamAutofill)
	else
	GlobalStats = {}
	GlobalStats.Keybinds = {}
	GlobalStats.TeamAutofill = true
	GlobalStats.AimIntensity = 250
	gengamestats()
	GlobalStats.Keybinds.AimbotToggle = Enum.KeyCode.LeftAlt
	GlobalStats.Keybinds.TargetedPartToggle = Enum.KeyCode.RightAlt
	end
	
	GameStats = GlobalStats[game.PlaceId]
	Keybinds = GlobalStats.Keybinds
	
	if not GameStats.Teams then
	GameStats.Teams = {}
	end
	
	if GameStats.TargetNPCs == nil then
	GameStats.TargetNPCs = false
	end
	
	if GameStats.TargetCloserPlayers == nil then
	GameStats.TargetCloserPlayers = true
	end
	
	local function savesettings()
	if writefile then
	writefile("RedsAimbotStats.lua", TableToString(GlobalStats, "AimbotStats"))
	end
	end
	
	TableChanged(GlobalStats[game.PlaceId], savesettings)
	TableChanged(GlobalStats.Keybinds, savesettings)
	TableChanged(GlobalStats, savesettings)
	TableChanged(GlobalStats[game.PlaceId].Teams, savesettings)
	
	local addteamframe = function(ttable)
	local clone = teamui.WhitelistedTeams.whitelistframe:Clone()
	clone.Parent = teamui.WhitelistedTeams
	clone.TextLabel.Text = "["..ttable.team2.."] will be ignored when on ["..ttable.team1.."]"
	clone.Visible = true
	
	clone.undo.MouseButton1Click:connect(function()
	clone:Destroy()
	local tfind = table.find(GameStats.Teams,ttable)
	table.remove(GameStats.Teams,tfind)
	end)
	
	end
	
	for i,v in pairs(GameStats.Teams) do
	addteamframe(v)
	end
	
	local deselect = function()
	misc.TargetedCharacter = ""
	end
	local function Died(player)
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
	
	local function CheckDN(plr)
	if plr.DisplayName == plr.Name then
	return plr.Name
	else
	return plr.Name.." (DisplayName: "..plr.DisplayName..")"
	end
	end
	
	local function IsNotWhitelisted(plr)
	
	local function isteamwhitelisted()
	local wl = false
	
	for i,ttable in pairs(GameStats.Teams) do
	if teams:FindFirstChild(ttable.team1) and teams:FindFirstChild(ttable.team2) then
	if lplr.Team.Name == ttable.team1 and plr.Team.Name == ttable.team2 then
	wl = true
	break
	end
	end
	
	end
	return wl
	end
	
	local validteam, teamname = pcall(function()
	return plr.Team.Name
	end)
	if validteam then
	if GameStats.OwnTeamWhitelisted then
	return plr.Team ~= lplr.Team and not table.find(WhitelistedPlrs, plr) and not isteamwhitelisted()
	else
	return not table.find(WhitelistedPlrs, plr) and not isteamwhitelisted()
	end
	else
	return not table.find(WhitelistedPlrs, plr)
	end
	end
	
	local function selectcharacter(chr)
	if misc.IsAimbotOn and misc.TargetedCharacter == "" and not GameStats.TargetCloserPlayers or GameStats.TargetCloserPlayers and misc.IsAimbotOn then
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
	
	local function targetplayer(player)
	
	local humanoidvalid, humanoid = pcall(function()
	return player.Character.Humanoid
	end)
	
	if player.Name ~= lplr.Name and humanoidvalid and IsNotWhitelisted(player) and humanoid.Health ~= 0 then
	selectcharacter(player.Character)
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
	if keycode == Keybinds.TargetedPartToggle then
	if GameStats.Target == "Torso" or GameStats.Target == "UpperTorso" then
	GameStats.Target = "Head"
	else
	GameStats.Target = Torso.Name
	end
	end
	if keycode == Keybinds.AimbotToggle then
	misc.IsAimbotOn = not misc.IsAimbotOn
	end
	end)
	
	gamesettings.X.MouseButton1Click:connect(function()
	gamesettings.Visible = false
	end)
	
	for i,v in pairs(gamesettings:GetChildren()) do
	if v:FindFirstChild("value") then
	if type(GameStats[v.Name]) == "boolean" then
	v.value.MouseButton1Click:connect(function()
	GameStats[v.Name] = not GameStats[v.Name]
	end)
	Changed(GameStats,v.Name,function(val)
	v.value.Text = tostring(val)
	end)
	end
	end
	end
	
	gamesettings.Target.value.MouseButton1Click:connect(function()
	if GameStats.Target == "Head" then
	GameStats.Target = Torso.Name
	else
	GameStats.Target = "Head"
	end
	end)
	
	Changed(GameStats,"Target",function(val)
	gamesettings.Target.value.Text = val
	end)
	
	Changed(gamesettings.MaxStuds.value, "Text", function(n)
	local num = tonumber(n)
	if num then
	GameStats.MaxStuds = num
	else 
	GameStats.MaxStuds = 500
	end
	end)
	
	Changed(globalsettings.AimIntensity.value, "Text", function(n)
	local num = tonumber(n)
	if num then
	GlobalStats.AimIntensity = num
	else
	GlobalStats.AimIntensity = 250
	end
	end)
	
	for i,v in pairs(globalsettings:GetChildren()) do
	if v:FindFirstChild("reset") then
	v.reset.MouseButton1Click:connect(function()
	GlobalStats.Keybinds[v.Name] = "none"
	v.value.Text = "none"
	end)
	end
	
	if v:FindFirstChild("value") and v.Name:lower():find("toggle") then
	v.value.MouseButton1Click:connect(function()
	GlobalStats.Keybinds[v.Name] = "none"
	v.value.Text = "Press any key"
	local key = game.UserInputService.InputBegan:Wait()
	GlobalStats.Keybinds[v.Name] = key.KeyCode
	v.value.Text = tostring(key.KeyCode)
	end)
	end
	end
	
	for i,v in pairs(teamui:GetChildren()) do
	if v.ClassName == "TextBox" then
	Changed(v, "Text", function(txt)
	if GlobalStats.TeamAutofill then
	local tnames = {}
	
	for i,v in pairs(teams:GetTeams()) do
	if v.Name:lower():sub(1,txt:len()) == txt:lower() and not table.find(tnames,v.Name) then
	table.insert(tnames,v.Name)
	end
	end
	
	if #tnames == 1 then
	v.Text = tnames[1]
	end
	end
	end)
	end
	end
	
	Changed(GlobalStats,"TeamAutofill",function(v)
	globalsettings.TeamAutofill.value.Text = tostring(v)
	end)
	
	globalsettings.TeamAutofill.value.MouseButton1Click:connect(function()
	GlobalStats.TeamAutofill = not GlobalStats.TeamAutofill
	end)
	
	local wlmsg = teamui.WLTeam.Text
	teamui.WLTeam.MouseButton1Click:connect(function()
	
	local function updatetxt(txt)
	teamui.WLTeam.Text = txt
	wait(2)
	teamui.WLTeam.Text = wlmsg
	end
	
	local team1 = teamui.yourteam.Text
	local team2 = teamui.whitelistteam.Text
	if teams:FindFirstChild(team1) and teams:FindFirstChild(team2) then
	local canadd = true
	
	for i, teamtable in pairs(GameStats.Teams) do
	if teamtable.team1 == team1 and teamtable.team2 == team2 then
	canadd = false
	break
	end
	end
	
	if canadd then
	local newtable = {["team1"] = team1 ,["team2"] = team2}
	table.insert(GameStats.Teams, newtable)
	addteamframe(newtable)
	else
	updatetxt("This already exists")
	end
	else
	updatetxt("Invalid team name(s)")
	end
	end)
	
	globalsettings.X.MouseButton1Click:connect(function()
	globalsettings.Visible = false
	end)
	
	teamui.X.MouseButton1Click:connect(function()
	teamui.Visible = false
	end)
	
	local AimbotFunction = game.RunService.RenderStepped:connect(function()
	if misc.TargetedCharacter ~= "" then
	local part
	
	local bool, result = pcall(function()
	return misc.TargetedCharacter[GameStats.Target]
	end)
	
	if bool then
	part = result
	else
	part = misc.TargetedCharacter.HumanoidRootPart
	end
	
	local v, onscreen = workspace.Camera:WorldToScreenPoint(part.Position)
	
	if onscreen then
	
	local StabilizeNum = GlobalStats.AimIntensity/workspace.Camera.ViewportSize.Y
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
	targetplayer(game.Players[v.Name])
	break
	end
	end
	
	if GameStats.TargetNPCs then
	local npc = isnpc(m.Target)
	if npc and npc.Humanoid.Health > 0 then
	selectcharacter(npc)
	
	Changed(npc.Humanoid, "Health",function(hp)
	if hp <= 0 and misc.TargetedCharacter == npc then
	deselect()
	end
	end)
	
	end
	end
	end
	if GameStats.AutoTarget and not GameStats.TargetNPCs then
	local table1 = {}
	local table2 = {}
	local PrioritizedPlrsOnScreen = {}
	
	for i,v in pairs(plrs:GetPlayers()) do
	
	local outcome = pcall(function()
	 return v.Character.Humanoid and v.Character[GameStats.Target]
	end)
	
	if outcome and v.Name ~= lplr.Name and v.Character.Humanoid.Health ~= 0 and IsNotWhitelisted(v) then
	local pos = math.floor(lplr:DistanceFromCharacter(v.Character[GameStats.Target].Position))
	local _, onscreen = workspace.Camera:WorldToScreenPoint(v.Character[GameStats.Target].Position)
	if onscreen and pos < GameStats.MaxStuds then
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
	targetplayer(player)
	end
	end
	
	end
	
	if GameStats.FPEnabled then
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
	Text = "Added closer player targeting via game settings, on by default + support for npc targeting.";})
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
	if player then
	MainFrame.CurrentTarget.Text = CheckDN(player)
	else
	MainFrame.CurrentTarget.Text = v.Name
	end
	MainFrame.CurrentTarget.TextColor3 = Color3.new(0,1,0)
	else
	MainFrame.CurrentTarget.Text = "none"
	MainFrame.CurrentTarget.TextColor3 = Color3.new(1,0,0)
	end
	end)
	
	MainFrame.Manager.MouseButton1Click:connect(function()
	wlui.Visible = true
	end)
	
	MainFrame.EditGameSettings.MouseButton1Click:connect(function()
	gamesettings.Visible = true
	end)
	
	MainFrame.EditGlobalSettings.MouseButton1Click:connect(function()
	globalsettings.Visible = true
	end)
	
	gamesettings.SwitchToTeam.MouseButton1Click:connect(function()
	gamesettings.Visible = false
	teamui.Visible = true
	end)
	
	teamui.SwitchToSettings.MouseButton1Click:connect(function()
	teamui.Visible = false
	gamesettings.Visible = true
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
	
	local function AddtoList(ins)
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
	
	if ins.ClassName == "Player" and GameStats.WhitelistFriends and lplr:IsFriendsWith(ins.UserId) and Table == WhitelistedPlrs then
	button.TextColor3 = Color3.new(0,1,0)
	button.Text = "Yes"
	table.insert(WhitelistedPlrs, ins)
	end
	
	button.MouseButton1Click:connect(function()
	
	if button.Text == "No" then
	button.TextColor3 = Color3.new(0,1,0)
	button.Text = "Yes"
	table.insert(Table,ins)
	
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
	clone.TextLabel.Text = ins.ClassName..": "..CheckDN(ins)
	togglefunc(WhitelistedPlrs)
	togglefunc(PrioritizedPlrs)
	
	coroutine.resume(coroutine.create(function()
	repeat task.wait() until not game.Players:FindFirstChild(ins.Name)
	clone:Destroy()
	end))
	
	end
	
	for i,plr in pairs(plrs:GetPlayers()) do
	if plr ~= lplr then
	AddtoList(plr)
	end
	end
	
	plrs.PlayerAdded:connect(AddtoList)
	
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
	Text = "You've already executed this. Deleting clone GUI.";
	})
	
	task.wait(0.2)
	script.Parent:Destroy()
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_WZTM70_FAKESCRIPT))
