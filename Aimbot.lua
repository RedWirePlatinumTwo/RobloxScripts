-- Gui to Lua
-- Version: 3.2

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
local SwitchToTeam = Instance.new("TextButton")
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
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local AutoTarget = Instance.new("TextLabel")
local value = Instance.new("TextButton")
local Target = Instance.new("TextLabel")
local value_2 = Instance.new("TextButton")
local WhitelistFriends = Instance.new("TextLabel")
local value_3 = Instance.new("TextButton")
local MaxStuds = Instance.new("TextLabel")
local value_4 = Instance.new("TextBox")
local OwnTeamWhitelisted = Instance.new("TextLabel")
local value_5 = Instance.new("TextButton")
local TargetCloserPlayers = Instance.new("TextLabel")
local value_6 = Instance.new("TextButton")
local About = Instance.new("TextLabel")
local TargetNPCs = Instance.new("TextLabel")
local value_7 = Instance.new("TextButton")
local IgnorePlayers = Instance.new("TextLabel")
local value_8 = Instance.new("TextButton")
local TargetPrioOnly = Instance.new("TextLabel")
local value_9 = Instance.new("TextButton")
local FirstPersonEnabled = Instance.new("TextLabel")
local value_10 = Instance.new("TextButton")
local AimMethod = Instance.new("TextLabel")
local value_11 = Instance.new("TextButton")
local About_2 = Instance.new("TextLabel")
local GlobalSettingsUI = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local X_2 = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local RightClickAim = Instance.new("TextLabel")
local value_12 = Instance.new("TextButton")
local TeamAutofill = Instance.new("TextLabel")
local value_13 = Instance.new("TextButton")
local MouseSensitivity = Instance.new("TextLabel")
local About_3 = Instance.new("TextLabel")
local value_14 = Instance.new("TextBox")
local keybinds = Instance.new("TextButton")
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
local KeybindsUI = Instance.new("Frame")
local Title_6 = Instance.new("TextLabel")
local X_4 = Instance.new("TextButton")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIListLayout_5 = Instance.new("UIListLayout")
local AimbotToggle = Instance.new("TextLabel")
local value_15 = Instance.new("TextButton")
local reset = Instance.new("TextButton")
local TargetedPartToggle = Instance.new("TextLabel")
local value_16 = Instance.new("TextButton")
local reset_2 = Instance.new("TextButton")
local GUIVisibilityToggle = Instance.new("TextLabel")
local value_17 = Instance.new("TextButton")
local reset_3 = Instance.new("TextButton")
local globals = Instance.new("TextButton")

--Properties:

Aimbot.Name = "Aimbot"
Aimbot.Parent = game.CoreGui
Aimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MFrame.Name = "MFrame"
MFrame.Parent = Aimbot
MFrame.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
MFrame.BorderColor3 = Color3.fromRGB(0, 170, 0)
MFrame.Position = UDim2.new(0.345656514, 0, 0.488820165, 0)
MFrame.Size = UDim2.new(0, 260, 0, 252)

Title.Name = "Title"
Title.Parent = MFrame
Title.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title.Size = UDim2.new(0, 260, 0, 44)
Title.Font = Enum.Font.TitilliumWeb
Title.Text = "RedWire's Universal Aimbot"
Title.TextColor3 = Color3.fromRGB(0, 170, 0)
Title.TextScaled = true
Title.TextSize = 18.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

CurrentTargetTitle.Name = "CurrentTargetTitle"
CurrentTargetTitle.Parent = MFrame
CurrentTargetTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentTargetTitle.BackgroundTransparency = 1.000
CurrentTargetTitle.BorderColor3 = Color3.fromRGB(0, 170, 0)
CurrentTargetTitle.BorderSizePixel = 0
CurrentTargetTitle.Position = UDim2.new(0.0076923077, 0, 0.378930956, 0)
CurrentTargetTitle.Size = UDim2.new(0, 135, 0, 29)
CurrentTargetTitle.Font = Enum.Font.TitilliumWeb
CurrentTargetTitle.Text = "Current Target:"
CurrentTargetTitle.TextColor3 = Color3.fromRGB(0, 170, 0)
CurrentTargetTitle.TextScaled = true
CurrentTargetTitle.TextSize = 14.000
CurrentTargetTitle.TextStrokeTransparency = 0.000
CurrentTargetTitle.TextWrapped = true
CurrentTargetTitle.TextXAlignment = Enum.TextXAlignment.Left

CurrentTarget.Name = "CurrentTarget"
CurrentTarget.Parent = MFrame
CurrentTarget.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentTarget.BackgroundTransparency = 1.000
CurrentTarget.BorderColor3 = Color3.fromRGB(0, 170, 0)
CurrentTarget.BorderSizePixel = 0
CurrentTarget.Position = UDim2.new(0.0076923077, 0, 0.495866328, 0)
CurrentTarget.Size = UDim2.new(0, 258, 0, 29)
CurrentTarget.Font = Enum.Font.TitilliumWeb
CurrentTarget.Text = "none"
CurrentTarget.TextColor3 = Color3.fromRGB(170, 0, 0)
CurrentTarget.TextScaled = true
CurrentTarget.TextSize = 14.000
CurrentTarget.TextStrokeTransparency = 0.000
CurrentTarget.TextWrapped = true
CurrentTarget.TextXAlignment = Enum.TextXAlignment.Left

EditGameSettings.Name = "EditGameSettings"
EditGameSettings.Parent = MFrame
EditGameSettings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditGameSettings.BorderColor3 = Color3.fromRGB(0, 170, 0)
EditGameSettings.Position = UDim2.new(0, 0, 0.614426017, 0)
EditGameSettings.Size = UDim2.new(0, 130, 0, 36)
EditGameSettings.Font = Enum.Font.TitilliumWeb
EditGameSettings.Text = "Game Settings"
EditGameSettings.TextColor3 = Color3.fromRGB(0, 170, 0)
EditGameSettings.TextSize = 24.000
EditGameSettings.TextWrapped = true

Manager.Name = "Manager"
Manager.Parent = MFrame
Manager.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Manager.BorderColor3 = Color3.fromRGB(0, 170, 0)
Manager.Position = UDim2.new(0, 0, 0.80083406, 0)
Manager.Size = UDim2.new(0, 130, 0, 36)
Manager.Font = Enum.Font.TitilliumWeb
Manager.Text = "Manage Players"
Manager.TextColor3 = Color3.fromRGB(0, 170, 0)
Manager.TextSize = 24.000
Manager.TextWrapped = true

StatusTitle.Name = "StatusTitle"
StatusTitle.Parent = MFrame
StatusTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StatusTitle.BackgroundTransparency = 1.000
StatusTitle.BorderColor3 = Color3.fromRGB(0, 170, 0)
StatusTitle.BorderSizePixel = 0
StatusTitle.Position = UDim2.new(0.0076923077, 0, 0.213608399, 0)
StatusTitle.Size = UDim2.new(0, 128, 0, 29)
StatusTitle.Font = Enum.Font.TitilliumWeb
StatusTitle.Text = "Aimbot status:"
StatusTitle.TextColor3 = Color3.fromRGB(0, 170, 0)
StatusTitle.TextScaled = true
StatusTitle.TextSize = 14.000
StatusTitle.TextStrokeTransparency = 0.000
StatusTitle.TextWrapped = true
StatusTitle.TextXAlignment = Enum.TextXAlignment.Left

Status.Name = "Status"
Status.Parent = MFrame
Status.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderColor3 = Color3.fromRGB(0, 170, 0)
Status.Position = UDim2.new(0.5, 0, 0.214000031, 0)
Status.Size = UDim2.new(0, 130, 0, 29)
Status.Font = Enum.Font.TitilliumWeb
Status.LineHeight = 2.000
Status.Text = "disabled"
Status.TextColor3 = Color3.fromRGB(170, 0, 0)
Status.TextSize = 28.000
Status.TextStrokeTransparency = 0.000
Status.TextWrapped = true

EditGlobalSettings.Name = "EditGlobalSettings"
EditGlobalSettings.Parent = MFrame
EditGlobalSettings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditGlobalSettings.BorderColor3 = Color3.fromRGB(0, 170, 0)
EditGlobalSettings.Position = UDim2.new(0.5, 0, 0.614426017, 0)
EditGlobalSettings.Size = UDim2.new(0, 130, 0, 36)
EditGlobalSettings.Font = Enum.Font.TitilliumWeb
EditGlobalSettings.Text = "Global Settings"
EditGlobalSettings.TextColor3 = Color3.fromRGB(0, 170, 0)
EditGlobalSettings.TextSize = 24.000
EditGlobalSettings.TextWrapped = true

SwitchToTeam.Name = "SwitchToTeam"
SwitchToTeam.Parent = MFrame
SwitchToTeam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SwitchToTeam.BorderColor3 = Color3.fromRGB(0, 170, 0)
SwitchToTeam.Position = UDim2.new(0.5, 0, 0.80083406, 0)
SwitchToTeam.Size = UDim2.new(0, 130, 0, 36)
SwitchToTeam.Font = Enum.Font.TitilliumWeb
SwitchToTeam.Text = "Manage Teams"
SwitchToTeam.TextColor3 = Color3.fromRGB(0, 170, 0)
SwitchToTeam.TextSize = 24.000
SwitchToTeam.TextWrapped = true

ManagerUI.Name = "ManagerUI"
ManagerUI.Parent = Aimbot
ManagerUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ManagerUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
ManagerUI.BorderSizePixel = 2
ManagerUI.Position = UDim2.new(0.40060699, 0, 0.207899302, 0)
ManagerUI.Size = UDim2.new(0, 460, 0, 269)
ManagerUI.Visible = false

