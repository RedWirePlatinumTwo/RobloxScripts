-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Aimbot = Instance.new("ScreenGui")
local MFrame = Instance.new("Frame")
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
local X = Instance.new("TextButton")
local SwitchToTeam = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local FPEnabled = Instance.new("TextLabel")
local value = Instance.new("TextButton")
local AutoTarget = Instance.new("TextLabel")
local value_2 = Instance.new("TextButton")
local Target = Instance.new("TextLabel")
local value_3 = Instance.new("TextButton")
local WhitelistFriends = Instance.new("TextLabel")
local value_4 = Instance.new("TextButton")
local MaxStuds = Instance.new("TextLabel")
local value_5 = Instance.new("TextBox")
local OwnTeamWhitelisted = Instance.new("TextLabel")
local value_6 = Instance.new("TextButton")
local TargetCloserPlayers = Instance.new("TextLabel")
local value_7 = Instance.new("TextButton")
local About = Instance.new("TextLabel")
local TargetNPCs = Instance.new("TextLabel")
local value_8 = Instance.new("TextButton")
local IgnorePlayers = Instance.new("TextLabel")
local value_9 = Instance.new("TextButton")
local GlobalSettingsUI = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local X_2 = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local AimIntensity = Instance.new("TextLabel")
local value_10 = Instance.new("TextBox")
local AimbotToggle = Instance.new("TextLabel")
local value_11 = Instance.new("TextButton")
local reset = Instance.new("TextButton")
local TargetedPartToggle = Instance.new("TextLabel")
local value_12 = Instance.new("TextButton")
local reset_2 = Instance.new("TextButton")
local RightClickAim = Instance.new("TextLabel")
local value_13 = Instance.new("TextButton")
local TeamAutofill = Instance.new("TextLabel")
local value_14 = Instance.new("TextButton")
local NPCToggle = Instance.new("TextLabel")
local value_15 = Instance.new("TextButton")
local reset_3 = Instance.new("TextButton")
local TeamUI = Instance.new("Frame")
local WhitelistedTeams = Instance.new("ScrollingFrame")
local whitelistframe_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local undo = Instance.new("TextButton")
local UIListLayout_4 = Instance.new("UIListLayout")
local WLTeam = Instance.new("TextButton")
local whitelistteam = Instance.new("TextBox")
local yourteam = Instance.new("TextBox")
local label1 = Instance.new("TextLabel")
local label2 = Instance.new("TextLabel")
local Title_5 = Instance.new("TextLabel")
local X_3 = Instance.new("TextButton")
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

Title.Name = "Title"
Title.Parent = MFrame
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.new(0.333333, 1, 0)
Title.Size = UDim2.new(0, 260, 0, 44)
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
GameSettingsUI.Position = UDim2.new(0.497395843, 0, 0.17027837, 0)
GameSettingsUI.Size = UDim2.new(0, 304, 0, 342)
GameSettingsUI.Visible = false

Title_3.Name = "Title"
Title_3.Parent = GameSettingsUI
Title_3.BackgroundColor3 = Color3.new(0, 0, 0)
Title_3.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_3.Position = UDim2.new(0, 0, 6.75980773e-05, 0)
Title_3.Size = UDim2.new(0, 257, 0, 31)
Title_3.Font = Enum.Font.Highway
Title_3.Text = "Game Settings"
Title_3.TextColor3 = Color3.new(0.333333, 1, 0)
Title_3.TextSize = 32
Title_3.TextWrapped = true

X.Name = "X"
X.Parent = GameSettingsUI
X.BackgroundColor3 = Color3.new(0, 0, 0)
X.BorderColor3 = Color3.new(0.333333, 1, 0)
X.Position = UDim2.new(0.845934451, 0, 0, 0)
X.Size = UDim2.new(0, 46, 0, 32)
X.Font = Enum.Font.Highway
X.Text = "Close"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

SwitchToTeam.Name = "SwitchToTeam"
SwitchToTeam.Parent = GameSettingsUI
SwitchToTeam.BackgroundColor3 = Color3.new(0, 0, 0)
SwitchToTeam.BorderColor3 = Color3.new(0.333333, 1, 0)
SwitchToTeam.Position = UDim2.new(0.137113139, 0, 0.891942263, 0)
SwitchToTeam.Size = UDim2.new(0, 210, 0, 36)
SwitchToTeam.Font = Enum.Font.Highway
SwitchToTeam.Text = "Whitelist Teams"
SwitchToTeam.TextColor3 = Color3.new(0.333333, 1, 0)
SwitchToTeam.TextSize = 24
SwitchToTeam.TextWrapped = true

ScrollingFrame.Parent = GameSettingsUI
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderColor3 = Color3.new(0.333333, 1, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0.0918694586, 0)
ScrollingFrame.Size = UDim2.new(0, 303, 0, 255)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_2.Parent = ScrollingFrame

FPEnabled.Name = "FPEnabled"
FPEnabled.Parent = ScrollingFrame
FPEnabled.BackgroundColor3 = Color3.new(0, 0, 0)
FPEnabled.BackgroundTransparency = 1
FPEnabled.BorderColor3 = Color3.new(0, 0.666667, 0)
FPEnabled.BorderSizePixel = 0
FPEnabled.Position = UDim2.new(0, 0, 0.247058824, 0)
FPEnabled.Size = UDim2.new(0, 169, 0, 63)
FPEnabled.Font = Enum.Font.Highway
FPEnabled.Text = "First Person Mode Enabled:"
FPEnabled.TextColor3 = Color3.new(0.333333, 1, 0)
FPEnabled.TextSize = 24
FPEnabled.TextXAlignment = Enum.TextXAlignment.Left
FPEnabled.TextYAlignment = Enum.TextYAlignment.Top