WhitelistedInstances.Name = "WhitelistedInstances"
WhitelistedInstances.Parent = ManagerUI
WhitelistedInstances.Active = true
WhitelistedInstances.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
WhitelistedInstances.BorderColor3 = Color3.fromRGB(0, 170, 0)
WhitelistedInstances.Position = UDim2.new(0, 0, 0.359999865, 0)
WhitelistedInstances.Size = UDim2.new(0, 460, 0, 211)
WhitelistedInstances.CanvasSize = UDim2.new(0, 0, 0, 0)

whitelistframe.Name = "whitelistframe"
whitelistframe.Parent = WhitelistedInstances
whitelistframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
whitelistframe.BorderColor3 = Color3.fromRGB(0, 170, 0)
whitelistframe.Size = UDim2.new(0, 445, 0, 42)
whitelistframe.Visible = false

TextLabel.Parent = whitelistframe
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 170, 0)
TextLabel.Size = UDim2.new(0, 233, 0, 42)
TextLabel.Font = Enum.Font.TitilliumWeb
TextLabel.Text = "sample text"
TextLabel.TextColor3 = Color3.fromRGB(0, 170, 0)
TextLabel.TextSize = 20.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

WhitelistToggle.Name = "WhitelistToggle"
WhitelistToggle.Parent = whitelistframe
WhitelistToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WhitelistToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
WhitelistToggle.Position = UDim2.new(0.774420917, 0, 0, 0)
WhitelistToggle.Size = UDim2.new(0, 100, 0, 42)
WhitelistToggle.Font = Enum.Font.Highway
WhitelistToggle.Text = "No"
WhitelistToggle.TextColor3 = Color3.fromRGB(170, 0, 0)
WhitelistToggle.TextSize = 22.000
WhitelistToggle.TextWrapped = true

PriorityToggle.Name = "PriorityToggle"
PriorityToggle.Parent = whitelistframe
PriorityToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PriorityToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
PriorityToggle.Position = UDim2.new(0.525842726, 0, 0, 0)
PriorityToggle.Size = UDim2.new(0, 110, 0, 42)
PriorityToggle.Font = Enum.Font.Highway
PriorityToggle.Text = "No"
PriorityToggle.TextColor3 = Color3.fromRGB(170, 0, 0)
PriorityToggle.TextSize = 22.000
PriorityToggle.TextWrapped = true

UIListLayout.Parent = WhitelistedInstances
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

hide.Name = "hide"
hide.Parent = ManagerUI
hide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hide.BorderColor3 = Color3.fromRGB(0, 170, 0)
hide.Position = UDim2.new(0.850134015, 0, 0, 0)
hide.Size = UDim2.new(0, 68, 0, 29)
hide.Font = Enum.Font.TitilliumWeb
hide.Text = "Close"
hide.TextColor3 = Color3.fromRGB(170, 0, 0)
hide.TextSize = 28.000
hide.TextStrokeTransparency = 0.000
hide.TextWrapped = true

searchbar.Name = "searchbar"
searchbar.Parent = ManagerUI
searchbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
searchbar.BorderColor3 = Color3.fromRGB(0, 170, 0)
searchbar.Position = UDim2.new(0, 0, 0.111524165, 0)
searchbar.Size = UDim2.new(0, 459, 0, 33)
searchbar.Font = Enum.Font.TitilliumWeb
searchbar.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
searchbar.PlaceholderText = "Filter Scrolling Frame results"
searchbar.Text = ""
searchbar.TextColor3 = Color3.fromRGB(0, 170, 0)
searchbar.TextSize = 30.000
searchbar.TextStrokeTransparency = 0.000
searchbar.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = ManagerUI
Title_2.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_2.Size = UDim2.new(0, 391, 0, 29)
Title_2.Font = Enum.Font.TitilliumWeb
Title_2.Text = "Player Manager"
Title_2.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_2.TextSize = 30.000
Title_2.TextStrokeTransparency = 0.000
Title_2.TextWrapped = true

whitelistlable.Name = "whitelistlable"
whitelistlable.Parent = ManagerUI
whitelistlable.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
whitelistlable.BorderColor3 = Color3.fromRGB(0, 170, 0)
whitelistlable.Position = UDim2.new(0.746994019, 0, 0.241635695, 0)
whitelistlable.Size = UDim2.new(0, 115, 0, 29)
whitelistlable.Font = Enum.Font.TitilliumWeb
whitelistlable.Text = "Is Whitelisted"
whitelistlable.TextColor3 = Color3.fromRGB(0, 170, 0)
whitelistlable.TextSize = 24.000
whitelistlable.TextStrokeTransparency = 0.000
whitelistlable.TextWrapped = true

prioritylable.Name = "prioritylable"
prioritylable.Parent = ManagerUI
prioritylable.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
prioritylable.BorderColor3 = Color3.fromRGB(0, 170, 0)
prioritylable.Position = UDim2.new(0.507863581, 0, 0.24163568, 0)
prioritylable.Size = UDim2.new(0, 110, 0, 29)
prioritylable.Font = Enum.Font.TitilliumWeb
prioritylable.Text = "Is Prioritized"
prioritylable.TextColor3 = Color3.fromRGB(0, 170, 0)
prioritylable.TextSize = 24.000
prioritylable.TextStrokeTransparency = 0.000
prioritylable.TextWrapped = true

typelabel.Name = "typelabel"
typelabel.Parent = ManagerUI
typelabel.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
typelabel.BorderColor3 = Color3.fromRGB(0, 170, 0)
typelabel.Position = UDim2.new(0, 0, 0.241635695, 0)
typelabel.Size = UDim2.new(0, 234, 0, 29)
typelabel.Font = Enum.Font.TitilliumWeb
typelabel.Text = "Player Name + Display Name"
typelabel.TextColor3 = Color3.fromRGB(0, 170, 0)
typelabel.TextSize = 24.000
typelabel.TextStrokeTransparency = 0.000
typelabel.TextWrapped = true

GameSettingsUI.Name = "GameSettingsUI"
GameSettingsUI.Parent = Aimbot
GameSettingsUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
GameSettingsUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
GameSettingsUI.Position = UDim2.new(0.479687512, 0, 0.17027837, 0)
GameSettingsUI.Size = UDim2.new(0, 338, 0, 342)
GameSettingsUI.Visible = false

Title_3.Name = "Title"
Title_3.Parent = GameSettingsUI
Title_3.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_3.Position = UDim2.new(0, 0, 6.75937554e-05, 0)
Title_3.Size = UDim2.new(0, 291, 0, 31)
Title_3.Font = Enum.Font.TitilliumWeb
Title_3.Text = "Game Settings"
Title_3.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_3.TextSize = 32.000
Title_3.TextStrokeTransparency = 0.000
Title_3.TextWrapped = true

X.Name = "X"
X.Parent = GameSettingsUI
X.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X.BorderColor3 = Color3.fromRGB(0, 170, 0)
X.Position = UDim2.new(0.863685906, 0, 0, 0)
X.Size = UDim2.new(0, 46, 0, 32)
X.Font = Enum.Font.TitilliumWeb
X.Text = "Close"
X.TextColor3 = Color3.fromRGB(170, 0, 0)
X.TextSize = 28.000
X.TextStrokeTransparency = 0.000
X.TextWrapped = true

ScrollingFrame.Parent = GameSettingsUI
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0.0918695107, 0)
ScrollingFrame.Size = UDim2.new(0, 338, 0, 310)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_2.Parent = ScrollingFrame

AutoTarget.Name = "AutoTarget"
AutoTarget.Parent = ScrollingFrame
AutoTarget.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoTarget.BackgroundTransparency = 1.000
AutoTarget.BorderColor3 = Color3.fromRGB(0, 170, 0)
AutoTarget.BorderSizePixel = 0
AutoTarget.Size = UDim2.new(0, 195, 0, 63)
AutoTarget.Font = Enum.Font.TitilliumWeb
AutoTarget.Text = "Auto-Targeting Enabled:"
AutoTarget.TextColor3 = Color3.fromRGB(0, 170, 0)
AutoTarget.TextSize = 28.000
AutoTarget.TextStrokeTransparency = 0.000
AutoTarget.TextXAlignment = Enum.TextXAlignment.Left
AutoTarget.TextYAlignment = Enum.TextYAlignment.Top

value.Name = "value"
value.Parent = AutoTarget
value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value.BorderColor3 = Color3.fromRGB(0, 170, 0)
value.Position = UDim2.new(-0.000219726557, 0, 0.522047281, 0)
value.Size = UDim2.new(0, 326, 0, 28)
value.Font = Enum.Font.TitilliumWeb
value.Text = "true"
value.TextColor3 = Color3.fromRGB(0, 170, 0)
value.TextSize = 28.000
value.TextStrokeTransparency = 0.000
value.TextXAlignment = Enum.TextXAlignment.Left

Target.Name = "Target"
Target.Parent = ScrollingFrame
Target.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Target.BackgroundTransparency = 1.000
Target.BorderColor3 = Color3.fromRGB(0, 170, 0)
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0, 0, 0.474509805, 0)
Target.Size = UDim2.new(0, 169, 0, 63)
Target.Font = Enum.Font.TitilliumWeb
Target.Text = "Targeted Part:"
Target.TextColor3 = Color3.fromRGB(0, 170, 0)
Target.TextSize = 28.000
Target.TextStrokeTransparency = 0.000
Target.TextXAlignment = Enum.TextXAlignment.Left
Target.TextYAlignment = Enum.TextYAlignment.Top

value_2.Name = "value"
value_2.Parent = Target
value_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_2.Position = UDim2.new(0, 0, 0.532047331, 0)
value_2.Size = UDim2.new(0, 325, 0, 28)
value_2.Font = Enum.Font.TitilliumWeb
value_2.Text = "Head"
value_2.TextColor3 = Color3.fromRGB(0, 170, 0)
value_2.TextSize = 28.000
value_2.TextStrokeTransparency = 0.000
value_2.TextXAlignment = Enum.TextXAlignment.Left