value.Name = "value"
value.Parent = FPEnabled
value.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value.BorderColor3 = Color3.new(0.333333, 1, 0)
value.Position = UDim2.new(0, 0, 0.548714161, 0)
value.Size = UDim2.new(0, 290, 0, 28)
value.Font = Enum.Font.Highway
value.Text = "true"
value.TextColor3 = Color3.new(0.333333, 1, 0)
value.TextSize = 24
value.TextXAlignment = Enum.TextXAlignment.Left

AutoTarget.Name = "AutoTarget"
AutoTarget.Parent = ScrollingFrame
AutoTarget.BackgroundColor3 = Color3.new(0, 0, 0)
AutoTarget.BackgroundTransparency = 1
AutoTarget.BorderColor3 = Color3.new(0, 0.666667, 0)
AutoTarget.BorderSizePixel = 0
AutoTarget.Size = UDim2.new(0, 169, 0, 63)
AutoTarget.Font = Enum.Font.Highway
AutoTarget.Text = "Auto-Targeting Enabled:"
AutoTarget.TextColor3 = Color3.new(0.333333, 1, 0)
AutoTarget.TextSize = 24
AutoTarget.TextXAlignment = Enum.TextXAlignment.Left
AutoTarget.TextYAlignment = Enum.TextYAlignment.Top

value_2.Name = "value"
value_2.Parent = AutoTarget
value_2.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_2.BorderColor3 = Color3.new(0.333333, 1, 0)
value_2.Position = UDim2.new(-0.000219581649, 0, 0.522047281, 0)
value_2.Size = UDim2.new(0, 290, 0, 28)
value_2.Font = Enum.Font.Highway
value_2.Text = "true"
value_2.TextColor3 = Color3.new(0.333333, 1, 0)
value_2.TextSize = 24
value_2.TextXAlignment = Enum.TextXAlignment.Left

Target.Name = "Target"
Target.Parent = ScrollingFrame
Target.BackgroundColor3 = Color3.new(0, 0, 0)
Target.BackgroundTransparency = 1
Target.BorderColor3 = Color3.new(0, 0.666667, 0)
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0, 0, 0.474509805, 0)
Target.Size = UDim2.new(0, 169, 0, 63)
Target.Font = Enum.Font.Highway
Target.Text = "Targeted Part:"
Target.TextColor3 = Color3.new(0.333333, 1, 0)
Target.TextSize = 24
Target.TextXAlignment = Enum.TextXAlignment.Left
Target.TextYAlignment = Enum.TextYAlignment.Top

value_3.Name = "value"
value_3.Parent = Target
value_3.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_3.BorderColor3 = Color3.new(0.333333, 1, 0)
value_3.Position = UDim2.new(0, 0, 0.53204751, 0)
value_3.Size = UDim2.new(0, 290, 0, 28)
value_3.Font = Enum.Font.Highway
value_3.Text = "Head"
value_3.TextColor3 = Color3.new(0.333333, 1, 0)
value_3.TextSize = 24
value_3.TextXAlignment = Enum.TextXAlignment.Left

WhitelistFriends.Name = "WhitelistFriends"
WhitelistFriends.Parent = ScrollingFrame
WhitelistFriends.BackgroundColor3 = Color3.new(0, 0, 0)
WhitelistFriends.BackgroundTransparency = 1
WhitelistFriends.BorderColor3 = Color3.new(0, 0.666667, 0)
WhitelistFriends.BorderSizePixel = 0
WhitelistFriends.Position = UDim2.new(0, 0, 0.752941191, 0)
WhitelistFriends.Size = UDim2.new(0, 169, 0, 63)
WhitelistFriends.Font = Enum.Font.Highway
WhitelistFriends.Text = "Whitelist Friends:"
WhitelistFriends.TextColor3 = Color3.new(0.333333, 1, 0)
WhitelistFriends.TextSize = 24
WhitelistFriends.TextXAlignment = Enum.TextXAlignment.Left
WhitelistFriends.TextYAlignment = Enum.TextYAlignment.Top

value_4.Name = "value"
value_4.Parent = WhitelistFriends
value_4.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_4.BorderColor3 = Color3.new(0.333333, 1, 0)
value_4.Position = UDim2.new(0.00591715984, 0, 0.494633496, 0)
value_4.Size = UDim2.new(0, 290, 0, 28)
value_4.Font = Enum.Font.Highway
value_4.Text = "false"
value_4.TextColor3 = Color3.new(0.333333, 1, 0)
value_4.TextSize = 24
value_4.TextXAlignment = Enum.TextXAlignment.Left

MaxStuds.Name = "MaxStuds"
MaxStuds.Parent = ScrollingFrame
MaxStuds.BackgroundColor3 = Color3.new(0, 0, 0)
MaxStuds.BackgroundTransparency = 1
MaxStuds.BorderColor3 = Color3.new(0, 0.666667, 0)
MaxStuds.BorderSizePixel = 0
MaxStuds.Position = UDim2.new(0, 0, 0.474509805, 0)
MaxStuds.Size = UDim2.new(0, 169, 0, 63)
MaxStuds.Font = Enum.Font.Highway
MaxStuds.Text = "Auto-Target max studs:"
MaxStuds.TextColor3 = Color3.new(0.333333, 1, 0)
MaxStuds.TextSize = 24
MaxStuds.TextXAlignment = Enum.TextXAlignment.Left
MaxStuds.TextYAlignment = Enum.TextYAlignment.Top

value_5.Name = "value"
value_5.Parent = MaxStuds
value_5.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_5.BorderColor3 = Color3.new(0.333333, 1, 0)
value_5.Position = UDim2.new(-0.00595760904, 0, 0.490557313, 0)
value_5.Size = UDim2.new(0, 290, 0, 28)
value_5.Font = Enum.Font.Highway
value_5.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
value_5.PlaceholderText = "Default is 500"
value_5.Text = "500"
value_5.TextColor3 = Color3.new(0.333333, 1, 0)
value_5.TextSize = 24
value_5.TextXAlignment = Enum.TextXAlignment.Left

OwnTeamWhitelisted.Name = "OwnTeamWhitelisted"
OwnTeamWhitelisted.Parent = ScrollingFrame
OwnTeamWhitelisted.BackgroundColor3 = Color3.new(0, 0, 0)
OwnTeamWhitelisted.BackgroundTransparency = 1
OwnTeamWhitelisted.BorderColor3 = Color3.new(0, 0.666667, 0)
OwnTeamWhitelisted.BorderSizePixel = 0
OwnTeamWhitelisted.Position = UDim2.new(0, 0, 0.58431375, 0)
OwnTeamWhitelisted.Size = UDim2.new(0, 169, 0, 63)
OwnTeamWhitelisted.Font = Enum.Font.Highway
OwnTeamWhitelisted.Text = "Whitelist own team:"
OwnTeamWhitelisted.TextColor3 = Color3.new(0.333333, 1, 0)
OwnTeamWhitelisted.TextSize = 24
OwnTeamWhitelisted.TextXAlignment = Enum.TextXAlignment.Left
OwnTeamWhitelisted.TextYAlignment = Enum.TextYAlignment.Top

value_6.Name = "value"
value_6.Parent = OwnTeamWhitelisted
value_6.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_6.BorderColor3 = Color3.new(0.333333, 1, 0)
value_6.Position = UDim2.new(4.04492021e-05, 0, 0.544637918, 0)
value_6.Size = UDim2.new(0, 290, 0, 28)
value_6.Font = Enum.Font.Highway
value_6.Text = "true"
value_6.TextColor3 = Color3.new(0.333333, 1, 0)
value_6.TextSize = 24
value_6.TextXAlignment = Enum.TextXAlignment.Left

TargetCloserPlayers.Name = "TargetCloserPlayers"
TargetCloserPlayers.Parent = ScrollingFrame
TargetCloserPlayers.BackgroundColor3 = Color3.new(0, 0, 0)
TargetCloserPlayers.BackgroundTransparency = 1
TargetCloserPlayers.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetCloserPlayers.BorderSizePixel = 0
TargetCloserPlayers.Position = UDim2.new(0, 0, 0.0862745121, 0)
TargetCloserPlayers.Size = UDim2.new(0, 169, 0, 123)
TargetCloserPlayers.Font = Enum.Font.Highway
TargetCloserPlayers.Text = "Target Closer Players:"
TargetCloserPlayers.TextColor3 = Color3.new(0.333333, 1, 0)
TargetCloserPlayers.TextSize = 24
TargetCloserPlayers.TextXAlignment = Enum.TextXAlignment.Left
TargetCloserPlayers.TextYAlignment = Enum.TextYAlignment.Top

value_7.Name = "value"
value_7.Parent = TargetCloserPlayers
value_7.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_7.BorderColor3 = Color3.new(0.333333, 1, 0)
value_7.Position = UDim2.new(0.00591715984, 0, 0.234471068, 0)
value_7.Size = UDim2.new(0, 290, 0, 28)
value_7.Font = Enum.Font.Highway
value_7.Text = "true"
value_7.TextColor3 = Color3.new(0.333333, 1, 0)
value_7.TextSize = 24
value_7.TextXAlignment = Enum.TextXAlignment.Left

About.Name = "About"
About.Parent = TargetCloserPlayers
About.BackgroundColor3 = Color3.new(0, 0, 0)
About.BackgroundTransparency = 1
About.BorderColor3 = Color3.new(0, 0.666667, 0)
About.BorderSizePixel = 0
About.Position = UDim2.new(0.0153534114, 0, 0.51167953, 0)
About.Size = UDim2.new(0, 286, 0, 60)
About.Font = Enum.Font.Highway
About.Text = "If enabled, targets can swap with players closer to you. If disabled, targets will only swap if dead. Prioritized players will only swap with other prioritized players."
About.TextColor3 = Color3.new(0.333333, 1, 0)
About.TextScaled = true
About.TextSize = 24
About.TextWrapped = true