WhitelistFriends.Name = "WhitelistFriends"
WhitelistFriends.Parent = ScrollingFrame
WhitelistFriends.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WhitelistFriends.BackgroundTransparency = 1.000
WhitelistFriends.BorderColor3 = Color3.fromRGB(0, 170, 0)
WhitelistFriends.BorderSizePixel = 0
WhitelistFriends.Position = UDim2.new(0, 0, 0.752941191, 0)
WhitelistFriends.Size = UDim2.new(0, 169, 0, 63)
WhitelistFriends.Font = Enum.Font.TitilliumWeb
WhitelistFriends.Text = "Whitelist Friends:"
WhitelistFriends.TextColor3 = Color3.fromRGB(0, 170, 0)
WhitelistFriends.TextSize = 28.000
WhitelistFriends.TextStrokeTransparency = 0.000
WhitelistFriends.TextXAlignment = Enum.TextXAlignment.Left
WhitelistFriends.TextYAlignment = Enum.TextYAlignment.Top

value_3.Name = "value"
value_3.Parent = WhitelistFriends
value_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_3.Position = UDim2.new(0.00591715984, 0, 0.542252779, 0)
value_3.Size = UDim2.new(0, 324, 0, 28)
value_3.Font = Enum.Font.TitilliumWeb
value_3.Text = "false"
value_3.TextColor3 = Color3.fromRGB(0, 170, 0)
value_3.TextSize = 28.000
value_3.TextStrokeTransparency = 0.000
value_3.TextXAlignment = Enum.TextXAlignment.Left

MaxStuds.Name = "MaxStuds"
MaxStuds.Parent = ScrollingFrame
MaxStuds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MaxStuds.BackgroundTransparency = 1.000
MaxStuds.BorderColor3 = Color3.fromRGB(0, 170, 0)
MaxStuds.BorderSizePixel = 0
MaxStuds.Position = UDim2.new(0, 0, 0.474509805, 0)
MaxStuds.Size = UDim2.new(0, 169, 0, 63)
MaxStuds.Font = Enum.Font.TitilliumWeb
MaxStuds.Text = "Auto-Target max studs:"
MaxStuds.TextColor3 = Color3.fromRGB(0, 170, 0)
MaxStuds.TextSize = 28.000
MaxStuds.TextStrokeTransparency = 0.000
MaxStuds.TextXAlignment = Enum.TextXAlignment.Left
MaxStuds.TextYAlignment = Enum.TextYAlignment.Top

value_4.Name = "value"
value_4.Parent = MaxStuds
value_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_4.Position = UDim2.new(-0.00595760904, 0, 0.490557462, 0)
value_4.Size = UDim2.new(0, 326, 0, 28)
value_4.Font = Enum.Font.TitilliumWeb
value_4.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
value_4.PlaceholderText = "Default is 500"
value_4.Text = "500"
value_4.TextColor3 = Color3.fromRGB(0, 170, 0)
value_4.TextSize = 28.000
value_4.TextStrokeTransparency = 0.000
value_4.TextXAlignment = Enum.TextXAlignment.Left

OwnTeamWhitelisted.Name = "OwnTeamWhitelisted"
OwnTeamWhitelisted.Parent = ScrollingFrame
OwnTeamWhitelisted.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OwnTeamWhitelisted.BackgroundTransparency = 1.000
OwnTeamWhitelisted.BorderColor3 = Color3.fromRGB(0, 170, 0)
OwnTeamWhitelisted.BorderSizePixel = 0
OwnTeamWhitelisted.Position = UDim2.new(0, 0, 0.58431375, 0)
OwnTeamWhitelisted.Size = UDim2.new(0, 169, 0, 63)
OwnTeamWhitelisted.Font = Enum.Font.TitilliumWeb
OwnTeamWhitelisted.Text = "Whitelist own team:"
OwnTeamWhitelisted.TextColor3 = Color3.fromRGB(0, 170, 0)
OwnTeamWhitelisted.TextSize = 28.000
OwnTeamWhitelisted.TextStrokeTransparency = 0.000
OwnTeamWhitelisted.TextXAlignment = Enum.TextXAlignment.Left
OwnTeamWhitelisted.TextYAlignment = Enum.TextYAlignment.Top

value_5.Name = "value"
value_5.Parent = OwnTeamWhitelisted
value_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_5.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_5.Position = UDim2.new(4.0449333e-05, 0, 0.544638038, 0)
value_5.Size = UDim2.new(0, 324, 0, 28)
value_5.Font = Enum.Font.TitilliumWeb
value_5.Text = "true"
value_5.TextColor3 = Color3.fromRGB(0, 170, 0)
value_5.TextSize = 28.000
value_5.TextStrokeTransparency = 0.000
value_5.TextXAlignment = Enum.TextXAlignment.Left

TargetCloserPlayers.Name = "TargetCloserPlayers"
TargetCloserPlayers.Parent = ScrollingFrame
TargetCloserPlayers.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TargetCloserPlayers.BackgroundTransparency = 1.000
TargetCloserPlayers.BorderColor3 = Color3.fromRGB(0, 170, 0)
TargetCloserPlayers.BorderSizePixel = 0
TargetCloserPlayers.Position = UDim2.new(0, 0, 0.216439918, 0)
TargetCloserPlayers.Size = UDim2.new(0, 169, 0, 116)
TargetCloserPlayers.Font = Enum.Font.TitilliumWeb
TargetCloserPlayers.Text = "Target Closer Players:"
TargetCloserPlayers.TextColor3 = Color3.fromRGB(0, 170, 0)
TargetCloserPlayers.TextSize = 28.000
TargetCloserPlayers.TextStrokeTransparency = 0.000
TargetCloserPlayers.TextXAlignment = Enum.TextXAlignment.Left
TargetCloserPlayers.TextYAlignment = Enum.TextYAlignment.Top

value_6.Name = "value"
value_6.Parent = TargetCloserPlayers
value_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_6.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_6.Position = UDim2.new(0.00591715984, 0, 0.243091717, 0)
value_6.Size = UDim2.new(0, 324, 0, 28)
value_6.Font = Enum.Font.TitilliumWeb
value_6.Text = "true"
value_6.TextColor3 = Color3.fromRGB(0, 170, 0)
value_6.TextSize = 28.000
value_6.TextStrokeTransparency = 0.000
value_6.TextXAlignment = Enum.TextXAlignment.Left

About.Name = "About"
About.Parent = TargetCloserPlayers
About.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
About.BackgroundTransparency = 1.000
About.BorderColor3 = Color3.fromRGB(0, 170, 0)
About.BorderSizePixel = 0
About.Position = UDim2.new(0.00351909199, 0, 0.502846539, 0)
About.Size = UDim2.new(0, 325, 0, 60)
About.Font = Enum.Font.TitilliumWeb
About.Text = "If enabled, targets can swap with players closer to you. If disabled, targets will only swap if dead. Prioritized players will only swap with other prioritized players."
About.TextColor3 = Color3.fromRGB(0, 170, 0)
About.TextSize = 20.000
About.TextStrokeTransparency = 0.000
About.TextWrapped = true

TargetNPCs.Name = "TargetNPCs"
TargetNPCs.Parent = ScrollingFrame
TargetNPCs.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TargetNPCs.BackgroundTransparency = 1.000
TargetNPCs.BorderColor3 = Color3.fromRGB(0, 170, 0)
TargetNPCs.BorderSizePixel = 0
TargetNPCs.Position = UDim2.new(-0.00591715984, 0, 0.45863381, 0)
TargetNPCs.Size = UDim2.new(0, 169, 0, 63)
TargetNPCs.Font = Enum.Font.TitilliumWeb
TargetNPCs.Text = "Target NPCs:"
TargetNPCs.TextColor3 = Color3.fromRGB(0, 170, 0)
TargetNPCs.TextSize = 28.000
TargetNPCs.TextStrokeTransparency = 0.000
TargetNPCs.TextXAlignment = Enum.TextXAlignment.Left
TargetNPCs.TextYAlignment = Enum.TextYAlignment.Top

value_7.Name = "value"
value_7.Parent = TargetNPCs
value_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_7.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_7.Position = UDim2.new(0, 0, 0.446332663, 0)
value_7.Size = UDim2.new(0, 325, 0, 28)
value_7.Font = Enum.Font.TitilliumWeb
value_7.Text = "false"
value_7.TextColor3 = Color3.fromRGB(0, 170, 0)
value_7.TextSize = 28.000
value_7.TextStrokeTransparency = 0.000
value_7.TextXAlignment = Enum.TextXAlignment.Left

IgnorePlayers.Name = "IgnorePlayers"
IgnorePlayers.Parent = ScrollingFrame
IgnorePlayers.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IgnorePlayers.BackgroundTransparency = 1.000
IgnorePlayers.BorderColor3 = Color3.fromRGB(0, 170, 0)
IgnorePlayers.BorderSizePixel = 0
IgnorePlayers.Position = UDim2.new(0, 0, 0.247058824, 0)
IgnorePlayers.Size = UDim2.new(0, 169, 0, 63)
IgnorePlayers.Font = Enum.Font.TitilliumWeb
IgnorePlayers.Text = "Ignore Players:"
IgnorePlayers.TextColor3 = Color3.fromRGB(0, 170, 0)
IgnorePlayers.TextSize = 28.000
IgnorePlayers.TextStrokeTransparency = 0.000
IgnorePlayers.TextXAlignment = Enum.TextXAlignment.Left
IgnorePlayers.TextYAlignment = Enum.TextYAlignment.Top

value_8.Name = "value"
value_8.Parent = IgnorePlayers
value_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_8.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_8.Position = UDim2.new(0, 0, 0.54871428, 0)
value_8.Size = UDim2.new(0, 325, 0, 28)
value_8.Font = Enum.Font.TitilliumWeb
value_8.Text = "false"
value_8.TextColor3 = Color3.fromRGB(0, 170, 0)
value_8.TextSize = 28.000
value_8.TextStrokeTransparency = 0.000
value_8.TextXAlignment = Enum.TextXAlignment.Left

TargetPrioOnly.Name = "TargetPrioOnly"
TargetPrioOnly.Parent = ScrollingFrame
TargetPrioOnly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TargetPrioOnly.BackgroundTransparency = 1.000
TargetPrioOnly.BorderColor3 = Color3.fromRGB(0, 170, 0)
TargetPrioOnly.BorderSizePixel = 0
TargetPrioOnly.Size = UDim2.new(0, 195, 0, 63)
TargetPrioOnly.Font = Enum.Font.TitilliumWeb
TargetPrioOnly.Text = "Target ONLY prioritized players:"
TargetPrioOnly.TextColor3 = Color3.fromRGB(0, 170, 0)
TargetPrioOnly.TextSize = 28.000
TargetPrioOnly.TextStrokeTransparency = 0.000
TargetPrioOnly.TextXAlignment = Enum.TextXAlignment.Left
TargetPrioOnly.TextYAlignment = Enum.TextYAlignment.Top

value_9.Name = "value"
value_9.Parent = TargetPrioOnly
value_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_9.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_9.Position = UDim2.new(-0.000219726557, 0, 0.522047281, 0)
value_9.Size = UDim2.new(0, 326, 0, 28)
value_9.Font = Enum.Font.TitilliumWeb
value_9.Text = "false"
value_9.TextColor3 = Color3.fromRGB(0, 170, 0)
value_9.TextSize = 28.000
value_9.TextStrokeTransparency = 0.000
value_9.TextXAlignment = Enum.TextXAlignment.Left

FirstPersonEnabled.Name = "FirstPersonEnabled"
FirstPersonEnabled.Parent = ScrollingFrame
FirstPersonEnabled.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FirstPersonEnabled.BackgroundTransparency = 1.000
FirstPersonEnabled.BorderColor3 = Color3.fromRGB(0, 170, 0)
FirstPersonEnabled.BorderSizePixel = 0
FirstPersonEnabled.Position = UDim2.new(0, 0, 0.35958904, 0)
FirstPersonEnabled.Size = UDim2.new(0, 169, 0, 60)
FirstPersonEnabled.Font = Enum.Font.TitilliumWeb
FirstPersonEnabled.Text = "First Person enabled:"
FirstPersonEnabled.TextColor3 = Color3.fromRGB(0, 170, 0)
FirstPersonEnabled.TextSize = 28.000
FirstPersonEnabled.TextStrokeTransparency = 0.000
FirstPersonEnabled.TextXAlignment = Enum.TextXAlignment.Left
FirstPersonEnabled.TextYAlignment = Enum.TextYAlignment.Top

value_10.Name = "value"
value_10.Parent = FirstPersonEnabled
value_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_10.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_10.Position = UDim2.new(0.00591715984, 0, 0.502716422, 0)
value_10.Size = UDim2.new(0, 337, 0, 28)
value_10.Font = Enum.Font.TitilliumWeb
value_10.Text = "true"
value_10.TextColor3 = Color3.fromRGB(0, 170, 0)
value_10.TextSize = 28.000
value_10.TextStrokeTransparency = 0.000
value_10.TextXAlignment = Enum.TextXAlignment.Left

AimMethod.Name = "AimMethod"
AimMethod.Parent = ScrollingFrame
AimMethod.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AimMethod.BackgroundTransparency = 1.000
AimMethod.BorderColor3 = Color3.fromRGB(0, 170, 0)
AimMethod.BorderSizePixel = 0
AimMethod.Position = UDim2.new(0.0115606934, 0, 0.393835604, 0)
AimMethod.Size = UDim2.new(0, 337, 0, 89)
AimMethod.Font = Enum.Font.TitilliumWeb
AimMethod.Text = "Aiming method:"
AimMethod.TextColor3 = Color3.fromRGB(0, 170, 0)
AimMethod.TextSize = 28.000
AimMethod.TextStrokeTransparency = 0.000
AimMethod.TextXAlignment = Enum.TextXAlignment.Left
AimMethod.TextYAlignment = Enum.TextYAlignment.Top

value_11.Name = "value"
value_11.Parent = AimMethod
value_11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_11.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_11.Position = UDim2.new(0.00294979103, 0, 0.335594594, 0)
value_11.Size = UDim2.new(0, 336, 0, 28)
value_11.Font = Enum.Font.TitilliumWeb
value_11.Text = "Camera"
value_11.TextColor3 = Color3.fromRGB(0, 170, 0)
value_11.TextSize = 28.000
value_11.TextStrokeTransparency = 0.000
value_11.TextXAlignment = Enum.TextXAlignment.Left

About_2.Name = "About"
About_2.Parent = AimMethod
About_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
About_2.BackgroundTransparency = 1.000
About_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
About_2.BorderSizePixel = 0
About_2.Position = UDim2.new(0.000516534899, 0, 0.650201321, 0)
About_2.Size = UDim2.new(0, 331, 0, 25)
About_2.Font = Enum.Font.TitilliumWeb
About_2.Text = "Less universal, more stable."
About_2.TextColor3 = Color3.fromRGB(0, 170, 0)
About_2.TextScaled = true
About_2.TextSize = 28.000
About_2.TextStrokeTransparency = 0.000
About_2.TextWrapped = true

GlobalSettingsUI.Name = "GlobalSettingsUI"
GlobalSettingsUI.Parent = Aimbot
GlobalSettingsUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
GlobalSettingsUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
GlobalSettingsUI.Position = UDim2.new(0.55347693, 0, 0.230392128, 0)
GlobalSettingsUI.Size = UDim2.new(0, 347, 0, 364)
GlobalSettingsUI.Visible = false

Title_4.Name = "Title"
Title_4.Parent = GlobalSettingsUI
Title_4.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_4.Position = UDim2.new(0.0028818443, 0, 0, 0)
Title_4.Size = UDim2.new(0, 298, 0, 31)
Title_4.Font = Enum.Font.TitilliumWeb
Title_4.Text = "Universal Settings"
Title_4.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_4.TextSize = 32.000
Title_4.TextStrokeTransparency = 0.000
Title_4.TextWrapped = true

X_2.Name = "X"
X_2.Parent = GlobalSettingsUI
X_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_2.Position = UDim2.new(0.866863608, 0, 0, 0)
X_2.Size = UDim2.new(0, 46, 0, 31)
X_2.Font = Enum.Font.TitilliumWeb
X_2.Text = "Close"
X_2.TextColor3 = Color3.fromRGB(170, 0, 0)
X_2.TextSize = 28.000
X_2.TextStrokeTransparency = 0.000
X_2.TextWrapped = true

ScrollingFrame_2.Parent = GlobalSettingsUI
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame_2.Position = UDim2.new(0.0028818443, 0, 0.0849862546, 0)
ScrollingFrame_2.Size = UDim2.new(0, 346, 0, 292)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_3.Parent = ScrollingFrame_2

RightClickAim.Name = "RightClickAim"
RightClickAim.Parent = ScrollingFrame_2
RightClickAim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RightClickAim.BackgroundTransparency = 1.000
RightClickAim.BorderColor3 = Color3.fromRGB(0, 170, 0)
RightClickAim.BorderSizePixel = 0
RightClickAim.Position = UDim2.new(0, 0, 0.414035082, 0)
RightClickAim.Size = UDim2.new(0, 169, 0, 59)
RightClickAim.Font = Enum.Font.TitilliumWeb
RightClickAim.Text = "Right-click To Aim:"
RightClickAim.TextColor3 = Color3.fromRGB(0, 170, 0)
RightClickAim.TextSize = 28.000
RightClickAim.TextStrokeTransparency = 0.000
RightClickAim.TextXAlignment = Enum.TextXAlignment.Left
RightClickAim.TextYAlignment = Enum.TextYAlignment.Top

value_12.Name = "value"
value_12.Parent = RightClickAim
value_12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_12.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_12.Position = UDim2.new(0.00591715984, 0, 0.524137616, 0)
value_12.Size = UDim2.new(0, 337, 0, 28)
value_12.Font = Enum.Font.TitilliumWeb
value_12.Text = "false"
value_12.TextColor3 = Color3.fromRGB(0, 170, 0)
value_12.TextSize = 28.000
value_12.TextStrokeTransparency = 0.000
value_12.TextXAlignment = Enum.TextXAlignment.Left

TeamAutofill.Name = "TeamAutofill"
TeamAutofill.Parent = ScrollingFrame_2
TeamAutofill.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeamAutofill.BackgroundTransparency = 1.000
TeamAutofill.BorderColor3 = Color3.fromRGB(0, 170, 0)
TeamAutofill.BorderSizePixel = 0
TeamAutofill.Position = UDim2.new(0, 0, 0.824561417, 0)
TeamAutofill.Size = UDim2.new(0, 169, 0, 59)
TeamAutofill.Font = Enum.Font.TitilliumWeb
TeamAutofill.Text = "Autofill Team Names:"
TeamAutofill.TextColor3 = Color3.fromRGB(0, 170, 0)
TeamAutofill.TextSize = 28.000
TeamAutofill.TextStrokeTransparency = 0.000
TeamAutofill.TextXAlignment = Enum.TextXAlignment.Left
TeamAutofill.TextYAlignment = Enum.TextYAlignment.Top

value_13.Name = "value"
value_13.Parent = TeamAutofill
value_13.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_13.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_13.Position = UDim2.new(0.00591715984, 0, 0.52416575, 0)
value_13.Size = UDim2.new(0, 337, 0, 28)
value_13.Font = Enum.Font.TitilliumWeb
value_13.Text = "true"
value_13.TextColor3 = Color3.fromRGB(0, 170, 0)
value_13.TextSize = 28.000
value_13.TextStrokeTransparency = 0.000
value_13.TextXAlignment = Enum.TextXAlignment.Left