TargetNPCs.Name = "TargetNPCs"
TargetNPCs.Parent = ScrollingFrame
TargetNPCs.BackgroundColor3 = Color3.new(0, 0, 0)
TargetNPCs.BackgroundTransparency = 1
TargetNPCs.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetNPCs.BorderSizePixel = 0
TargetNPCs.Position = UDim2.new(0, 0, 0.494117677, 0)
TargetNPCs.Size = UDim2.new(0, 169, 0, 63)
TargetNPCs.Font = Enum.Font.Highway
TargetNPCs.Text = "Target NPCs:"
TargetNPCs.TextColor3 = Color3.new(0.333333, 1, 0)
TargetNPCs.TextSize = 24
TargetNPCs.TextXAlignment = Enum.TextXAlignment.Left
TargetNPCs.TextYAlignment = Enum.TextYAlignment.Top

value_8.Name = "value"
value_8.Parent = TargetNPCs
value_8.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_8.BorderColor3 = Color3.new(0.333333, 1, 0)
value_8.Position = UDim2.new(0, 0, 0.446332812, 0)
value_8.Size = UDim2.new(0, 290, 0, 28)
value_8.Font = Enum.Font.Highway
value_8.Text = "false"
value_8.TextColor3 = Color3.new(0.333333, 1, 0)
value_8.TextSize = 24
value_8.TextXAlignment = Enum.TextXAlignment.Left

IgnorePlayers.Name = "IgnorePlayers"
IgnorePlayers.Parent = ScrollingFrame
IgnorePlayers.BackgroundColor3 = Color3.new(0, 0, 0)
IgnorePlayers.BackgroundTransparency = 1
IgnorePlayers.BorderColor3 = Color3.new(0, 0.666667, 0)
IgnorePlayers.BorderSizePixel = 0
IgnorePlayers.Position = UDim2.new(0, 0, 0.247058824, 0)
IgnorePlayers.Size = UDim2.new(0, 169, 0, 63)
IgnorePlayers.Font = Enum.Font.Highway
IgnorePlayers.Text = "Ignore Players:"
IgnorePlayers.TextColor3 = Color3.new(0.333333, 1, 0)
IgnorePlayers.TextSize = 24
IgnorePlayers.TextXAlignment = Enum.TextXAlignment.Left
IgnorePlayers.TextYAlignment = Enum.TextYAlignment.Top

value_9.Name = "value"
value_9.Parent = IgnorePlayers
value_9.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_9.BorderColor3 = Color3.new(0.333333, 1, 0)
value_9.Position = UDim2.new(0, 0, 0.548714161, 0)
value_9.Size = UDim2.new(0, 290, 0, 28)
value_9.Font = Enum.Font.Highway
value_9.Text = "false"
value_9.TextColor3 = Color3.new(0.333333, 1, 0)
value_9.TextSize = 24
value_9.TextXAlignment = Enum.TextXAlignment.Left

GlobalSettingsUI.Name = "GlobalSettingsUI"
GlobalSettingsUI.Parent = Aimbot
GlobalSettingsUI.BackgroundColor3 = Color3.new(0, 0, 0)
GlobalSettingsUI.BorderColor3 = Color3.new(0.333333, 1, 0)
GlobalSettingsUI.Position = UDim2.new(0.402604163, 0, 0.130555555, 0)
GlobalSettingsUI.Size = UDim2.new(0, 347, 0, 323)
GlobalSettingsUI.Visible = false

Title_4.Name = "Title"
Title_4.Parent = GlobalSettingsUI
Title_4.BackgroundColor3 = Color3.new(0, 0, 0)
Title_4.BorderColor3 = Color3.new(0.333333, 1, 0)
Title_4.Size = UDim2.new(0, 300, 0, 31)
Title_4.Font = Enum.Font.Highway
Title_4.Text = "Global Settings"
Title_4.TextColor3 = Color3.new(0.333333, 1, 0)
Title_4.TextSize = 32
Title_4.TextWrapped = true

X_2.Name = "X"
X_2.Parent = GlobalSettingsUI
X_2.BackgroundColor3 = Color3.new(0, 0, 0)
X_2.BorderColor3 = Color3.new(0.333333, 1, 0)
X_2.Position = UDim2.new(0.866863608, 0, 0, 0)
X_2.Size = UDim2.new(0, 46, 0, 31)
X_2.Font = Enum.Font.Highway
X_2.Text = "Close"
X_2.TextColor3 = Color3.new(1, 0, 0)
X_2.TextScaled = true
X_2.TextSize = 14
X_2.TextWrapped = true

ScrollingFrame_2.Parent = GlobalSettingsUI
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame_2.BorderColor3 = Color3.new(0.333333, 1, 0)
ScrollingFrame_2.Position = UDim2.new(0, 0, 0.0959752351, 0)
ScrollingFrame_2.Size = UDim2.new(0, 346, 0, 292)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_3.Parent = ScrollingFrame_2

AimIntensity.Name = "AimIntensity"
AimIntensity.Parent = ScrollingFrame_2
AimIntensity.BackgroundColor3 = Color3.new(0, 0, 0)
AimIntensity.BackgroundTransparency = 1
AimIntensity.BorderColor3 = Color3.new(0, 0.666667, 0)
AimIntensity.BorderSizePixel = 0
AimIntensity.Size = UDim2.new(0, 169, 0, 59)
AimIntensity.Font = Enum.Font.Highway
AimIntensity.Text = "Aim Intensity"
AimIntensity.TextColor3 = Color3.new(0.333333, 1, 0)
AimIntensity.TextSize = 24
AimIntensity.TextXAlignment = Enum.TextXAlignment.Left
AimIntensity.TextYAlignment = Enum.TextYAlignment.Top

value_10.Name = "value"
value_10.Parent = AimIntensity
value_10.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_10.BorderColor3 = Color3.new(0.333333, 1, 0)
value_10.Position = UDim2.new(8.23433511e-05, 0, 0.520505667, 0)
value_10.Size = UDim2.new(0, 337, 0, 28)
value_10.Font = Enum.Font.Highway
value_10.PlaceholderColor3 = Color3.new(0.333333, 1, 0)
value_10.PlaceholderText = "Default is 250"
value_10.Text = "250"
value_10.TextColor3 = Color3.new(0.333333, 1, 0)
value_10.TextSize = 24
value_10.TextXAlignment = Enum.TextXAlignment.Left

AimbotToggle.Name = "AimbotToggle"
AimbotToggle.Parent = ScrollingFrame_2
AimbotToggle.BackgroundColor3 = Color3.new(0, 0, 0)
AimbotToggle.BackgroundTransparency = 1
AimbotToggle.BorderColor3 = Color3.new(0, 0.666667, 0)
AimbotToggle.BorderSizePixel = 0
AimbotToggle.Position = UDim2.new(0, 0, 0.207017541, 0)
AimbotToggle.Size = UDim2.new(0, 169, 0, 59)
AimbotToggle.Font = Enum.Font.Highway
AimbotToggle.Text = "Aimbot Toggle:"
AimbotToggle.TextColor3 = Color3.new(0.333333, 1, 0)
AimbotToggle.TextSize = 24
AimbotToggle.TextXAlignment = Enum.TextXAlignment.Left
AimbotToggle.TextYAlignment = Enum.TextYAlignment.Top

value_11.Name = "value"
value_11.Parent = AimbotToggle
value_11.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_11.BorderColor3 = Color3.new(0.333333, 1, 0)
value_11.Position = UDim2.new(-0.00591715984, 0, 0.490240097, 0)
value_11.Size = UDim2.new(0, 260, 0, 28)
value_11.Font = Enum.Font.Highway
value_11.Text = "Enum.KeyCode.LeftAlt"
value_11.TextColor3 = Color3.new(0.333333, 1, 0)
value_11.TextSize = 24
value_11.TextXAlignment = Enum.TextXAlignment.Left

reset.Name = "reset"
reset.Parent = AimbotToggle
reset.BackgroundColor3 = Color3.new(0, 0.333333, 0)
reset.BorderColor3 = Color3.new(0.333333, 1, 0)
reset.Position = UDim2.new(1.53846157, 0, 0.490239859, 0)
reset.Size = UDim2.new(0, 78, 0, 28)
reset.Font = Enum.Font.Highway
reset.Text = "Reset"
reset.TextColor3 = Color3.new(1, 0, 0)
reset.TextSize = 24

TargetedPartToggle.Name = "TargetedPartToggle"
TargetedPartToggle.Parent = ScrollingFrame_2
TargetedPartToggle.BackgroundColor3 = Color3.new(0, 0, 0)
TargetedPartToggle.BackgroundTransparency = 1
TargetedPartToggle.BorderColor3 = Color3.new(0, 0.666667, 0)
TargetedPartToggle.BorderSizePixel = 0
TargetedPartToggle.Position = UDim2.new(0, 0, 0.414035082, 0)
TargetedPartToggle.Size = UDim2.new(0, 169, 0, 59)
TargetedPartToggle.Font = Enum.Font.Highway
TargetedPartToggle.Text = "Targeted Part Toggle:"
TargetedPartToggle.TextColor3 = Color3.new(0.333333, 1, 0)
TargetedPartToggle.TextSize = 24
TargetedPartToggle.TextXAlignment = Enum.TextXAlignment.Left
TargetedPartToggle.TextYAlignment = Enum.TextYAlignment.Top

value_12.Name = "value"
value_12.Parent = TargetedPartToggle
value_12.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_12.BorderColor3 = Color3.new(0.333333, 1, 0)
value_12.Position = UDim2.new(0.00591715984, 0, 0.524137616, 0)
value_12.Size = UDim2.new(0, 258, 0, 28)
value_12.Font = Enum.Font.Highway
value_12.Text = "Enum.KeyCode.X"
value_12.TextColor3 = Color3.new(0.333333, 1, 0)
value_12.TextSize = 24
value_12.TextXAlignment = Enum.TextXAlignment.Left

reset_2.Name = "reset"
reset_2.Parent = TargetedPartToggle
reset_2.BackgroundColor3 = Color3.new(0, 0.333333, 0)
reset_2.BorderColor3 = Color3.new(0.333333, 1, 0)
reset_2.Position = UDim2.new(1.53254437, 0, 0.524138212, 0)
reset_2.Size = UDim2.new(0, 78, 0, 28)
reset_2.Font = Enum.Font.Highway
reset_2.Text = "Reset"
reset_2.TextColor3 = Color3.new(1, 0, 0)
reset_2.TextSize = 24