MouseSensitivity.Name = "MouseSensitivity"
MouseSensitivity.Parent = ScrollingFrame_2
MouseSensitivity.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MouseSensitivity.BackgroundTransparency = 1.000
MouseSensitivity.BorderColor3 = Color3.fromRGB(0, 170, 0)
MouseSensitivity.BorderSizePixel = 0
MouseSensitivity.Position = UDim2.new(0, 0, 0.30479452, 0)
MouseSensitivity.Size = UDim2.new(0, 337, 0, 107)
MouseSensitivity.Font = Enum.Font.TitilliumWeb
MouseSensitivity.Text = "Mouse sensitivity:"
MouseSensitivity.TextColor3 = Color3.fromRGB(0, 170, 0)
MouseSensitivity.TextSize = 28.000
MouseSensitivity.TextStrokeTransparency = 0.000
MouseSensitivity.TextXAlignment = Enum.TextXAlignment.Left
MouseSensitivity.TextYAlignment = Enum.TextYAlignment.Top

About_3.Name = "About"
About_3.Parent = MouseSensitivity
About_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
About_3.BackgroundTransparency = 1.000
About_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
About_3.BorderSizePixel = 0
About_3.Position = UDim2.new(0.00296735903, 0, 0.557552993, 0)
About_3.Size = UDim2.new(0, 330, 0, 44)
About_3.Font = Enum.Font.TitilliumWeb
About_3.Text = "This will only be used if aiming method is mouse. Higher number = possibly better aiming but more shakiness."
About_3.TextColor3 = Color3.fromRGB(0, 170, 0)
About_3.TextScaled = true
About_3.TextSize = 24.000
About_3.TextStrokeTransparency = 0.000
About_3.TextWrapped = true

value_14.Name = "value"
value_14.Parent = MouseSensitivity
value_14.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_14.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_14.Position = UDim2.new(-1.75680034e-05, 0, 0.258487642, 0)
value_14.Size = UDim2.new(0, 335, 0, 28)
value_14.Font = Enum.Font.TitilliumWeb
value_14.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
value_14.PlaceholderText = "Default is 0.25"
value_14.Text = "0.25"
value_14.TextColor3 = Color3.fromRGB(0, 170, 0)
value_14.TextSize = 28.000
value_14.TextStrokeTransparency = 0.000
value_14.TextXAlignment = Enum.TextXAlignment.Left

keybinds.Name = "keybinds"
keybinds.Parent = GlobalSettingsUI
keybinds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
keybinds.BorderColor3 = Color3.fromRGB(0, 170, 0)
keybinds.Position = UDim2.new(0.314121038, 0, 0.899735153, 0)
keybinds.Size = UDim2.new(0, 130, 0, 36)
keybinds.Font = Enum.Font.TitilliumWeb
keybinds.Text = "Keybinds"
keybinds.TextColor3 = Color3.fromRGB(0, 170, 0)
keybinds.TextSize = 28.000
keybinds.TextWrapped = true

TeamUI.Name = "TeamUI"
TeamUI.Parent = Aimbot
TeamUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
TeamUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
TeamUI.Position = UDim2.new(0.453125, 0, 0.233331263, 0)
TeamUI.Size = UDim2.new(0, 371, 0, 309)
TeamUI.Visible = false

WhitelistedTeams.Name = "WhitelistedTeams"
WhitelistedTeams.Parent = TeamUI
WhitelistedTeams.Active = true
WhitelistedTeams.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
WhitelistedTeams.BorderColor3 = Color3.fromRGB(0, 170, 0)
WhitelistedTeams.Position = UDim2.new(0, 0, 0.538294613, 0)
WhitelistedTeams.Size = UDim2.new(0, 370, 0, 136)
WhitelistedTeams.ZIndex = 2
WhitelistedTeams.CanvasSize = UDim2.new(0, 0, 0, 0)

whitelistframe_2.Name = "whitelistframe"
whitelistframe_2.Parent = WhitelistedTeams
whitelistframe_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
whitelistframe_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
whitelistframe_2.Size = UDim2.new(0, 336, 0, 45)
whitelistframe_2.Visible = false

TextLabel_2.Parent = whitelistframe_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
TextLabel_2.Size = UDim2.new(0, 258, 0, 45)
TextLabel_2.Font = Enum.Font.TitilliumWeb
TextLabel_2.Text = "[Criminal] will be ignored when on [Prisoner]"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 170, 0)
TextLabel_2.TextSize = 22.000
TextLabel_2.TextWrapped = true

undo.Name = "undo"
undo.Parent = whitelistframe_2
undo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
undo.BorderColor3 = Color3.fromRGB(0, 170, 0)
undo.Position = UDim2.new(0.767874956, 0, 0, 0)
undo.Size = UDim2.new(0, 77, 0, 45)
undo.Font = Enum.Font.TitilliumWeb
undo.Text = "undo"
undo.TextColor3 = Color3.fromRGB(170, 0, 0)
undo.TextSize = 26.000
undo.TextWrapped = true

UIListLayout_4.Parent = WhitelistedTeams
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

WLTeam.Name = "WLTeam"
WLTeam.Parent = TeamUI
WLTeam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WLTeam.BorderColor3 = Color3.fromRGB(0, 170, 0)
WLTeam.Position = UDim2.new(0.273479104, 0, 0.433278412, 0)
WLTeam.Size = UDim2.new(0, 168, 0, 32)
WLTeam.Font = Enum.Font.TitilliumWeb
WLTeam.Text = "Whitelist Team"
WLTeam.TextColor3 = Color3.fromRGB(0, 170, 0)
WLTeam.TextSize = 28.000
WLTeam.TextWrapped = true

whitelistteam.Name = "whitelistteam"
whitelistteam.Parent = TeamUI
whitelistteam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
whitelistteam.BorderColor3 = Color3.fromRGB(0, 170, 0)
whitelistteam.Position = UDim2.new(0.485556245, 0, 0.227746367, 0)
whitelistteam.Size = UDim2.new(0, 178, 0, 28)
whitelistteam.Font = Enum.Font.TitilliumWeb
whitelistteam.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
whitelistteam.PlaceholderText = "Team to whitelist"
whitelistteam.Text = ""
whitelistteam.TextColor3 = Color3.fromRGB(0, 170, 0)
whitelistteam.TextSize = 24.000
whitelistteam.TextStrokeTransparency = 0.000
whitelistteam.TextWrapped = true

yourteam.Name = "yourteam"
yourteam.Parent = TeamUI
yourteam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
yourteam.BorderColor3 = Color3.fromRGB(0, 170, 0)
yourteam.Position = UDim2.new(0.485556185, 0, 0.120595686, 0)
yourteam.Size = UDim2.new(0, 178, 0, 28)
yourteam.Font = Enum.Font.TitilliumWeb
yourteam.PlaceholderColor3 = Color3.fromRGB(0, 170, 0)
yourteam.PlaceholderText = "Your team"
yourteam.Text = ""
yourteam.TextColor3 = Color3.fromRGB(0, 170, 0)
yourteam.TextSize = 24.000
yourteam.TextStrokeTransparency = 0.000
yourteam.TextWrapped = true

label1.Name = "label1"
label1.Parent = TeamUI
label1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label1.BackgroundTransparency = 1.000
label1.BorderColor3 = Color3.fromRGB(0, 170, 0)
label1.Position = UDim2.new(0.0242587607, 0, 0.123778805, 0)
label1.Size = UDim2.new(0, 171, 0, 28)
label1.Font = Enum.Font.TitilliumWeb
label1.Text = "When on this team: "
label1.TextColor3 = Color3.fromRGB(0, 170, 0)
label1.TextSize = 26.000
label1.TextStrokeTransparency = 0.000
label1.TextWrapped = true
label1.TextXAlignment = Enum.TextXAlignment.Left

label2.Name = "label2"
label2.Parent = TeamUI
label2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label2.BackgroundTransparency = 1.000
label2.BorderColor3 = Color3.fromRGB(85, 255, 0)
label2.Position = UDim2.new(0.0242587607, 0, 0.230628058, 0)
label2.Size = UDim2.new(0, 171, 0, 28)
label2.Font = Enum.Font.TitilliumWeb
label2.Text = "Ignore this team:"
label2.TextColor3 = Color3.fromRGB(0, 170, 0)
label2.TextSize = 26.000
label2.TextStrokeTransparency = 0.000
label2.TextWrapped = true
label2.TextXAlignment = Enum.TextXAlignment.Left

Title_5.Name = "Title"
Title_5.Parent = TeamUI
Title_5.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_5.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_5.Size = UDim2.new(0, 324, 0, 31)
Title_5.Font = Enum.Font.TitilliumWeb
Title_5.Text = "Team Whitelister"
Title_5.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_5.TextSize = 30.000
Title_5.TextStrokeTransparency = 0.000
Title_5.TextWrapped = true

X_3.Name = "X"
X_3.Parent = TeamUI
X_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_3.Position = UDim2.new(0.874868035, 0, 0, 0)
X_3.Size = UDim2.new(0, 46, 0, 31)
X_3.Font = Enum.Font.TitilliumWeb
X_3.Text = "Close"
X_3.TextColor3 = Color3.fromRGB(170, 0, 0)
X_3.TextSize = 28.000
X_3.TextStrokeTransparency = 0.000
X_3.TextWrapped = true

KeybindsUI.Name = "KeybindsUI"
KeybindsUI.Parent = Aimbot
KeybindsUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
KeybindsUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
KeybindsUI.Position = UDim2.new(0.552746475, 0, 0.230392128, 0)
KeybindsUI.Size = UDim2.new(0, 347, 0, 364)
KeybindsUI.Visible = false

Title_6.Name = "Title"
Title_6.Parent = KeybindsUI
Title_6.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_6.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_6.Size = UDim2.new(0, 300, 0, 31)
Title_6.Font = Enum.Font.TitilliumWeb
Title_6.Text = "Keybinds"
Title_6.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_6.TextSize = 32.000
Title_6.TextStrokeTransparency = 0.000
Title_6.TextWrapped = true