RightClickAim.Name = "RightClickAim"
RightClickAim.Parent = ScrollingFrame_2
RightClickAim.BackgroundColor3 = Color3.new(0, 0, 0)
RightClickAim.BackgroundTransparency = 1
RightClickAim.BorderColor3 = Color3.new(0, 0.666667, 0)
RightClickAim.BorderSizePixel = 0
RightClickAim.Position = UDim2.new(0, 0, 0.414035082, 0)
RightClickAim.Size = UDim2.new(0, 169, 0, 59)
RightClickAim.Font = Enum.Font.Highway
RightClickAim.Text = "Right-click To Aim:"
RightClickAim.TextColor3 = Color3.new(0.333333, 1, 0)
RightClickAim.TextSize = 24
RightClickAim.TextXAlignment = Enum.TextXAlignment.Left
RightClickAim.TextYAlignment = Enum.TextYAlignment.Top

value_13.Name = "value"
value_13.Parent = RightClickAim
value_13.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_13.BorderColor3 = Color3.new(0.333333, 1, 0)
value_13.Position = UDim2.new(0.00591715984, 0, 0.524137616, 0)
value_13.Size = UDim2.new(0, 337, 0, 28)
value_13.Font = Enum.Font.Highway
value_13.Text = "false"
value_13.TextColor3 = Color3.new(0.333333, 1, 0)
value_13.TextSize = 24
value_13.TextXAlignment = Enum.TextXAlignment.Left

TeamAutofill.Name = "TeamAutofill"
TeamAutofill.Parent = ScrollingFrame_2
TeamAutofill.BackgroundColor3 = Color3.new(0, 0, 0)
TeamAutofill.BackgroundTransparency = 1
TeamAutofill.BorderColor3 = Color3.new(0, 0.666667, 0)
TeamAutofill.BorderSizePixel = 0
TeamAutofill.Position = UDim2.new(0, 0, 0.824561417, 0)
TeamAutofill.Size = UDim2.new(0, 169, 0, 59)
TeamAutofill.Font = Enum.Font.Highway
TeamAutofill.Text = "Autofill Team Names:"
TeamAutofill.TextColor3 = Color3.new(0.333333, 1, 0)
TeamAutofill.TextSize = 24
TeamAutofill.TextXAlignment = Enum.TextXAlignment.Left
TeamAutofill.TextYAlignment = Enum.TextYAlignment.Top

value_14.Name = "value"
value_14.Parent = TeamAutofill
value_14.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_14.BorderColor3 = Color3.new(0.333333, 1, 0)
value_14.Position = UDim2.new(0.00591715984, 0, 0.422470868, 0)
value_14.Size = UDim2.new(0, 337, 0, 28)
value_14.Font = Enum.Font.Highway
value_14.Text = "true"
value_14.TextColor3 = Color3.new(0.333333, 1, 0)
value_14.TextSize = 24
value_14.TextXAlignment = Enum.TextXAlignment.Left

NPCToggle.Name = "NPCToggle"
NPCToggle.Parent = ScrollingFrame_2
NPCToggle.BackgroundColor3 = Color3.new(0, 0, 0)
NPCToggle.BackgroundTransparency = 1
NPCToggle.BorderColor3 = Color3.new(0, 0.666667, 0)
NPCToggle.BorderSizePixel = 0
NPCToggle.Position = UDim2.new(0, 0, 0.207017541, 0)
NPCToggle.Size = UDim2.new(0, 169, 0, 59)
NPCToggle.Font = Enum.Font.Highway
NPCToggle.Text = "Target NPC Toggle:"
NPCToggle.TextColor3 = Color3.new(0.333333, 1, 0)
NPCToggle.TextSize = 24
NPCToggle.TextXAlignment = Enum.TextXAlignment.Left
NPCToggle.TextYAlignment = Enum.TextYAlignment.Top

value_15.Name = "value"
value_15.Parent = NPCToggle
value_15.BackgroundColor3 = Color3.new(0, 0.333333, 0)
value_15.BorderColor3 = Color3.new(0.333333, 1, 0)
value_15.Position = UDim2.new(-0.00591715984, 0, 0.490240097, 0)
value_15.Size = UDim2.new(0, 260, 0, 28)
value_15.Font = Enum.Font.Highway
value_15.Text = "none"
value_15.TextColor3 = Color3.new(0.333333, 1, 0)
value_15.TextSize = 24
value_15.TextXAlignment = Enum.TextXAlignment.Left

reset_3.Name = "reset"
reset_3.Parent = NPCToggle
reset_3.BackgroundColor3 = Color3.new(0, 0.333333, 0)
reset_3.BorderColor3 = Color3.new(0.333333, 1, 0)
reset_3.Position = UDim2.new(1.53846157, 0, 0.490239859, 0)
reset_3.Size = UDim2.new(0, 78, 0, 28)
reset_3.Font = Enum.Font.Highway
reset_3.Text = "Reset"
reset_3.TextColor3 = Color3.new(1, 0, 0)
reset_3.TextSize = 24

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

UIListLayout_4.Parent = WhitelistedTeams
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

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