X_4.Name = "X"
X_4.Parent = KeybindsUI
X_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_4.Position = UDim2.new(0.866863608, 0, 0, 0)
X_4.Size = UDim2.new(0, 46, 0, 31)
X_4.Font = Enum.Font.TitilliumWeb
X_4.Text = "Close"
X_4.TextColor3 = Color3.fromRGB(170, 0, 0)
X_4.TextSize = 28.000
X_4.TextStrokeTransparency = 0.000
X_4.TextWrapped = true

ScrollingFrame_3.Parent = KeybindsUI
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame_3.Position = UDim2.new(0.0028818443, 0, 0.0849862546, 0)
ScrollingFrame_3.Size = UDim2.new(0, 346, 0, 292)
ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_5.Parent = ScrollingFrame_3

AimbotToggle.Name = "AimbotToggle"
AimbotToggle.Parent = ScrollingFrame_3
AimbotToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AimbotToggle.BackgroundTransparency = 1.000
AimbotToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
AimbotToggle.BorderSizePixel = 0
AimbotToggle.Position = UDim2.new(0, 0, 0.207017541, 0)
AimbotToggle.Size = UDim2.new(0, 169, 0, 59)
AimbotToggle.Font = Enum.Font.TitilliumWeb
AimbotToggle.Text = "Aimbot Toggle:"
AimbotToggle.TextColor3 = Color3.fromRGB(0, 170, 0)
AimbotToggle.TextSize = 28.000
AimbotToggle.TextStrokeTransparency = 0.000
AimbotToggle.TextXAlignment = Enum.TextXAlignment.Left
AimbotToggle.TextYAlignment = Enum.TextYAlignment.Top

value_15.Name = "value"
value_15.Parent = AimbotToggle
value_15.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_15.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_15.Position = UDim2.new(-0.00591715984, 0, 0.490240097, 0)
value_15.Size = UDim2.new(0, 260, 0, 28)
value_15.Font = Enum.Font.TitilliumWeb
value_15.Text = "Enum.KeyCode.CapsLock"
value_15.TextColor3 = Color3.fromRGB(0, 170, 0)
value_15.TextSize = 28.000
value_15.TextStrokeTransparency = 0.000
value_15.TextXAlignment = Enum.TextXAlignment.Left

reset.Name = "reset"
reset.Parent = AimbotToggle
reset.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reset.BorderColor3 = Color3.fromRGB(0, 170, 0)
reset.Position = UDim2.new(1.53846157, 0, 0.490239859, 0)
reset.Size = UDim2.new(0, 78, 0, 28)
reset.Font = Enum.Font.TitilliumWeb
reset.Text = "Reset"
reset.TextColor3 = Color3.fromRGB(170, 0, 0)
reset.TextSize = 28.000
reset.TextStrokeTransparency = 0.000

TargetedPartToggle.Name = "TargetedPartToggle"
TargetedPartToggle.Parent = ScrollingFrame_3
TargetedPartToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TargetedPartToggle.BackgroundTransparency = 1.000
TargetedPartToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
TargetedPartToggle.BorderSizePixel = 0
TargetedPartToggle.Position = UDim2.new(0, 0, 0.414035082, 0)
TargetedPartToggle.Size = UDim2.new(0, 169, 0, 59)
TargetedPartToggle.Font = Enum.Font.TitilliumWeb
TargetedPartToggle.Text = "Targeted Part Toggle:"
TargetedPartToggle.TextColor3 = Color3.fromRGB(0, 170, 0)
TargetedPartToggle.TextSize = 28.000
TargetedPartToggle.TextStrokeTransparency = 0.000
TargetedPartToggle.TextXAlignment = Enum.TextXAlignment.Left
TargetedPartToggle.TextYAlignment = Enum.TextYAlignment.Top

value_16.Name = "value"
value_16.Parent = TargetedPartToggle
value_16.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_16.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_16.Position = UDim2.new(0.00591715984, 0, 0.524137616, 0)
value_16.Size = UDim2.new(0, 258, 0, 28)
value_16.Font = Enum.Font.TitilliumWeb
value_16.Text = "Enum.KeyCode.X"
value_16.TextColor3 = Color3.fromRGB(0, 170, 0)
value_16.TextSize = 28.000
value_16.TextStrokeTransparency = 0.000
value_16.TextXAlignment = Enum.TextXAlignment.Left

reset_2.Name = "reset"
reset_2.Parent = TargetedPartToggle
reset_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reset_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
reset_2.Position = UDim2.new(1.53254437, 0, 0.524138212, 0)
reset_2.Size = UDim2.new(0, 78, 0, 28)
reset_2.Font = Enum.Font.TitilliumWeb
reset_2.Text = "Reset"
reset_2.TextColor3 = Color3.fromRGB(170, 0, 0)
reset_2.TextSize = 28.000
reset_2.TextStrokeTransparency = 0.000

GUIVisibilityToggle.Name = "GUIVisibilityToggle"
GUIVisibilityToggle.Parent = ScrollingFrame_3
GUIVisibilityToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUIVisibilityToggle.BackgroundTransparency = 1.000
GUIVisibilityToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
GUIVisibilityToggle.BorderSizePixel = 0
GUIVisibilityToggle.Position = UDim2.new(0, 0, 0.207017541, 0)
GUIVisibilityToggle.Size = UDim2.new(0, 169, 0, 59)
GUIVisibilityToggle.Font = Enum.Font.TitilliumWeb
GUIVisibilityToggle.Text = "GUI Visibility Toggle:"
GUIVisibilityToggle.TextColor3 = Color3.fromRGB(0, 170, 0)
GUIVisibilityToggle.TextSize = 28.000
GUIVisibilityToggle.TextStrokeTransparency = 0.000
GUIVisibilityToggle.TextXAlignment = Enum.TextXAlignment.Left
GUIVisibilityToggle.TextYAlignment = Enum.TextYAlignment.Top

value_17.Name = "value"
value_17.Parent = GUIVisibilityToggle
value_17.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_17.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_17.Position = UDim2.new(-0.00591715984, 0, 0.490240097, 0)
value_17.Size = UDim2.new(0, 260, 0, 28)
value_17.Font = Enum.Font.TitilliumWeb
value_17.Text = "none"
value_17.TextColor3 = Color3.fromRGB(0, 170, 0)
value_17.TextSize = 28.000
value_17.TextStrokeTransparency = 0.000
value_17.TextXAlignment = Enum.TextXAlignment.Left

reset_3.Name = "reset"
reset_3.Parent = GUIVisibilityToggle
reset_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reset_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
reset_3.Position = UDim2.new(1.53846157, 0, 0.490239859, 0)
reset_3.Size = UDim2.new(0, 78, 0, 28)
reset_3.Font = Enum.Font.TitilliumWeb
reset_3.Text = "Reset"
reset_3.TextColor3 = Color3.fromRGB(170, 0, 0)
reset_3.TextSize = 28.000
reset_3.TextStrokeTransparency = 0.000

globals.Name = "globals"
globals.Parent = KeybindsUI
globals.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
globals.BorderColor3 = Color3.fromRGB(0, 170, 0)
globals.Position = UDim2.new(0.314121038, 0, 0.899735153, 0)
globals.Size = UDim2.new(0, 130, 0, 36)
globals.Font = Enum.Font.TitilliumWeb
globals.Text = "Global Settings"
globals.TextColor3 = Color3.fromRGB(0, 170, 0)
globals.TextSize = 28.000
globals.TextWrapped = true

-- Scripts:

local function EFHUV_fake_script() -- Aimbot.Scripts 
	local script = Instance.new('LocalScript', Aimbot)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/getservice%20auto-converter.lua"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()
	
	local gui = script.Parent
	local MainFrame = gui.MFrame
	local wlui = gui.ManagerUI
	local gamesettings = gui.GameSettingsUI.ScrollingFrame
	local globalsettings = gui.GlobalSettingsUI.ScrollingFrame
	local keybindsettings = gui.KeybindsUI.ScrollingFrame
	local games = gui.GameSettingsUI
	local globals = gui.GlobalSettingsUI
	local keys = gui.KeybindsUI
	local teamui = gui.TeamUI
	local camera = workspace.CurrentCamera
	local tcservice = game:GetService("TextChatService")
	local npcs = {}
	
	local function sendnotif(title, text)
		text = "<font color = '#"..MainFrame.BorderColor3:ToHex().."'>["..title.."]: "..text.."</font>"
		if tcservice.ChatVersion == Enum.ChatVersion.LegacyChatService then
			game.StarterGui:SetCore("ChatMakeSystemMessage",({["Text"] = text}))
		else
			tcservice.TextChannels.RBXGeneral:DisplaySystemMessage(text)
		end
	end
	
	if not _G.RedsAimbot then
		_G.RedsAimbot = true
		sendnotif("Aimbot Update", "The MouseSensitivity thing no longer changes MouseDeltaSensitivity, making the aimbot slightly more hidden.")
		for i,v in pairs(gui:GetDescendants()) do
			if v.ClassName == "Frame" and v.Parent.ClassName ~= "ScrollingFrame" then
				v.Draggable = true
				v.Active = true
			end
			if v.ClassName == "ScrollingFrame" then
				v.AutomaticCanvasSize = 2
				v.ScrollBarImageColor3 = Color3.new(0,0.66,0)
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
			local enabled = true
			local t = {}
			t.Stop = function()
				enabled = false
			end
			t.stop = t.Stop
	
			thread(function()
				while enabled do
					if part[PropertyName] ~= current then
						thread(function()
							func(part[PropertyName], current, elapsedTime)
						end)
						elapsedTime = 0
						current = part[PropertyName]
					end
					elapsedTime = elapsedTime + task.wait()
				end
			end)
			return t
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
			local enabled = true
			local t = {}
			t.Stop = function()
				enabled = false
			end
			t.stop = t.Stop
	
			thread(function()
				while enabled do
					if tablecount(Table) ~= count then
						if tablecount(Table) > count then
	
							for i,v in pairs(Table) do
								if clone[i] == nil then
									thread(function()
										func(i,v,elapsedTime)
									end)
								end
							end
							elapsedTime = 0
						end
						count = tablecount(Table)
						clone = table.clone(Table)
					end
					elapsedTime = elapsedTime + task.wait()
				end
			end)
			return t
		end
	
		local reps = {}
		local TableChanged = function(Table,f,dosubtables,issubtable)
			local t = {}
			local funcs = {}
			if not dosubtables then
				reps = {}
			end
			local function tc(t)
				for i,v in pairs(t) do
					local mainchanged = Changed(t,i,function(...)
						f(t,i,...)
					end)
					table.insert(funcs, mainchanged)
				end
	
				local added = TableAdded(t,function(index,value,Time)
					f(t,index,value,nil,Time)
					local subchanged = Changed(t,index,function(...)
						f(t,index,...)
					end)
					table.insert(funcs, subchanged)
				end)
				table.insert(funcs, added)
			end
	
			tc(Table)
			if dosubtables then
				for i,v in pairs(Table) do
					if type(i) == "table" and not table.find(reps, i) then
						table.insert(reps, i)
						tc(i)
					end
					if type(v) == "table" and not table.find(reps, v) then
						table.insert(reps, v)
						tc(v)
					end
				end
			end
			t.Stop = function()
				for i,v in pairs(funcs) do
					v:Stop()
				end
			end
			t.stop = t.Stop
			return t
		end
	
		local plrs = game.Players
		local lplr = plrs.LocalPlayer
		local m = lplr:GetMouse()
		local RightClick = false
	
		local isnpc = function(ins)
	
			for i,v in pairs(GetFamily(ins,true)) do
				if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").RootPart and not plrs:GetPlayerFromCharacter(v) and table.find(npcs, v) then
					return v
				end
			end
	
		end
		
		local valuesort = function(t, func)
			local revert = {}
			local vals = {}
	
	
			for i,v in pairs(t) do
				revert[v] = i
				table.insert(vals,v)
			end
	
			table.sort(vals)
	
			for i,v in pairs(vals) do
				local f = func(revert[v], v)
				if f == "stop" then
					break
				end
			end
	
		end
		
		local teams = game.Teams
		local WhitelistedPlrs = {}
		local PrioritizedPlrs = {}
		local misc = {}
		misc.IsAimbotOn = false
		misc.TargetedCharacter = nil
		misc.aimoffset = Vector3.new()
		local GlobalStats
		local GameStats
		local Keybinds
	
		local function gengamestats()
			GlobalStats[game.PlaceId] = {}
			GameStats = GlobalStats[game.PlaceId]
			GameStats.Target = "Head"
			GameStats.TargetNPCs = false
			GameStats.AutoTarget = true
			GameStats.WhitelistFriends = false
			GameStats.MaxStuds = 500
			GameStats.OwnTeamWhitelisted = true
			GameStats.Teams = {}
			GameStats.TargetCloserPlayers = true
			GameStats.Teams = {}
			GameStats.TargetNPCs = false
			GameStats.TargetCloserPlayers = true
			GameStats.IgnorePlayers = false
			GameStats.TargetPrioOnly = false
			GameStats.FirstPersonEnabled = true
			GameStats.AimMethod = "Mouse"
		end
	
		if isfile and loadfile and isfile("RedsAimbotStats.lua") then
			GlobalStats = loadfile("RedsAimbotStats.lua")()
			local newglobalstats = {}
			newglobalstats.TeamAutofill = true
			newglobalstats.RightClickAim = false
			newglobalstats.MouseSensitivity = 0.25
			if not GlobalStats[game.PlaceId] then
				gengamestats()
			end
			
			for name, default in pairs(newglobalstats) do
				if GlobalStats[name] == nil then
					GlobalStats[name] = default
				end
			end
			
			for i,v in pairs(GlobalStats.Keybinds) do
				if keybindsettings:FindFirstChild(i) then
					keybindsettings[i].value.Text = tostring(v)
				else
					if GlobalStats[game.PlaceId][i] == nil and GlobalStats[i] == nil then
						GlobalStats.Keybinds[i] = nil -- remove out-of-date values
					end
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
			gengamestats()
			GlobalStats.Keybinds.AimbotToggle = Enum.KeyCode.CapsLock
			GlobalStats.Keybinds.TargetedPartToggle = Enum.KeyCode.RightAlt
			local newkeybinds = {}
			newkeybinds.GUIVisibilityToggle = "none"
			
			for name, default in pairs(newkeybinds) do
				if GlobalStats.Keybinds[name] == nil then
					GlobalStats.Keybinds[name] = default
				end
			end
		end
		
		getgenv().RedsAimbotStats = GlobalStats
		getgenv().RedsAimbotMisc = misc
	
		GameStats = GlobalStats[game.PlaceId]
		Keybinds = GlobalStats.Keybinds
		local newgamestats = {}
		newgamestats.Teams = {}
		newgamestats.TargetNPCs = false
		newgamestats.TargetCloserPlayers = true
		newgamestats.IgnorePlayers = false
		newgamestats.TargetPrioOnly = false
		newgamestats.FirstPersonEnabled = true
		newgamestats.AimMethod = "Mouse"
		
		for name, default in pairs(newgamestats) do
			if GameStats[name] == nil then
				GameStats[name] = default
			end
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
	
		TableChanged(GlobalStats, savesettings, true)
	
		local addteamframe = function(ttable)
			local clone = teamui.WhitelistedTeams.whitelistframe:Clone()
			clone.Parent = teamui.WhitelistedTeams
			clone.TextLabel.Text = "["..ttable.team2.."] will be ignored when on ["..ttable.team1.."]"
			clone.Visible = true
	
			clone.undo.Activated:connect(function()
				clone:Destroy()
				local tfind = table.find(GameStats.Teams,ttable)
				table.remove(GameStats.Teams,tfind)
			end)
	
		end
		
		local function addkeybind(t, name)
			if type(t[name]) == "boolean" then
				local clone = keybindsettings.AimbotToggle:Clone()
				clone.Parent = keybindsettings
				clone.Name = name
				clone.Text = name.." Toggle:"
				local val = Keybinds[name]
				if val == nil then
					GlobalStats.Keybinds[name] = "none"
					clone.value.Text = "none"
				else
					clone.value.Text = tostring(val)
				end
			end
		end
	
		for i,v in pairs(GameStats.Teams) do
			addteamframe(v)
		end
		
		for i,v in pairs(GameStats) do 
			addkeybind(GameStats, i)
		end
		
		for i,v in pairs(GlobalStats) do
			addkeybind(GlobalStats, i)
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
			local humanoid
			if player.Character then
				humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			end
			if player ~= lplr and humanoid and IsNotWhitelisted(player) and humanoid.Health ~= 0 then
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
			if keycode == Keybinds.GUIVisibilityToggle then
				if MainFrame.Visible then
					for i,v in pairs(gui:GetChildren()) do
						if v.ClassName == "Frame" then
							v.Visible = false
						end
					end
				else
					MainFrame.Visible = true
				end
			end
			for i,v in pairs(Keybinds) do
				if GameStats[i] ~= nil and keycode == Keybinds[i] then
					GameStats[i] = not GameStats[i]
				end
				if GlobalStats[i] ~= nil and keycode == Keybinds[i] then
					GlobalStats[i] = not GlobalStats[i]
				end
			end
		end)
	
		games.X.Activated:connect(function()
			games.Visible = false
		end)
	
		for i,v in pairs(gamesettings:GetChildren()) do
			if v:FindFirstChild("value") then
				if type(GameStats[v.Name]) == "boolean" then
					v.value.Activated:connect(function()
						GameStats[v.Name] = not GameStats[v.Name]
					end)
					Changed(GameStats,v.Name,function(val)
						v.value.Text = tostring(val)
					end)
				end
			end
		end
	
		gamesettings.Target.value.Activated:connect(function()
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
				if num > 5000 then
					GameStats.MaxStuds = 5000
					gamesettings.MaxStuds.value.Text = "5000"
				end
			end
		end)
	
		for i,v in pairs(globalsettings:GetChildren()) do
			if type(GlobalStats[v.Name]) == "boolean" then
				v.value.Activated:connect(function()
					GlobalStats[v.Name] = not GlobalStats[v.Name]
				end)
				Changed(GlobalStats, v.Name, function(val)
					v.value.Text = tostring(val)
				end)
			end
		end
		
		for i,v in pairs(keybindsettings:getChildren()) do 
			if v:FindFirstChild("reset") then
				v.reset.Activated:connect(function()
					GlobalStats.Keybinds[v.Name] = "none"
					v.value.Text = "none"
				end)
				
				v.value.Activated:connect(function()
					GlobalStats.Keybinds[v.Name] = "none"
					v.value.Text = "Press any key"
					local key = game.UserInputService.InputBegan:Wait()
					task.wait()
					GlobalStats.Keybinds[v.Name] = key.KeyCode
					v.value.Text = tostring(key.KeyCode)
				end)
			end
		end
		
		if gamesettings.AimMethod.value.Text == "Camera" then
			gamesettings.AimMethod.About.Text = "Less universal, more stable."
		end
		gamesettings.AimMethod.value.Activated:connect(function()
			local method = gamesettings.AimMethod
			if method.value.Text == "Camera" then
				method.value.Text = "Mouse"
				method.About.Text = "More universal, less stable."
			else
				method.value.Text = "Camera"
				method.About.Text = "Less universal, more stable."
			end
			GameStats.AimMethod = method.value.Text
		end)
		Changed(globalsettings.MouseSensitivity.value, "Text", function (txt)
			local num = tonumber(txt)
			if num then
				GlobalStats.MouseSensitivity = num
				if num > 1 then
					globalsettings.MouseSensitivity.value.Text = "1"
					GlobalStats.MouseSensitivity = 1
				end
			end
		end)
	
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
							v:ReleaseFocus()
						end
					end
				end)
			end
		end
	
		local wlmsg = teamui.WLTeam.Text
		teamui.WLTeam.Activated:connect(function()
	
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
	
		globals.X.Activated:connect(function()
			globals.Visible = false
		end)
	
		teamui.X.Activated:connect(function()
			teamui.Visible = false
		end)
	
	    TableAdded(npcs, function(i, npc) 
	        npc.Humanoid.Died:connect(function()
	            npcs[i] = nil
				if misc.TargetedCharacter == npc then
					deselect()
				end
	        end)
	    end)
		
		local function checkpart(v)
			return not v.CanCollide or v.Transparency == 1
		end
		
		local function isactivenpc(npc)
			thread(function()
				local changed
				local active = false
				changed = Changed(npc.Humanoid.RootPart, "CFrame", function()
					active = true
					changed.Stop()
				end)
				repeat task.wait() until active
				table.insert(npcs, npc)
			end)
		end
	
	    for i,v in pairs(workspace:GetDescendants()) do
	        if v.ClassName == "Humanoid" and v.RootPart and not plrs:GetPlayerFromCharacter(v.Parent) and not table.find(npcs, v.Parent) and v.Health > 0 then
	            isactivenpc(v.Parent)
			end
	    end
	
	    workspace.DescendantAdded:connect(function(v)
	        if v.ClassName == "Humanoid" then
	            if not v.RootPart then repeat task.wait() until v.RootPart end
		            if not plrs:GetPlayerFromCharacter(v.Parent) and not table.find(npcs, v.Parent) and v.Health > 0 then
		                isactivenpc(v.Parent)
		            end
	        end
		end)
		
		workspace.DescendantRemoving:connect(function(v)
			local npcfind = table.find(npcs, v)
			if npcfind and GetFamily(v)[1] ~= game then
				table.remove(npcs, npcfind)
			end
		end)
	
	    local function gettargetpart(chr)
			local p = chr:FindFirstChild(GameStats.Target)
			if p then
				return p
			else
				if chr:FindFirstChild("Humanoid") and chr.Humanoid.RootPart then
					return chr.Humanoid.RootPart
				end
			end
		end
	
		local AimbotFunction = game.RunService.RenderStepped:connect(function()
			if misc.TargetedCharacter then
				local part = gettargetpart(misc.TargetedCharacter)
				if part then
					local partpos = part.Position
					local v, onscreen = camera:WorldToScreenPoint(partpos + misc.aimoffset)
					local x,y = (v.X - m.X), (v.Y - m.Y)
					if onscreen then
						if misc.IsAimbotOn then
							if GlobalStats.RightClickAim and RightClick or not GlobalStats.RightClickAim then
								if GameStats.AimMethod == "Camera" then
									camera.CFrame = CFrame.new(camera.CFrame.Position, partpos + misc.aimoffset)
									game.UserInputService.MouseDeltaSensitivity = 0
								else
									mousemoverel((x + misc.aimoffset.X) * GlobalStats.MouseSensitivity, (y + misc.aimoffset.Y) * GlobalStats.MouseSensitivity)
								end
								if not GameStats.FirstPersonEnabled then
									lplr.Character.Humanoid.RootPart.CFrame = CFrame.lookAt(lplr.Character.Humanoid.RootPart.Position, (partpos * Vector3.new(1,0,1)) + Vector3.new(0, lplr.Character.Humanoid.RootPart.Position.Y, 0))
								end
							end
						end
					else
						camera.CFrame = CFrame.new(camera.CFrame.Position, partpos)
					end
				end
			else
				game.UserInputService.MouseDeltaSensitivity = 1
			end
	
			if m.Target ~= nil then
			if not GameStats.IgnorePlayers then
					for i,v in pairs(GetFamily(m.Target)) do
						local plr = game.Players:FindFirstChild(v.Name)
						if plr and plr.Character then
							targetplayer(plr)
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
			    local PrioritizedPlrsOnScreen = {}
	
				local function addchr(v)
					local player = plrs:GetPlayerFromCharacter(v)
					if player and IsNotWhitelisted(player) or not player then
			    		if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health ~= 0 then
							local targpart = gettargetpart(v)
							if targpart then
				    	        local pos = math.floor(lplr:DistanceFromCharacter(targpart.Position))
				    	        local _, onscreen = camera:WorldToScreenPoint(targpart.Position)
				    	        if onscreen and pos < GameStats.MaxStuds then
				    	            table1[v] = pos
				        			if table.find(PrioritizedPlrs, plrs:GetPlayerFromCharacter(v)) then
				        				table.insert(PrioritizedPlrsOnScreen, v)
				        			end
								end
							end
			        	end
					end
	            end
	            
	            if GameStats.TargetNPCs and not GameStats.TargetPrioOnly then
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
	
				if #PrioritizedPlrsOnScreen ~= 0 then
	
					for chr, pos in pairs(table1) do
						if not table.find(PrioritizedPlrsOnScreen, chr) then
							table1[chr] = nil
						end
					end
	
				end
	
				valuesort(table1, function(Char, position)
					local plr = plrs:GetPlayerFromCharacter(Char)
					if plr then
						if table.find(PrioritizedPlrs, plr) and GameStats.TargetPrioOnly or not GameStats.TargetPrioOnly then
							targetplayer(plr)
						end
					else
						selectcharacter(Char)
					end
					return "stop"
				end)
			end
			if GameStats.FirstPersonEnabled then
				if misc.TargetedCharacter and misc.IsAimbotOn and camera.CameraType ~= Enum.CameraType.Scriptable then
					plrs.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
				else
					plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
				end
			else
				plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			end
		end)
		
		plrs.PlayerRemoving:connect(function(plr)
			if plr.Character and plr.Character == misc.TargetedCharacter then
				deselect()
			end
		end)
	
		Changed(misc, "TargetedCharacter", function(v)
			if v then
				local player = game.Players:GetPlayerFromCharacter(v)
				if player then
					MainFrame.CurrentTarget.Text = CheckDN(player)
				else
					MainFrame.CurrentTarget.Text = v.Name
				end
				if not GameStats.FirstPersonEnabled then
					lplr.Character.Humanoid.CameraOffset = Vector3.new(2,0,0)
					game.UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
				end
					MainFrame.CurrentTarget.TextColor3 = Color3.new(0,0.66,0)
			else
				if not GameStats.FirstPersonEnabled then
					lplr.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
					game.UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				end
				MainFrame.CurrentTarget.Text = "none"
				MainFrame.CurrentTarget.TextColor3 = Color3.new(0.66,0,0)
			end
		end)
	
		MainFrame.Manager.Activated:connect(function()
			wlui.Visible = true
		end)
	
		MainFrame.EditGameSettings.Activated:connect(function()
			games.Visible = true
		end)
	
		MainFrame.EditGlobalSettings.Activated:connect(function()
			globals.Visible = true
		end)
	
		MainFrame.SwitchToTeam.Activated:connect(function()
			teamui.Visible = true
		end)
	
		Changed(misc, "IsAimbotOn", function(v)
			if v == false then
				MainFrame.Status.TextColor3 = Color3.new(0.66,0,0)
				MainFrame.Status.Text = "disabled"
				deselect()
			else
				MainFrame.Status.TextColor3 = Color3.new(0,0.66,0)
				MainFrame.Status.Text = "enabled"
			end
		end)
	
		wlui.hide.Activated:connect(function()
			wlui.Visible = false
		end)
	
		MainFrame.Status.Activated:connect(function()
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
					button.TextColor3 = Color3.new(0,0.66,0)
					button.Text = "Yes"
					table.insert(WhitelistedPlrs, ins)
				end
	
				button.Activated:connect(function()
					if button.Text == "No" then
						button.TextColor3 = Color3.new(0,0.66,0)
						button.Text = "Yes"
						table.insert(Table,ins)
	
					if Table == PrioritizedPlrs and clone.WhitelistToggle.Text == "Yes" then
						clone.WhitelistToggle.Text = "No"
						clone.WhitelistToggle.TextColor3 = Color3.new(0.66,0,0)
						local wlistplr = table.find(WhitelistedPlrs, ins)
						table.remove(WhitelistedPlrs, wlistplr)
					end
	
					if Table == WhitelistedPlrs and clone.PriorityToggle.Text == "Yes" then
						clone.PriorityToggle.Text = "No"
						clone.PriorityToggle.TextColor3 = Color3.new(0.66,0,0)
						local prioplr = table.find(PrioritizedPlrs, ins)
						table.remove(PrioritizedPlrs, prioplr)
					end
	
					else
						button.TextColor3 = Color3.new(0.66,0,0)
						button.Text = "No"
						local removeins = table.find(Table, ins)
						table.remove(Table,removeins)
					end
				end)
	
			end
				clone.TextLabel.Text = CheckDN(ins)
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
		
		globals.keybinds.Activated:connect(function()
			keys.Visible = true	
			globals.Visible = false
		end)
		
		keys.globals.Activated:connect(function()
			keys.Visible = false
			globals.Visible = true
		end)
		
		keys.X.Activated:connect(function()
			keys.Visible = false
		end)
		
		plrs.PlayerAdded:connect(function(plr)
			for i,v in pairs(WhitelistedPlrs) do
				if v.Name == plr.Name then
					local old = table.find(WhitelistedPlrs, v)
					table.remove(WhitelistedPlrs, old)
					table.insert(WhitelistedPlrs, plr)
					break
				end
			end
			for i,v in pairs(PrioritizedPlrs) do
				if v.Name == plr.Name then
					local old = table.find(PrioritizedPlrs, v)
					table.remove(PrioritizedPlrs, old)
					table.insert(PrioritizedPlrs, plr)
					break
				end
			end
		end)
	
	else
		sendnotif("Aimbot", "You've already executed this. Deleting clone.")
		task.wait(0.2)
		gui:Destroy()
	end
end
coroutine.wrap(EFHUV_fake_script)()