X_3.Name = "X"
X_3.Parent = TeamUI
X_3.BackgroundColor3 = Color3.new(0, 0, 0)
X_3.BorderColor3 = Color3.new(0.333333, 1, 0)
X_3.Position = UDim2.new(0.866781771, 0, 0, 0)
X_3.Size = UDim2.new(0, 46, 0, 31)
X_3.Font = Enum.Font.Highway
X_3.Text = "Close"
X_3.TextColor3 = Color3.new(1, 0, 0)
X_3.TextScaled = true
X_3.TextSize = 14
X_3.TextWrapped = true

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
function SCRIPT_VUDZ90_FAKESCRIPT() -- Aimbot.Scripts 
	local script = Instance.new('LocalScript')
	script.Parent = Aimbot
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()
	
	local function sendnotif(title, text)
		game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Duration = 10;
		Text = text;
		})
	end
	
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
		local m = lplr:GetMouse()
		local RightClick = false
	
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
				if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").RootPart and not ischaracter(v) then
					return v
				end
			end
	
		end
	
		local wlui = script.Parent.ManagerUI
		local gamesettings = script.Parent.GameSettingsUI.ScrollingFrame
		local globalsettings = script.Parent.GlobalSettingsUI.ScrollingFrame
		local games = script.Parent.GameSettingsUI
		local globals = script.Parent.GlobalSettingsUI
		local teamui = script.Parent.TeamUI
		local teams = game.Teams
	
		if syn then
			syn.protect_gui(script.Parent)
		end
	
		local WhitelistedPlrs = {}
		local PrioritizedPlrs = {}
		local misc = {}
		misc.IsAimbotOn = false
		misc.TargetedCharacter = nil
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
			if GlobalStats.RightClickAim == nil then
				GlobalStats.RightClickAim = false
			end
	
			for i,v in pairs(GlobalStats.Keybinds) do
				if globalsettings:FindFirstChild(i) then
					globalsettings[i].value.Text = tostring(v)
				else
					GlobalStats.Keybinds[i] = nil -- remove out-of-date values
				end
			end
	
			for i,v in pairs(GlobalStats) do 
				if type(v) ~= "table" then
					if globalsettings:FindFirstChild(i) then
						globalsettings[i].value.Text = tostring(v)
					else
						GlobalStats[i] = nil -- remove out-of-date values
					end
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
			GlobalStats.Keybinds.NPCToggle = "none"
		end
	
		GameStats = GlobalStats[game.PlaceId]
		Keybinds = GlobalStats.Keybinds
		if not Keybinds.NPCToggle then
			Keybinds.NPCToggle = "none"
		end
		if not GameStats.Teams then
			GameStats.Teams = {}
		end
		if GameStats.TargetNPCs == nil then
			GameStats.TargetNPCs = false
		end
		if GameStats.TargetCloserPlayers == nil then
			GameStats.TargetCloserPlayers = true
		end
		if GameStats.IgnorePlayers == nil then
			GameStats.IgnorePlayers = false
		end
	
		for i,v in pairs(GameStats) do
			if type(v) ~= "table" then
				if gamesettings:FindFirstChild(i) then
					gamesettings[i].value.Text = tostring(v)
				else
					GameStats[i] = nil -- remove out of date values
				end
			end
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
			misc.TargetedCharacter = nil
		end
	
		m.Button2Down:connect(function()
			RightClick = true
		end)
		
		m.Button2Up:connect(function()
			RightClick = false
		if GlobalStats.RightClickAim and misc.TargetedCharacter then
			deselect()
		end
		end)
		local function Died(player)
			thread(function()
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
	
			    if lplr.Team then
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
			if GlobalStats.RightClickAim and RightClick or not GlobalStats.RightClickAim then
				if misc.IsAimbotOn and not misc.TargetedCharacter and not GameStats.TargetCloserPlayers or GameStats.TargetCloserPlayers and misc.IsAimbotOn then
					local isprio
					local isprio2
					if misc.TargetedCharacter then
						local plr = plrs:GetPlayerFromCharacter(misc.TargetedCharacter)
						local plr2 = plrs:GetPlayerFromCharacter(chr)
						isprio = table.find(PrioritizedPlrs, plr) ~= nil
						isprio2 = table.find(PrioritizedPlrs, plr2) ~= nil
					end
					if not isprio or isprio2 then	
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
			end
		end
	
		local function targetplayer(player)
	
			local humanoidvalid, humanoid = pcall(function()
				return player.Character.Humanoid
			end)
	
			if player ~= lplr and humanoidvalid and IsNotWhitelisted(player) and humanoid.Health ~= 0 then
				selectcharacter(player.Character)
			end
		end
	
		if not lplr.Character then
			sendnotif("Aimbot", "spawn in the game for this to work")
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
			if keycode == Keybinds.NPCToggle then
				GameStats.TargetNPCs = not GameStats.TargetNPCs
			end
		end)
	
		games.X.MouseButton1Click:connect(function()
			games.Visible = false
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
			if type(GlobalStats[v.Name]) == "boolean" then
				v.value.MouseButton1Click:connect(function()
					GlobalStats[v.Name] = not GlobalStats[v.Name]
				end)
				Changed(GlobalStats, v.Name, function(val)
					v.value.Text = tostring(val)
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
	
		globals.X.MouseButton1Click:connect(function()
			globals.Visible = false
		end)
	
		teamui.X.MouseButton1Click:connect(function()
			teamui.Visible = false
		end)
	
	    local npcs = {}
	
	    TableAdded(npcs, function(i, npc)
	        
	        Changed(npc.Humanoid, "Health", function(hp)
	            if hp <= 0 then
	                npcs[i] = nil
					if misc.TargetedCharacter == npc then
						deselect()
					end
	            end
	        end)
	        
	    end)
		
		local function checkpart(v)
			return not v.CanCollide or v.Transparency == 1
		end
	
	    for i,v in pairs(workspace:GetDescendants()) do
	        if v.ClassName == "Humanoid" and v.RootPart and not ischaracter(v.Parent) and not table.find(npcs, v.Parent) then
	            table.insert(npcs, v.Parent)
	       end
	    end
	
	    workspace.DescendantAdded:connect(function(v)
	        if v.ClassName == "Humanoid" then
	            if not v.RootPart then repeat task.wait() until v.RootPart end
		            if not ischaracter(v.Parent) and not table.find(npcs, v.Parent) then
		                table.insert(npcs, v.Parent)
		            end
	        end
	    end)
	
	    local function gettargetpart(chr)
	
			local bool, result = pcall(function()
				return chr[GameStats.Target]
			end)
	
			if bool then
				return result
			else
				return chr.Humanoid.RootPart
			end
	   end
	
		local AimbotFunction = game.RunService.RenderStepped:connect(function()
			if misc.TargetedCharacter then
				local v, onscreen = workspace.CurrentCamera:WorldToScreenPoint(gettargetpart(misc.TargetedCharacter).Position)
				if onscreen then
					local StabilizeNum = GlobalStats.AimIntensity/workspace.CurrentCamera.ViewportSize.Y
					local x, y = (v.X - m.X)*StabilizeNum, (v.Y - m.Y)*StabilizeNum
					if misc.IsAimbotOn then
						if GlobalStats.RightClickAim and RightClick or not GlobalStats.RightClickAim then
							mousemoverel(x, y)
						end
					end
				else
					deselect()
				end
			end
	
			if m.Target ~= nil then
			if not GameStats.IgnorePlayers then
					for i,v in pairs(GetFamily(m.Target)) do
						if game.Players:FindFirstChild(v.Name) then
							targetplayer(game.Players[v.Name])
						break
					end
				end
			end
	
			if GameStats.TargetNPCs then
				local npc = isnpc(m.Target)
					if npc and npc.Humanoid.Health > 0 then
						selectcharacter(npc)
					end
				end
			end
	
			if GameStats.AutoTarget then
			    local table1 = {}
			    local table2 = {}
			    local PrioritizedPlrsOnScreen = {}
	
	            local function addchr(v)
				local player = plrs:GetPlayerFromCharacter(v)
					if player and IsNotWhitelisted(player) or not player then
			    		if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health ~= 0 then
							local targpart = gettargetpart(v)
			    	        local pos = math.floor(lplr:DistanceFromCharacter(targpart.Position))
			    	        local _, onscreen = workspace.CurrentCamera:WorldToScreenPoint(targpart.Position)
			    	        if onscreen and pos < GameStats.MaxStuds then
			    	            table1[pos] = v
			    			    table.insert(table2, pos)
			        			if table.find(PrioritizedPlrs, plrs:GetPlayerFromCharacter(v)) then
			        				table.insert(PrioritizedPlrsOnScreen, v)
			        			end
							end
			        	end
					end
	            end
	            
	            if GameStats.TargetNPCs then
	                for i, npc in pairs(npcs) do
	                    addchr(npc)
	               end
	           end
	            if not GameStats.IgnorePlayers then
			   		 for i,v in pairs(plrs:GetPlayers()) do
			       		 if v ~= lplr and v.Character then
		            		addchr(v.Character)
		            	end
					end
				end
	
				if #PrioritizedPlrsOnScreen == 0 then
					table.sort(table2)
				else
	
					for pos, chr in pairs(table1) do
						if not table.find(PrioritizedPlrsOnScreen, chr) then
							table.remove(table2, table.find(table2,pos))
							table1[pos] = nil
						end
					end
	
				    table.sort(table2)
				end
	
				for position, Char in pairs(table1) do
					if table2[1] == position then
					    local plr = plrs:GetPlayerFromCharacter(Char)
					    if plr then
						    targetplayer(plr)
						else
						    selectcharacter(Char)
					    end
						break
				    end
				end
		    end
	
			if GameStats.FPEnabled then
				if misc.TargetedCharacter and misc.IsAimbotOn then
					plrs.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
				else
					plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
				end
			else
				plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			end
		end)
	
		sendnotif("Aimbot Update","Added NPC toggle keybind option and ignore players option in game stats.")
		
		plrs.PlayerRemoving:connect(function(plr)
			if plr.Character and plr.Character == misc.TargetedCharacter then
				deselect()
			end
		end)
	
		local MainFrame = script.Parent.MFrame
	
		Changed(misc, "TargetedCharacter", function(v)
			if v then
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
			games.Visible = true
		end)
	
		MainFrame.EditGlobalSettings.MouseButton1Click:connect(function()
			globals.Visible = true
		end)
	
		games.SwitchToTeam.MouseButton1Click:connect(function()
			games.Visible = false
			teamui.Visible = true
		end)
	
		teamui.SwitchToSettings.MouseButton1Click:connect(function()
			teamui.Visible = false
			games.Visible = true
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
		sendnotif("Aimbot", "You've already executed this. Deleting clone.")
		task.wait(0.2)
		script.Parent:Destroy()
	end

end
coroutine.resume(coroutine.create(SCRIPT_VUDZ90_FAKESCRIPT))
