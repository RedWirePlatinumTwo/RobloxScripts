-- Gui to Lua
-- Version: 3.2

-- Instances:

local RedwiresAimbot = Instance.new("ScreenGui")
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
local GlobalSettingsUI = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local X = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local ThemeTemplate = Instance.new("TextLabel")
local colorDisplay = Instance.new("Frame")
local value = Instance.new("TextBox")
local keybinds = Instance.new("TextButton")
local TeamUI = Instance.new("Frame")
local WhitelistedTeams = Instance.new("ScrollingFrame")
local whitelistframe_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local undo = Instance.new("TextButton")
local UIListLayout_3 = Instance.new("UIListLayout")
local WLTeam = Instance.new("TextButton")
local whitelistteam = Instance.new("TextBox")
local yourteam = Instance.new("TextBox")
local label1 = Instance.new("TextLabel")
local label2 = Instance.new("TextLabel")
local Title_4 = Instance.new("TextLabel")
local X_2 = Instance.new("TextButton")
local KeybindsUI = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local X_3 = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local KeybindTemplate = Instance.new("TextLabel")
local value1 = Instance.new("TextButton")
local reset = Instance.new("TextButton")
local value2 = Instance.new("TextButton")
local keybindtype = Instance.new("TextButton")
local globals = Instance.new("TextButton")
local GameSettingsUI = Instance.new("Frame")
local Title_6 = Instance.new("TextLabel")
local X_4 = Instance.new("TextButton")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")
local UIListLayout_5 = Instance.new("UIListLayout")
local TextButtonTemplate = Instance.new("TextLabel")
local value_2 = Instance.new("TextButton")
local about = Instance.new("TextButton")
local TextBoxTemplate = Instance.new("TextLabel")
local value_3 = Instance.new("TextBox")
local about_2 = Instance.new("TextButton")
local slider = Instance.new("ScrollingFrame")
local customtargetcons = Instance.new("TextButton")
local CustomTargetingUI = Instance.new("Frame")
local Title_7 = Instance.new("TextLabel")
local add = Instance.new("TextButton")
local back = Instance.new("TextButton")
local ScrollingFrame_4 = Instance.new("ScrollingFrame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Condition = Instance.new("TextLabel")
local value_4 = Instance.new("TextBox")
local about_3 = Instance.new("TextButton")
local Message = Instance.new("Frame")
local Title_8 = Instance.new("TextLabel")
local X_5 = Instance.new("TextButton")
local Contents = Instance.new("TextLabel")

--Properties:

RedwiresAimbot.Name = "RedwiresAimbot"
RedwiresAimbot.Parent = game.CoreGui
RedwiresAimbot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MFrame.Name = "MFrame"
MFrame.Parent = RedwiresAimbot
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
ManagerUI.Parent = RedwiresAimbot
ManagerUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ManagerUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
ManagerUI.BorderSizePixel = 2
ManagerUI.Position = UDim2.new(0.381608725, 0, 0.207899302, 0)
ManagerUI.Size = UDim2.new(0, 481, 0, 269)
ManagerUI.Visible = false

WhitelistedInstances.Name = "WhitelistedInstances"
WhitelistedInstances.Parent = ManagerUI
WhitelistedInstances.Active = true
WhitelistedInstances.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
WhitelistedInstances.BorderColor3 = Color3.fromRGB(0, 170, 0)
WhitelistedInstances.Position = UDim2.new(0, 0, 0.359999865, 0)
WhitelistedInstances.Size = UDim2.new(0, 481, 0, 211)
WhitelistedInstances.CanvasSize = UDim2.new(0, 0, 0, 0)

whitelistframe.Name = "whitelistframe"
whitelistframe.Parent = WhitelistedInstances
whitelistframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
whitelistframe.BackgroundTransparency = 1.000
whitelistframe.BorderColor3 = Color3.fromRGB(0, 170, 0)
whitelistframe.Size = UDim2.new(0, 445, 0, 42)
whitelistframe.Visible = false

TextLabel.Parent = whitelistframe
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 170, 0)
TextLabel.Position = UDim2.new(-6.85788279e-08, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 257, 0, 42)
TextLabel.Font = Enum.Font.TitilliumWeb
TextLabel.Text = "WWWWWWWWWWWWWWWWWWWW (WWWWWWWWWWWWWWWWWWWW)"
TextLabel.TextColor3 = Color3.fromRGB(0, 170, 0)
TextLabel.TextSize = 21.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

WhitelistToggle.Name = "WhitelistToggle"
WhitelistToggle.Parent = whitelistframe
WhitelistToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WhitelistToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
WhitelistToggle.Position = UDim2.new(0.82610631, 0, 0, 0)
WhitelistToggle.Size = UDim2.new(0, 110, 0, 42)
WhitelistToggle.Font = Enum.Font.Highway
WhitelistToggle.Text = "No"
WhitelistToggle.TextColor3 = Color3.fromRGB(170, 0, 0)
WhitelistToggle.TextSize = 22.000
WhitelistToggle.TextWrapped = true

PriorityToggle.Name = "PriorityToggle"
PriorityToggle.Parent = whitelistframe
PriorityToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PriorityToggle.BorderColor3 = Color3.fromRGB(0, 170, 0)
PriorityToggle.Position = UDim2.new(0.575280905, 0, 0, 0)
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
hide.Position = UDim2.new(0.858450055, 0, 0, 0)
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
searchbar.Position = UDim2.new(-1.26892218e-07, 0, 0.111524165, 0)
searchbar.Size = UDim2.new(0, 481, 0, 33)
searchbar.Font = Enum.Font.TitilliumWeb
searchbar.PlaceholderColor3 = Color3.fromRGB(0, 100, 0)
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
Title_2.Position = UDim2.new(-6.34461088e-08, 0, 0, 0)
Title_2.Size = UDim2.new(0, 412, 0, 29)
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
whitelistlable.Position = UDim2.new(0.769863069, 0, 0.241635695, 0)
whitelistlable.Size = UDim2.new(0, 110, 0, 29)
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
prioritylable.Position = UDim2.new(0.534890652, 0, 0.241635695, 0)
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
typelabel.Size = UDim2.new(0, 256, 0, 29)
typelabel.Font = Enum.Font.TitilliumWeb
typelabel.Text = "Player Name + Display Name"
typelabel.TextColor3 = Color3.fromRGB(0, 170, 0)
typelabel.TextSize = 24.000
typelabel.TextStrokeTransparency = 0.000
typelabel.TextWrapped = true

GlobalSettingsUI.Name = "GlobalSettingsUI"
GlobalSettingsUI.Parent = RedwiresAimbot
GlobalSettingsUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
GlobalSettingsUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
GlobalSettingsUI.Position = UDim2.new(0.55347693, 0, 0.230392128, 0)
GlobalSettingsUI.Size = UDim2.new(0, 347, 0, 364)
GlobalSettingsUI.Visible = false

Title_3.Name = "Title"
Title_3.Parent = GlobalSettingsUI
Title_3.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_3.Position = UDim2.new(0.0028818443, 0, 0, 0)
Title_3.Size = UDim2.new(0, 298, 0, 31)
Title_3.Font = Enum.Font.TitilliumWeb
Title_3.Text = "Universal Settings"
Title_3.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_3.TextSize = 32.000
Title_3.TextStrokeTransparency = 0.000
Title_3.TextWrapped = true

X.Name = "X"
X.Parent = GlobalSettingsUI
X.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X.BorderColor3 = Color3.fromRGB(0, 170, 0)
X.Position = UDim2.new(0.866863608, 0, 0, 0)
X.Size = UDim2.new(0, 46, 0, 31)
X.Font = Enum.Font.TitilliumWeb
X.Text = "Close"
X.TextColor3 = Color3.fromRGB(170, 0, 0)
X.TextSize = 28.000
X.TextStrokeTransparency = 0.000
X.TextWrapped = true

ScrollingFrame.Parent = GlobalSettingsUI
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame.Position = UDim2.new(0.0028818443, 0, 0.0849862993, 0)
ScrollingFrame.Size = UDim2.new(0, 346, 0, 296)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_2.Parent = ScrollingFrame

ThemeTemplate.Name = "ThemeTemplate"
ThemeTemplate.Parent = ScrollingFrame
ThemeTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ThemeTemplate.BackgroundTransparency = 1.000
ThemeTemplate.BorderColor3 = Color3.fromRGB(0, 170, 0)
ThemeTemplate.BorderSizePixel = 0
ThemeTemplate.Position = UDim2.new(0, 0, 0.824561417, 0)
ThemeTemplate.Size = UDim2.new(0, 169, 0, 59)
ThemeTemplate.Visible = false
ThemeTemplate.Font = Enum.Font.TitilliumWeb
ThemeTemplate.Text = "ThemeTemplate:"
ThemeTemplate.TextColor3 = Color3.fromRGB(0, 170, 0)
ThemeTemplate.TextSize = 28.000
ThemeTemplate.TextStrokeTransparency = 0.000
ThemeTemplate.TextXAlignment = Enum.TextXAlignment.Left
ThemeTemplate.TextYAlignment = Enum.TextYAlignment.Top

colorDisplay.Name = "colorDisplay"
colorDisplay.Parent = ThemeTemplate
colorDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
colorDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
colorDisplay.BorderSizePixel = 0
colorDisplay.Position = UDim2.new(1.06500006, 0, 0.578000009, 0)
colorDisplay.Size = UDim2.new(0, 151, 0, 20)
colorDisplay.ZIndex = 2

value.Name = "value"
value.Parent = ThemeTemplate
value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value.BorderColor3 = Color3.fromRGB(0, 170, 0)
value.Position = UDim2.new(0.00589946331, 0, 0.512724817, 0)
value.Size = UDim2.new(0, 335, 0, 28)
value.Font = Enum.Font.TitilliumWeb
value.PlaceholderColor3 = Color3.fromRGB(0, 100, 0)
value.PlaceholderText = "255, 255, 255"
value.Text = ""
value.TextColor3 = Color3.fromRGB(0, 170, 0)
value.TextSize = 28.000
value.TextStrokeTransparency = 0.000
value.TextXAlignment = Enum.TextXAlignment.Left

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
TeamUI.Parent = RedwiresAimbot
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

UIListLayout_3.Parent = WhitelistedTeams
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

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
whitelistteam.PlaceholderColor3 = Color3.fromRGB(0, 100, 0)
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
yourteam.PlaceholderColor3 = Color3.fromRGB(0, 100, 0)
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

Title_4.Name = "Title"
Title_4.Parent = TeamUI
Title_4.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_4.Size = UDim2.new(0, 324, 0, 31)
Title_4.Font = Enum.Font.TitilliumWeb
Title_4.Text = "Team Whitelister"
Title_4.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_4.TextSize = 30.000
Title_4.TextStrokeTransparency = 0.000
Title_4.TextWrapped = true

X_2.Name = "X"
X_2.Parent = TeamUI
X_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_2.Position = UDim2.new(0.874868035, 0, 0, 0)
X_2.Size = UDim2.new(0, 46, 0, 31)
X_2.Font = Enum.Font.TitilliumWeb
X_2.Text = "Close"
X_2.TextColor3 = Color3.fromRGB(170, 0, 0)
X_2.TextSize = 28.000
X_2.TextStrokeTransparency = 0.000
X_2.TextWrapped = true

KeybindsUI.Name = "KeybindsUI"
KeybindsUI.Parent = RedwiresAimbot
KeybindsUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
KeybindsUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
KeybindsUI.Position = UDim2.new(0.552746475, 0, 0.230392128, 0)
KeybindsUI.Size = UDim2.new(0, 347, 0, 364)
KeybindsUI.Visible = false

Title_5.Name = "Title"
Title_5.Parent = KeybindsUI
Title_5.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_5.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_5.Size = UDim2.new(0, 300, 0, 31)
Title_5.Font = Enum.Font.TitilliumWeb
Title_5.Text = "Keybinds"
Title_5.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_5.TextSize = 32.000
Title_5.TextStrokeTransparency = 0.000
Title_5.TextWrapped = true

X_3.Name = "X"
X_3.Parent = KeybindsUI
X_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_3.Position = UDim2.new(0.866863608, 0, 0, 0)
X_3.Size = UDim2.new(0, 46, 0, 31)
X_3.Font = Enum.Font.TitilliumWeb
X_3.Text = "Close"
X_3.TextColor3 = Color3.fromRGB(170, 0, 0)
X_3.TextSize = 28.000
X_3.TextStrokeTransparency = 0.000
X_3.TextWrapped = true

ScrollingFrame_2.Parent = KeybindsUI
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame_2.Position = UDim2.new(0.0028818443, 0, 0.0849862993, 0)
ScrollingFrame_2.Size = UDim2.new(0, 346, 0, 296)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_4.Parent = ScrollingFrame_2

KeybindTemplate.Name = "KeybindTemplate"
KeybindTemplate.Parent = ScrollingFrame_2
KeybindTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeybindTemplate.BackgroundTransparency = 1.000
KeybindTemplate.BorderColor3 = Color3.fromRGB(0, 170, 0)
KeybindTemplate.BorderSizePixel = 0
KeybindTemplate.Size = UDim2.new(0, 346, 0, 89)
KeybindTemplate.Visible = false
KeybindTemplate.Font = Enum.Font.TitilliumWeb
KeybindTemplate.Text = "KeybindTemplate:"
KeybindTemplate.TextColor3 = Color3.fromRGB(0, 170, 0)
KeybindTemplate.TextSize = 28.000
KeybindTemplate.TextStrokeTransparency = 0.000
KeybindTemplate.TextXAlignment = Enum.TextXAlignment.Left
KeybindTemplate.TextYAlignment = Enum.TextYAlignment.Top

value1.Name = "value1"
value1.Parent = KeybindTemplate
value1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value1.BorderColor3 = Color3.fromRGB(0, 170, 0)
value1.Position = UDim2.new(-0.00591715984, 0, 0.337897837, 0)
value1.Size = UDim2.new(0, 130, 0, 28)
value1.Font = Enum.Font.TitilliumWeb
value1.Text = "CapsLock"
value1.TextColor3 = Color3.fromRGB(0, 170, 0)
value1.TextSize = 28.000
value1.TextStrokeTransparency = 0.000

reset.Name = "reset"
reset.Parent = KeybindTemplate
reset.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reset.BorderColor3 = Color3.fromRGB(0, 170, 0)
reset.Position = UDim2.new(0.751445115, 0, 0.338, 0)
reset.Size = UDim2.new(0, 78, 0, 28)
reset.Font = Enum.Font.TitilliumWeb
reset.Text = "Reset"
reset.TextColor3 = Color3.fromRGB(170, 0, 0)
reset.TextSize = 28.000
reset.TextStrokeTransparency = 0.000

value2.Name = "value2"
value2.Parent = KeybindTemplate
value2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value2.BorderColor3 = Color3.fromRGB(0, 170, 0)
value2.Position = UDim2.new(0.375722557, 0, 0.337897837, 0)
value2.Size = UDim2.new(0, 130, 0, 28)
value2.Font = Enum.Font.TitilliumWeb
value2.Text = "none"
value2.TextColor3 = Color3.fromRGB(0, 170, 0)
value2.TextSize = 28.000
value2.TextStrokeTransparency = 0.000
value2.TextWrapped = true

keybindtype.Name = "keybindtype"
keybindtype.Parent = KeybindTemplate
keybindtype.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
keybindtype.BorderColor3 = Color3.fromRGB(0, 170, 0)
keybindtype.Position = UDim2.new(-0.00289017335, 0, 0.647971869, 0)
keybindtype.Size = UDim2.new(0, 339, 0, 28)
keybindtype.Font = Enum.Font.TitilliumWeb
keybindtype.Text = "Keybind type: Toggle"
keybindtype.TextColor3 = Color3.fromRGB(0, 170, 0)
keybindtype.TextSize = 28.000
keybindtype.TextStrokeTransparency = 0.000

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

GameSettingsUI.Name = "GameSettingsUI"
GameSettingsUI.Parent = RedwiresAimbot
GameSettingsUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
GameSettingsUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
GameSettingsUI.Position = UDim2.new(0.479687512, 0, 0.17027837, 0)
GameSettingsUI.Size = UDim2.new(0, 347, 0, 364)
GameSettingsUI.Visible = false

Title_6.Name = "Title"
Title_6.Parent = GameSettingsUI
Title_6.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_6.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_6.Position = UDim2.new(0, 0, 6.75746342e-05, 0)
Title_6.Size = UDim2.new(0, 300, 0, 31)
Title_6.Font = Enum.Font.TitilliumWeb
Title_6.Text = "Game Settings"
Title_6.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_6.TextSize = 32.000
Title_6.TextStrokeTransparency = 0.000
Title_6.TextWrapped = true

X_4.Name = "X"
X_4.Parent = GameSettingsUI
X_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_4.Position = UDim2.new(0.866567671, 0, 0, 0)
X_4.Size = UDim2.new(0, 46, 0, 32)
X_4.Font = Enum.Font.TitilliumWeb
X_4.Text = "Close"
X_4.TextColor3 = Color3.fromRGB(170, 0, 0)
X_4.TextSize = 28.000
X_4.TextStrokeTransparency = 0.000
X_4.TextWrapped = true

ScrollingFrame_3.Parent = GameSettingsUI
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame_3.Position = UDim2.new(0, 0, 0.0808804706, 0)
ScrollingFrame_3.Size = UDim2.new(0, 347, 0, 283)
ScrollingFrame_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_5.Parent = ScrollingFrame_3

TextButtonTemplate.Name = "TextButtonTemplate"
TextButtonTemplate.Parent = ScrollingFrame_3
TextButtonTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButtonTemplate.BackgroundTransparency = 1.000
TextButtonTemplate.BorderColor3 = Color3.fromRGB(0, 170, 0)
TextButtonTemplate.BorderSizePixel = 0
TextButtonTemplate.Size = UDim2.new(0, 347, 0, 63)
TextButtonTemplate.Visible = false
TextButtonTemplate.Font = Enum.Font.TitilliumWeb
TextButtonTemplate.Text = "TextButtonTemplate:"
TextButtonTemplate.TextColor3 = Color3.fromRGB(0, 170, 0)
TextButtonTemplate.TextSize = 28.000
TextButtonTemplate.TextStrokeTransparency = 0.000
TextButtonTemplate.TextXAlignment = Enum.TextXAlignment.Left
TextButtonTemplate.TextYAlignment = Enum.TextYAlignment.Top

value_2.Name = "value"
value_2.Parent = TextButtonTemplate
value_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_2.Position = UDim2.new(0, 0, 0.522047281, 0)
value_2.Size = UDim2.new(0, 347, 0, 28)
value_2.Font = Enum.Font.TitilliumWeb
value_2.Text = "idk lmaooooo"
value_2.TextColor3 = Color3.fromRGB(0, 170, 0)
value_2.TextSize = 28.000
value_2.TextStrokeTransparency = 0.000
value_2.TextXAlignment = Enum.TextXAlignment.Left

about.Name = "about"
about.Parent = TextButtonTemplate
about.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
about.BorderColor3 = Color3.fromRGB(0, 170, 0)
about.Position = UDim2.new(0.890489936, 0, 0.522047281, 0)
about.Size = UDim2.new(0, 28, 0, 28)
about.Font = Enum.Font.TitilliumWeb
about.Text = "?"
about.TextColor3 = Color3.fromRGB(0, 170, 0)
about.TextSize = 28.000
about.TextStrokeTransparency = 0.000

TextBoxTemplate.Name = "TextBoxTemplate"
TextBoxTemplate.Parent = ScrollingFrame_3
TextBoxTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBoxTemplate.BackgroundTransparency = 1.000
TextBoxTemplate.BorderColor3 = Color3.fromRGB(0, 170, 0)
TextBoxTemplate.BorderSizePixel = 0
TextBoxTemplate.Position = UDim2.new(0, 0, 0.22261484, 0)
TextBoxTemplate.Size = UDim2.new(0, 347, 0, 63)
TextBoxTemplate.Visible = false
TextBoxTemplate.Font = Enum.Font.TitilliumWeb
TextBoxTemplate.Text = "TextBoxTemplate:"
TextBoxTemplate.TextColor3 = Color3.fromRGB(0, 170, 0)
TextBoxTemplate.TextSize = 28.000
TextBoxTemplate.TextStrokeTransparency = 0.000
TextBoxTemplate.TextXAlignment = Enum.TextXAlignment.Left
TextBoxTemplate.TextYAlignment = Enum.TextYAlignment.Top

value_3.Name = "value"
value_3.Parent = TextBoxTemplate
value_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_3.Position = UDim2.new(0.645533144, 0, 0.0302400142, 0)
value_3.Size = UDim2.new(0, 85, 0, 28)
value_3.Font = Enum.Font.TitilliumWeb
value_3.PlaceholderColor3 = Color3.fromRGB(0, 100, 0)
value_3.PlaceholderText = "500"
value_3.Text = ""
value_3.TextColor3 = Color3.fromRGB(0, 170, 0)
value_3.TextSize = 28.000
value_3.TextStrokeTransparency = 0.000

about_2.Name = "about"
about_2.Parent = TextBoxTemplate
about_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
about_2.BorderColor3 = Color3.fromRGB(0, 170, 0)
about_2.Position = UDim2.new(0.890489936, 0, 0.0299837627, 0)
about_2.Size = UDim2.new(0, 28, 0, 28)
about_2.Font = Enum.Font.TitilliumWeb
about_2.Text = "?"
about_2.TextColor3 = Color3.fromRGB(0, 170, 0)
about_2.TextSize = 28.000
about_2.TextStrokeTransparency = 0.000

slider.Name = "slider"
slider.Parent = TextBoxTemplate
slider.Active = true
slider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
slider.BorderColor3 = Color3.fromRGB(0, 170, 0)
slider.Position = UDim2.new(0, 0, 0.474684447, 0)
slider.Size = UDim2.new(0, 347, 0, 28)
slider.SizeConstraint = Enum.SizeConstraint.RelativeYY
slider.CanvasSize = UDim2.new(2, 0, 0, 0)
slider.ScrollBarThickness = 28

customtargetcons.Name = "customtargetcons"
customtargetcons.Parent = GameSettingsUI
customtargetcons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
customtargetcons.BorderColor3 = Color3.fromRGB(0, 170, 0)
customtargetcons.Position = UDim2.new(0.136094674, 0, 0.902846038, 0)
customtargetcons.Size = UDim2.new(0, 234, 0, 28)
customtargetcons.Font = Enum.Font.TitilliumWeb
customtargetcons.Text = "Custom Targeting Conditions"
customtargetcons.TextColor3 = Color3.fromRGB(0, 170, 0)
customtargetcons.TextSize = 28.000
customtargetcons.TextStrokeTransparency = 0.000

CustomTargetingUI.Name = "CustomTargetingUI"
CustomTargetingUI.Parent = RedwiresAimbot
CustomTargetingUI.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
CustomTargetingUI.BorderColor3 = Color3.fromRGB(0, 170, 0)
CustomTargetingUI.Position = UDim2.new(0.58417803, 0, 0.280467957, 0)
CustomTargetingUI.Size = UDim2.new(0, 338, 0, 342)
CustomTargetingUI.Visible = false

Title_7.Name = "Title"
Title_7.Parent = CustomTargetingUI
Title_7.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_7.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_7.Position = UDim2.new(0, 0, 0.00299157039, 0)
Title_7.Size = UDim2.new(0, 291, 0, 31)
Title_7.Font = Enum.Font.TitilliumWeb
Title_7.Text = "Custom Targeting"
Title_7.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_7.TextSize = 32.000
Title_7.TextStrokeTransparency = 0.000
Title_7.TextWrapped = true

add.Name = "add"
add.Parent = CustomTargetingUI
add.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
add.BorderColor3 = Color3.fromRGB(0, 170, 0)
add.Position = UDim2.new(0.313390076, 0, 0.0965588689, 0)
add.Size = UDim2.new(0, 125, 0, 26)
add.Font = Enum.Font.TitilliumWeb
add.Text = "Add Condition"
add.TextColor3 = Color3.fromRGB(0, 170, 0)
add.TextSize = 28.000
add.TextStrokeTransparency = 0.000
add.TextWrapped = true

back.Name = "back"
back.Parent = CustomTargetingUI
back.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
back.BorderColor3 = Color3.fromRGB(0, 170, 0)
back.Position = UDim2.new(0.198224857, 0, 0.917465806, 0)
back.Size = UDim2.new(0, 188, 0, 28)
back.Font = Enum.Font.TitilliumWeb
back.Text = "Back to game settings"
back.TextColor3 = Color3.fromRGB(0, 170, 0)
back.TextSize = 28.000
back.TextStrokeTransparency = 0.000

ScrollingFrame_4.Parent = CustomTargetingUI
ScrollingFrame_4.Active = true
ScrollingFrame_4.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
ScrollingFrame_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
ScrollingFrame_4.Position = UDim2.new(0, 0, 0.173740849, 0)
ScrollingFrame_4.Size = UDim2.new(0, 338, 0, 253)
ScrollingFrame_4.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout_6.Parent = ScrollingFrame_4

Condition.Name = "Condition"
Condition.Parent = ScrollingFrame_4
Condition.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Condition.BackgroundTransparency = 1.000
Condition.BorderColor3 = Color3.fromRGB(0, 170, 0)
Condition.BorderSizePixel = 0
Condition.Size = UDim2.new(0, 338, 0, 73)
Condition.Visible = false
Condition.Font = Enum.Font.TitilliumWeb
Condition.Text = "Condition:"
Condition.TextColor3 = Color3.fromRGB(0, 170, 0)
Condition.TextSize = 28.000
Condition.TextStrokeTransparency = 0.000
Condition.TextXAlignment = Enum.TextXAlignment.Left
Condition.TextYAlignment = Enum.TextYAlignment.Top

value_4.Name = "value"
value_4.Parent = Condition
value_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
value_4.BorderColor3 = Color3.fromRGB(0, 170, 0)
value_4.Position = UDim2.new(-0.00595760904, 0, 0.364886552, 0)
value_4.Size = UDim2.new(0, 326, 0, 46)
value_4.ClearTextOnFocus = false
value_4.Font = Enum.Font.TitilliumWeb
value_4.PlaceholderColor3 = Color3.fromRGB(0, 100, 0)
value_4.PlaceholderText = "TargetCharacter.Humanoid.Health < 10"
value_4.Text = ""
value_4.TextColor3 = Color3.fromRGB(0, 170, 0)
value_4.TextScaled = true
value_4.TextSize = 28.000
value_4.TextStrokeTransparency = 0.000
value_4.TextWrapped = true
value_4.TextYAlignment = Enum.TextYAlignment.Top

about_3.Name = "about"
about_3.Parent = CustomTargetingUI
about_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
about_3.BorderColor3 = Color3.fromRGB(0, 170, 0)
about_3.Position = UDim2.new(0.860946774, 0, 0.0029916151, 0)
about_3.Size = UDim2.new(0, 46, 0, 31)
about_3.Font = Enum.Font.TitilliumWeb
about_3.Text = "?"
about_3.TextColor3 = Color3.fromRGB(0, 170, 0)
about_3.TextSize = 28.000
about_3.TextStrokeTransparency = 0.000
about_3.TextWrapped = true

Message.Name = "Message"
Message.Parent = RedwiresAimbot
Message.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Message.BorderColor3 = Color3.fromRGB(0, 170, 0)
Message.Position = UDim2.new(0.389464587, 0, 0.308411211, 0)
Message.Size = UDim2.new(0, 338, 0, 268)
Message.Visible = false

Title_8.Name = "Title"
Title_8.Parent = Message
Title_8.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Title_8.BorderColor3 = Color3.fromRGB(0, 170, 0)
Title_8.Position = UDim2.new(0, 0, 0.00299151987, 0)
Title_8.Size = UDim2.new(0, 338, 0, 31)
Title_8.Font = Enum.Font.TitilliumWeb
Title_8.Text = "Aimbot Info"
Title_8.TextColor3 = Color3.fromRGB(0, 170, 0)
Title_8.TextSize = 32.000
Title_8.TextStrokeTransparency = 0.000
Title_8.TextWrapped = true

X_5.Name = "X"
X_5.Parent = Message
X_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_5.BorderColor3 = Color3.fromRGB(0, 170, 0)
X_5.Position = UDim2.new(0.342899114, 0, 0.884247303, 0)
X_5.Size = UDim2.new(0, 106, 0, 31)
X_5.Font = Enum.Font.TitilliumWeb
X_5.Text = "Close"
X_5.TextColor3 = Color3.fromRGB(170, 0, 0)
X_5.TextSize = 28.000
X_5.TextStrokeTransparency = 0.000
X_5.TextWrapped = true

Contents.Name = "Contents"
Contents.Parent = Message
Contents.BackgroundColor3 = Color3.fromRGB(0, 45, 0)
Contents.BackgroundTransparency = 1.000
Contents.BorderColor3 = Color3.fromRGB(0, 170, 0)
Contents.BorderSizePixel = 0
Contents.Position = UDim2.new(0, 0, 0.118663162, 0)
Contents.Size = UDim2.new(0, 338, 0, 192)
Contents.Font = Enum.Font.TitilliumWeb
Contents.Text = "Msg Contents"
Contents.TextColor3 = Color3.fromRGB(0, 170, 0)
Contents.TextSize = 24.000
Contents.TextStrokeTransparency = 0.000
Contents.TextWrapped = true

-- Scripts:

local function NHTIOA_fake_script() -- RedwiresAimbot.LocalScript 
	local script = Instance.new('LocalScript', RedwiresAimbot)

	local gui = script.Parent
	local MainFrame = gui.MFrame
	local wlui = gui.ManagerUI
	local gameSettings = gui.GameSettingsUI.ScrollingFrame
	local globalSettings = gui.GlobalSettingsUI.ScrollingFrame
	local keybindSettings = gui.KeybindsUI.ScrollingFrame
	local games = gui.GameSettingsUI
	local globals = gui.GlobalSettingsUI
	local keys = gui.KeybindsUI
	local teamui = gui.TeamUI
	local camera = workspace.CurrentCamera
	local targetingui = gui.CustomTargetingUI
	local tcservice = game:GetService("TextChatService")
	local npcs = {}
	local uiservice = game:GetService("UserInputService")
	local chrs = {}
	local toggleTxt = {
		[MainFrame.CurrentTarget] = false,
		[MainFrame.Status] = false
	}
	local plrs = game:GetService("Players")
	local lplr = plrs.LocalPlayer
	local m = lplr:GetMouse()
	local RightClick = false
	local LeftClick = false
	
	m.Button1Down:connect(function()
		LeftClick = true
	end)
	m.Button1Up:connect(function()
		LeftClick = false
	end)
	m.Button2Down:connect(function()
		RightClick = true
	end)
	m.Button2Up:connect(function()
		RightClick = false
	end)
	
	local function sendNotif(title, text)
		print(title..":", text)
		text = ("<font color = '#%s'>[%s]: %s</font>"):format(MainFrame.BorderColor3:ToHex(), title, text)
		if tcservice.ChatVersion == Enum.ChatVersion.LegacyChatService then
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",({["Text"] = text}))
		else
			tcservice.TextChannels:FindFirstChildOfClass("TextChannel"):DisplaySystemMessage(text)
		end
	end
	
	if not RedsAimbot then
		getgenv().RedsAimbot = {}
		sendNotif("R.U.A. Update", [[Changes 12/20/25:
	- Prevent MaxStuds and MouseSensitivity changes both writing to MaxStuds (woops)
	- Added sliders for number values]])
		for i,v in pairs(gui:GetDescendants()) do
			if v.ClassName == "Frame" and v.Parent.ClassName ~= "ScrollingFrame" then
				v.Draggable = true
				v.Active = true
			end
			if v.ClassName == "ScrollingFrame" then
				v.AutomaticCanvasSize = Enum.AutomaticSize.Y
			end
			if v.Name == "X" then
				v.Activated:connect(function()
					v.Parent.Visible = false
				end)
			end
		end
	
		local function Changed(part, PropertyName, func)
			local current = part[PropertyName]
			local elapsedTime = 0
			local enabled = true
			local t = {}
			t.Stop = function()
				enabled = false
			end
			t.stop = t.Stop
	
			task.spawn(function()
				while enabled do
					if part[PropertyName] ~= current then
						task.spawn(function()
							func(part[PropertyName], current, elapsedTime)
						end)
						elapsedTime = 0
						current = part[PropertyName]
					end
					elapsedTime += task.wait()
				end
			end)
			return t
		end
	
		local function tablecount(t)
			local n = 0
			for i,v in pairs(t) do n += 1 end
			return n
		end
	
		local function TableAdded(Table, func)
			local count = tablecount(Table)
			local clone = table.clone(Table)
			local elapsedTime = 0
			local enabled = true
			local t = {}
			t.Stop = function()
				enabled = false
			end
			t.stop = t.Stop
	
			task.spawn(function()
				while enabled do
					if tablecount(Table) ~= count then
						if tablecount(Table) > count then
	
							for i,v in pairs(Table) do
								if clone[i] == nil then
									task.spawn(function()
										func(i,v,elapsedTime)
									end)
								end
							end
							elapsedTime = 0
						end
						count = tablecount(Table)
						clone = table.clone(Table)
					end
					elapsedTime += task.wait()
				end
			end)
			return t
		end
	
		local reps = {}
		local TableChanged = function(Table, f, dosubtables)
			local t = {}
			local funcs = {}
			if not dosubtables then
				reps = {}
			end
			local function tblChanged(t)
				for i,v in pairs(t) do
					local mainchanged = Changed(t, i, function(...)
						f(t, i, ...)
					end)
					table.insert(funcs, mainchanged)
				end
	
				local added = TableAdded(t, function(index, value, ...)
					f(t, index, value, nil, ...)
					if typeof(value) == "table" and not table.find(reps, value) then
						table.insert(reps, value)
						tblChanged(value)
					end
					local subchanged = Changed(t, index, function(...)
						f(t, index, ...)
					end)
					table.insert(funcs, subchanged)
				end)
				table.insert(funcs, added)
			end
	
			tblChanged(Table)
			if dosubtables then
				for i,v in pairs(Table) do
					if type(i) == "table" and not table.find(reps, i) then
						table.insert(reps, i)
						tblChanged(i)
					end
					if type(v) == "table" and not table.find(reps, v) then
						table.insert(reps, v)
						tblChanged(v)
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
	
		local function isnpc(ins)
	
			for i,v in pairs(GetFamily(ins,true)) do
				if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").RootPart and not plrs:GetPlayerFromCharacter(v) and table.find(npcs, v) then
					return v
				end
			end
	
		end
	
		local function valuesort(t, func)
			local revert = {}
			local vals = {}
	
			for i,v in pairs(t) do
				revert[v] = i
				table.insert(vals,v)
			end
	
			table.sort(vals)
			for i,v in pairs(vals) do
				local retVal = func(revert[v], v)
				if retVal ~= nil then
					break
				end
			end
		end
		
		local function has(ins, propName)
			return pcall(function() return ins[propName] end)
		end
		
		local function isValidKey(k)
			return typeof(k) == "EnumItem" or k == "LeftClick" or k == "RightClick"
		end
		
		Changed(workspace, "CurrentCamera", function(cam)
			camera = cam
		end)
		
		local function setupCooldown(onFinish)
			local cooldown = 0
			task.spawn(function()
				while true do
					if cooldown > 0 then
						cooldown = math.max(cooldown - task.wait(), 0)
						if cooldown == 0 then
							onFinish()
						end
					else
						task.wait()
					end
				end
			end)
			local t = {}
			t.reset = function()
				cooldown = 0.25
			end
			return t
		end
	
		local teams = game:GetService("Teams")
		local WhitelistedPlrs = {}
		local PrioritizedPlrs = {}
		local WhitelistedPlrsOld = {}
		local PrioritizedPlrsOld = {}
		local misc = {}
		misc.IsAimbotOn = false
		misc.TargetedCharacter = nil
		misc.AimOffset = Vector3.new()
		local GlobalStats
		local GameStats
		local Keybinds
		local Theme
	
		local function createGameStats()
			local newGameStats = {}
			newGameStats.Target = "Head"
			newGameStats.TargetNPCs = false
			newGameStats.AutoTarget = true
			newGameStats.WhitelistFriends = false
			newGameStats.MaxStuds = 500
			newGameStats.OwnTeamWhitelisted = true
			newGameStats.TargetCloserPlayers = true
			newGameStats.Teams = {}
			newGameStats.IgnorePlayers = false
			newGameStats.TargetPrioOnly = false
			newGameStats.FirstPersonEnabled = true
			newGameStats.AimMethod = "Mouse"
			newGameStats.CustomTargetConditions = {}
			newGameStats.TargetOffScreen = false
			newGameStats.EnableRaycasting = true
			newGameStats.GUIPositions = {}
			return newGameStats
		end
	
		local function createGlobalStats()
			local newGlobalStats = {}
			newGlobalStats.TeamAutofill = true
			newGlobalStats.MouseSensitivity = 0.25
			newGlobalStats.Keybinds = {}
			local binds = newGlobalStats.Keybinds
			binds.AimbotToggle = {}
			binds.AimbotToggle.Key1 = Enum.KeyCode.CapsLock
			binds.AimbotToggle.Toggle = true
			binds.TargetedPartToggle = {}
			binds.TargetedPartToggle.Key1 = Enum.KeyCode.RightAlt
			binds.TargetedPartToggle.Toggle = true
			binds.GUIVisibilityToggle = {}
			binds.GUIVisibilityToggle.Toggle = true
			local function addKeybinds(table)
				for name,value in pairs(table) do
					if type(value) == "boolean" then
						binds[name] = {}
						binds[name].Toggle = true
					end
				end
			end
			addKeybinds(createGameStats())
			addKeybinds(newGlobalStats)
			newGlobalStats.Theme = {}
			local theme = newGlobalStats.Theme
			theme.Yes = Color3.fromRGB(0, 170, 0)
			theme.No = Color3.fromRGB(170, 0, 0)
			theme.Border = theme.Yes
			theme.Background = Color3.fromRGB(0, 45, 0)
			theme.Text = theme.Yes
			theme.TextStroke = Color3.fromRGB(0, 0, 0)
			theme.ButtonBackground = Color3.fromRGB(0, 0, 0)
			theme.PlaceholderText = Color3.fromRGB(0, 100, 0)
			theme.ScrollBar = theme.Yes
			return newGlobalStats
		end
	
		local function getOrDefault(tbl, value)
			if tbl[value] == nil then
				if tbl == GameStats then
					tbl[value] = createGameStats()[value]
				elseif tbl == GlobalStats then
					tbl[value] = createGlobalStats()[value]
				elseif tbl == Keybinds then
					tbl[value] = createGlobalStats().Keybinds[value]
				elseif tbl == Theme then
					tbl[value] = createGlobalStats().Theme[value]
				end
				return tbl[value]
			else
				return tbl[value]
			end
		end
	
		local function clearOldValues(t)
			local tableref
			if t == GameStats then
				tableref = createGameStats()
			elseif t == GlobalStats then
				tableref = createGlobalStats()
			else
				tableref = createGlobalStats().Keybinds
			end
			for i,v in pairs(t) do
				if tableref[i] == nil then
					t[i] = nil
				end
			end
		end
	
		local function priorityCheck(plr)
			local priorOnly = getOrDefault(GameStats, "TargetPrioOnly")
			return (table.find(PrioritizedPlrs, plr) and priorOnly) or not priorOnly or #PrioritizedPlrs == 0
		end
	
		local cond = targetingui.ScrollingFrame.Condition
		local function addGUICondition(index)
			local txt = getOrDefault(GameStats, "CustomTargetConditions")[index] or ""
			local clone = cond:Clone()
			clone.Parent = cond.Parent
			clone.Visible = true
			clone.value.Text = txt
			clone.value.FocusLost:connect(function()
				getOrDefault(GameStats, "CustomTargetConditions")[index] = clone.value.Text
			end)
		end
	
		if isfile("RedsAimbot/GlobalStats.lua") then
	
			GlobalStats = loadfile("RedsAimbot/GlobalStats.lua")()
			if not isfile(("RedsAimbot/Games/%d.lua"):format(game.PlaceId)) then
				GameStats = createGameStats()
			else
				GameStats = loadfile(("RedsAimbot/Games/%d.lua"):format(game.PlaceId))()
			end
	
		elseif isfile("RedsAimbotStats.lua") then -- replace old save file
	
			local globalclone = loadfile("RedsAimbotStats.lua")()
			makefolder("RedsAimbot/Games")
			local gamestats = {}
			for index, val in ipairs(globalclone) do
				gamestats[index] = val
				globalclone[index] = nil
			end
			writefile("RedsAimbot/GlobalStats.lua", TableToString(globalclone, "GlobalStats"))
			for placeId, gameData in pairs(gamestats) do --write contents of game save data into new file
				writefile(("RedsAimbot/Games/%d.lua"):format(placeId), TableToString(gameData, "GameStats")) -- store file as PlaceId.lua
			end
			delfile("RedsAimbotStats.lua") --rip bozo
			GlobalStats = globalclone
			GameStats = gamestats[game.PlaceId] or createGameStats() --get existing game data or create data from default stats
	
		else
			makefolder("RedsAimbot/Games")
			GlobalStats = createGlobalStats()
			GameStats = createGameStats()
		end
		Keybinds = getOrDefault(GlobalStats, "Keybinds")
		Theme = getOrDefault(GlobalStats, "Theme")
		getgenv().RedsAimbot.GlobalStats = GlobalStats
		getgenv().RedsAimbot.Misc = misc
		getgenv().RedsAimbot.GameStats = GameStats
		local txtBoxTemp = gameSettings.TextBoxTemplate
		txtBoxTemp.slider.ScrollingDirection = Enum.ScrollingDirection.X
		local txtButtonTemp = gameSettings.TextButtonTemplate
		
		local statDisplayNames = {
			["TeamAutofill"] = "Auto-fill Team Names",
			["Target"] = "Targeted Part",
			["AutoTarget"] = "Auto-Targeting Enabled",
			["MaxStuds"] = "Auto-Target Max Distance",
			["TargetPrioOnly"] = "Target ONLY Prioritized Players (if any)",
			["TargetOffScreen"] = "Allow Off-Screen Auto-Targeting",
			["TargetNPCs"] = "Target NPCs"
		}
		local numLimits = {
			["MouseSensitivity"] = {0.1, 1},
			["MaxStuds"] = {50, 5000}
		}
		
		local function createName(propName)
			local name = ""
			if not statDisplayNames[propName] then
				for i = 1, propName:len() do
					local letter = propName:sub(i,i)
					if letter:find("[A-Z]") and i ~= 1 then
						name = name.." "..letter
					else
						name = name..letter
					end
				end
			else
				return statDisplayNames[propName]..":"
			end
			return name..":"
		end
		
		local function updateMsg(contents, title)
			local msgFrame msgFrame = gui.Message
			msgFrame.Visible = true
			msgFrame.Title.Text = title or msgFrame.Title.Text
			msgFrame.Contents.Text = contents
		end
		
		local function createTemplate(tbl, propName)
			local val = getOrDefault(tbl, propName)
			local clone
			if typeof(val) == "boolean" or typeof(val) == "string" then
				clone = txtButtonTemp:Clone()
				if typeof(val) == "boolean" then
					clone.value.Activated:connect(function()
						tbl[propName] = not tbl[propName]
					end)
					Changed(tbl, propName, function(val)
						clone.value.Text = tostring(val)
					end)
				end
			elseif typeof(val) == "number" then
				clone = txtBoxTemp:Clone()
				local limits = numLimits[propName]
				local min = limits[1]
				local max = limits[2]
				local multi = max - min
				local function saveNumberValue()
					local num = tonumber(clone.value.Text)
					if num then
						num = math.clamp(num, min, max)
						tbl[propName] = num
						clone.value.Text = tostring(num)
					else
						clone.value.Text = tostring(tbl[propName])
					end
				end
				clone.value.FocusLost:connect(saveNumberValue)
				if propName == "MouseSensitivity" then
					clone.slider.CanvasSize = UDim2.new(1.9, 0, 0, 0) -- remember to always add 1 to make the slider actually scrollable
				else
					clone.slider.CanvasSize = UDim2.new(5.99, 0, 0, 0)
				end
				local scrollRange = clone.slider.AbsoluteCanvasSize.X - clone.slider.Size.X.Offset
				clone.slider.CanvasPosition = Vector2.new(((val - min) / multi) * scrollRange, 0) -- adjust slider to current value position
				local sliderCooldown = setupCooldown(saveNumberValue)
				Changed(clone.slider, "CanvasPosition", function(pos)
					clone.value.Text =  ("%.3f"):format(((pos.X / scrollRange) * multi) + min)
					sliderCooldown.reset()
				end)
			end
			if clone then
				local function onAbout(msg, title)
					clone.about.Activated:connect(function()
						updateMsg(msg, title)
					end)
				end
				if propName == "AimMethod" then
					onAbout(
						"Mouse aiming is more universal, but its steadiness is based off of the MouseSensitivity global stat. Camera aiming is more precise, but some games may use a more complex aiming system, so this may not work as intended.",
						"Aim Method Info"
					)
				elseif propName == "TargetCloserPlayers" then
					onAbout(
						"If this option is enabled, you will be able to swap targets if the aiming system detects another target closer by to you. If disabled, you will only be able to swap targets when your current one dies (or if any TargetingCondition returns false)",
						"Closer Targeting Info"
					)
				elseif propName == "TargetPrioOnly" then
					onAbout(
						"If enabled AND if there are any players marked as Prioritized in player settings, the targeting system will ignore anyone that isn't on your prioritization list. If either the setting is disabled or no one is prioritized, the target system functions as normal."
					)
				elseif propName == "TeamAutofill" then
					onAbout(
						"When enabled, typing in the name of a team in the TeamUI will automatically fill out the team name if the team-name-checker only gets one result.",
						"Team Autofill Info"
					)
				else
					clone.about:Destroy()
				end
				clone.Parent = if tbl == GameStats then gameSettings else globalSettings
				clone.Visible = true
				clone.Name = propName
				clone.Text = createName(propName)
				clone.value.Text = tostring(val)
				if clone.value.ClassName == "TextBox" then
					clone.value.PlaceholderText = tostring(createGameStats()[propName] or createGlobalStats()[propName])
				end
			end
		end
		
		local function updateKeybindTable(index, bindInfo)
			if typeof(bindInfo) == "EnumItem" or typeof(bindInfo) == "string" then
				local t = {}
				t.Key1 = bindInfo
				t.Toggle = true
				bindInfo = t
				Keybinds[index] = bindInfo
			end
			return bindInfo
		end
	
		local function updateKeybindInstance(instance, bindInfo)
			local function updateKey(index)
				local k = bindInfo["Key"..index]
				local ins = instance["value"..index]
				if typeof(k) == "EnumItem" then
					ins.Text = k.Name
				elseif typeof(k) == "string" then
					ins.Text = k
				else
					ins.Text = "none"
				end
			end
			updateKey(1)
			updateKey(2)
			instance.keybindtype.Text = "Keybind type: "..if bindInfo.Toggle then "Toggle" else "Hold"
		end
	
		clearOldValues(GameStats)
		clearOldValues(GlobalStats)
		clearOldValues(Keybinds)
	
		local function applyTheme()
			for i,v in pairs(gui:GetDescendants()) do
				local function themeCheck(propName, color)
					if has(v, propName) then
						v[propName] = color
					end
				end
				themeCheck("BorderColor3", getOrDefault(Theme, "Border"))
				if v.Name ~= "colorDisplay" then
					themeCheck("BackgroundColor3", getOrDefault(Theme, "Background"))
				end
				if v.Name ~= "X" and not table.find(toggleTxt, v) then
					themeCheck("TextColor3", getOrDefault(Theme, "Text"))
				end
				for ins, val in pairs(toggleTxt) do
					ins.TextColor3 = if val then getOrDefault(Theme, "Yes") else getOrDefault(Theme, "No")
				end
				if v.Name == "X" then
					v.TextColor3 = getOrDefault(Theme, "No")
				end
				themeCheck("TextStrokeColor3", getOrDefault(Theme, "TextStroke"))
				themeCheck("ScrollBarImageColor3", getOrDefault(Theme, "ScrollBar"))
				if v.ClassName == "TextButton" or v.ClassName == "TextBox" then
					v.BackgroundColor3 = getOrDefault(Theme, "ButtonBackground")
				end
				if v.ClassName == "TextBox" then
					v.PlaceholderColor3 = getOrDefault(Theme, "PlaceholderText")
				end
			end
		end
		applyTheme()
	
		for i, bindInfo in pairs(Keybinds) do
			bindInfo = updateKeybindTable(i, bindInfo) --check if bindInfo is a plain Enum keycode or string, then convert it to table with Key1, Key2, and Toggle
			if keybindSettings:FindFirstChild(i) then
				updateKeybindInstance(keybindSettings[i], bindInfo)
			end
		end
	
		for index, value in pairs(createGlobalStats()) do 
			createTemplate(GlobalStats, index)
		end
	
		for index, value in pairs(createGameStats()) do
			createTemplate(GameStats, index)
		end
		
		for i, v in pairs(gui:GetChildren()) do
			if v.ClassName == "Frame" then
				local guiPos = getOrDefault(GameStats, "GUIPositions") -- note to self: this DOES NOT go in gui:GetDescendants() BECAUSE of it checking GameStats
				if guiPos[v.Name] then
					v.Position = guiPos[v.Name]
				else
					if v.Name == "Message" then
						local vp = camera.ViewportSize
						v.Position = UDim2.new(0, vp.X / 2 - v.Size.X.Offset / 2, 0, vp.Y / 2 - v.Size.Y.Offset / 2) --place Message in center of screen
					end
				end
				local cooldown = setupCooldown(function()
					guiPos[v.Name] = v.Position
				end)
				Changed(v, "Position", function(pos)
					cooldown.reset()
				end)
			end
		end
	
		local function saveSettings()
			writefile("RedsAimbot/GlobalStats.lua", TableToString(GlobalStats, "GlobalStats"))
			writefile(("RedsAimbot/Games/%d.lua"):format(game.PlaceId), TableToString(GameStats, "GameStats"))
		end
	
		TableChanged(GlobalStats, saveSettings, true)
		TableChanged(GameStats, saveSettings, true)
	
		local function addTeamFrame(ttable)
			local clone = teamui.WhitelistedTeams.whitelistframe:Clone()
			clone.Parent = teamui.WhitelistedTeams
			clone.TextLabel.Text = ("[%s] will be ignored when on [%s]"):format(ttable.team2, ttable.team1)
			clone.Visible = true
	
			clone.undo.Activated:connect(function()
				clone:Destroy()
				local tfind = table.find(getOrDefault(GameStats, "Teams"),ttable)
				table.remove(getOrDefault(GameStats, "Teams"),tfind)
			end)
	
		end
	
		for i,v in pairs(getOrDefault(GameStats, "Teams")) do
			addTeamFrame(v)
		end
		local function gameConditionCheck(id, condition)
			if game.PlaceId == id and not table.find(getOrDefault(GameStats, "CustomTargetConditions"), condition) then
				table.insert(getOrDefault(GameStats, "CustomTargetConditions"), condition)
				updateMsg(("Auto-added targeting condition for game ID %d:\n%s"):format(id, condition), "Custom Targeting")
			end
		end
		gameConditionCheck(286090429, "not TargetCharacter:FindFirstChild(\"Cam\")")
		gameConditionCheck(2788229376, "not TargetCharacter.BodyEffects[\"K.O\"].Value")
		for i,v in pairs(getOrDefault(GameStats, "CustomTargetConditions")) do
			addGUICondition(i)
		end
		
		for index, value in pairs(createGlobalStats().Keybinds) do 
			local v = keybindSettings.KeybindTemplate:Clone()
			v.Parent = keybindSettings
			v.Name = index
			v.Visible = true
			v.Text = createName(index.." Keybind")
			local keybind = updateKeybindTable(index, value)
			updateKeybindInstance(v, keybind)
			v.reset.Activated:connect(function()
				Keybinds[index].Key1 = nil
				Keybinds[index].Key2 = nil
				Keybinds[index].Toggle = true
				v.value1.Text = "none"
				v.value2.Text = "none"
				saveSettings()
				v.keybindtype.Text = "Keybind type: Toggle"
			end)
	
			local function changeKeybind(index)
				Keybinds[index]["Key"..index] = nil
				v["value"..index].Text = "Press any key"
				local key = uiservice.InputBegan:Wait()
				task.wait()
				if LeftClick then
					Keybinds[index]["Key"..index] = "LeftClick"
					v["value"..index].Text = "LeftClick"
				elseif RightClick then
					Keybinds[index]["Key"..index] = "RightClick"
					v["value"..index].Text = "RightClick"
				else
					Keybinds[index]["Key"..index] = key.KeyCode
					v["value"..index].Text = key.KeyCode.Name
				end
				saveSettings()
			end
	
			v.value1.Activated:connect(function()
				changeKeybind(1)
			end)
	
			v.value2.Activated:connect(function()
				changeKeybind(2)
			end)
	
			v.keybindtype.Activated:connect(function()
				Keybinds[v.Name].Toggle = not Keybinds[v.Name].Toggle
				updateKeybindInstance(v, Keybinds[v.Name])
				saveSettings()
			end)
		end
	
		local function deselect()
			misc.TargetedCharacter = nil
		end
	
		local function Died(player)
			task.spawn(function()
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
				return ("%s (%s)"):format(plr.DisplayName, plr.Name)
			end
		end
	
		local function IsNotWhitelisted(plr)
	
			local function isteamwhitelisted()
				local wl = false
	
				for i,ttable in pairs(getOrDefault(GameStats, "Teams")) do
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
				if getOrDefault(GameStats, "OwnTeamWhitelisted") then
					return plr.Team ~= lplr.Team and not table.find(WhitelistedPlrs, plr) and not isteamwhitelisted()
				else
					return not table.find(WhitelistedPlrs, plr) and not isteamwhitelisted()
				end
			else
				return not table.find(WhitelistedPlrs, plr)
			end
		end
	
		local function meetsConditions(chr)
			local conditionsmet = true
			local plrFromChr = plrs:GetPlayerFromCharacter(chr)
			for i, condition in pairs(getOrDefault(GameStats, "CustomTargetConditions")) do
				local scriptSuccess, conditionMet = pcall(function()
					if condition:find("TargetPlayer") and not plrFromChr or condition == "" then
						return true
					else
						return loadstring("return "..condition:gsub("TargetCharacter", GetFullName(chr)):gsub("TargetPlayer", GetFullName(plrFromChr)))()
					end
				end)
				conditionsmet = conditionsmet and scriptSuccess and conditionMet
				if not conditionsmet then
					break
				end
			end
			return conditionsmet
		end
	
		local function selectChr(chr)
			if misc.IsAimbotOn and not misc.TargetedCharacter and not getOrDefault(GameStats, "TargetCloserPlayers") or getOrDefault(GameStats, "TargetCloserPlayers") and misc.IsAimbotOn then
				local isprio
				local isprio2
				local plrFromChr = plrs:GetPlayerFromCharacter(chr)
				if misc.TargetedCharacter then
					isprio = table.find(PrioritizedPlrs, plrs:GetPlayerFromCharacter(misc.TargetedCharacter)) ~= nil
					isprio2 = table.find(PrioritizedPlrs, plrFromChr) ~= nil
				end
				if not isprio or isprio2 then	
					misc.TargetedCharacter = chr
				end
			end
		end
	
		local function targetPlr(player)
			local humanoid
			if player.Character then
				humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			end
			if player ~= lplr and humanoid and IsNotWhitelisted(player) and humanoid.Health > 0 then
				selectChr(player.Character)
			end
		end
	
		if not lplr.Character then
			updateMsg("You've gots 2 spawn in da game for aimbot to work")
			lplr.CharacterAdded:Wait()
		end
	
		local function isKeyActivated(bindInfo, shouldToggle)
			local function keyDown(keycode)
				if not isValidKey(keycode) then return true end
				if keycode == "LeftClick" then
					return LeftClick and not uiservice:GetFocusedTextBox()
				elseif keycode == "RightClick" then
					return RightClick and not uiservice:GetFocusedTextBox()
				else
					return uiservice:IsKeyDown(keycode) and not uiservice:GetFocusedTextBox()
				end
			end
			if not isValidKey(bindInfo.Key1) and not isValidKey(bindInfo.Key2) then
				return false
			end
			return keyDown(bindInfo.Key1) and keyDown(bindInfo.Key2) and ((bindInfo.Toggle and shouldToggle) or (not bindInfo.Toggle and not shouldToggle))
		end
	
		uiservice.InputBegan:connect(function(key,processed)
			if processed then return end
			if isKeyActivated(getOrDefault(Keybinds, "TargetedPartToggle"), true) then
				if getOrDefault(GameStats, "Target") == "Head" then
					GameStats.Target = "HumanoidRootPart"
				else
					GameStats.Target = "Head"
				end
			end
			if isKeyActivated(getOrDefault(Keybinds, "AimbotToggle"), true) then
				misc.IsAimbotOn = not misc.IsAimbotOn
			end
			if isKeyActivated(getOrDefault(Keybinds, "GUIVisibilityToggle"), true) then
				gui.Enabled = not gui.Enabled
			end
			for i,v in pairs(Keybinds) do
				if GameStats[i] ~= nil and isKeyActivated(Keybinds[i], true) then
					GameStats[i] = not GameStats[i]
				end
				if GlobalStats[i] ~= nil and isKeyActivated(Keybinds[i], true) then
					GlobalStats[i] = not GlobalStats[i]
				end
			end
		end)
	
		gameSettings.Target.value.Activated:connect(function()
			if getOrDefault(GameStats, "Target") == "Head" then
				GameStats.Target = "HumanoidRootPart"
			else
				GameStats.Target = "Head"
			end
			gameSettings.Target.value.Text = getOrDefault(GameStats, "Target")
		end)
	
		gameSettings.AimMethod.value.Activated:connect(function()
			local method = gameSettings.AimMethod
			if method.value.Text == "Camera" then
				method.value.Text = "Mouse"
			else
				method.value.Text = "Camera"
			end
			GameStats.AimMethod = method.value.Text
		end)
	
		for i,v in pairs(teamui:GetChildren()) do
			if v.ClassName == "TextBox" then
				Changed(v, "Text", function(txt)
					if getOrDefault(GlobalStats, "TeamAutofill") then
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
	
				for i, teamtable in pairs(getOrDefault(GameStats, "Teams")) do
					if teamtable.team1 == team1 and teamtable.team2 == team2 then
						canadd = false
						break
					end
				end
	
				if canadd then
					local newtable = {["team1"] = team1 ,["team2"] = team2}
					table.insert(getOrDefault(GameStats, "Teams"), newtable)
					addTeamFrame(newtable)
				else
					updatetxt("This already exists")
				end
			else
				updatetxt("Invalid team name(s)")
			end
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
			task.spawn(function()
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
		local queryindex
		local querynewindex
		local queriedParts = {}
		queryindex = hookmetamethod(game, "__index", function(self, name)
			if name == "CanQuery" and self:IsA("BasePart") and not checkcaller() and queriedParts[self] ~= nil then
				return queriedParts[self]
			else
				return queryindex(self, name)
			end
		end)
		querynewindex = hookmetamethod(game, "__newindex", function(self, val, newval)
			if val == "CanQuery" and self:IsA("BasePart") and not checkcaller() and queriedParts[self] ~= nil and type(newval) == "boolean" then
				queriedParts[self] = newval
			else
				return querynewindex(self, val, newval)
			end
		end)
	
		local function setQueryChecker(part)
			if part:IsA("BasePart") and not part.CanCollide and not part.Parent:FindFirstChildOfClass("ClickDetector") and not part:FindFirstChildOfClass("ClickDetector") then
				queriedParts[part] = true
				part.CanQuery = false
			end
		end
		for i,v in pairs(workspace:GetDescendants()) do
			if v.ClassName == "Humanoid" and v.RootPart and not plrs:GetPlayerFromCharacter(v.Parent) and not table.find(npcs, v.Parent) and v.Health > 0 then
				isactivenpc(v.Parent)
			end
			setQueryChecker(v)
		end
	
		workspace.DescendantAdded:connect(function(v)
			if v.ClassName == "Humanoid" then
				if not v.RootPart then repeat task.wait() until v.RootPart end
				if not plrs:GetPlayerFromCharacter(v.Parent) and not table.find(npcs, v.Parent) and v.Health > 0 then
					isactivenpc(v.Parent)
				end
			end
			setQueryChecker(v)
		end)
	
		workspace.DescendantRemoving:connect(function(v)
			local npcfind = table.find(npcs, v)
			if npcfind and GetFamily(v)[1] ~= game then
				table.remove(npcs, npcfind)
			end
		end)
	
		local function addchrtotable(plr)
			if plr.Character then
				table.insert(chrs, plr.Character)
			end
			plr.CharacterAdded:connect(function(chr)
				table.insert(chrs, chr)
			end)
			plr.CharacterRemoving:connect(function(chr)
				local chrfind = table.find(chrs, chr)
				if chrfind then
					table.remove(chrs, chrfind)
				end
			end)
		end
	
		for i,v in pairs(plrs:GetPlayers()) do
			addchrtotable(v)
		end
		plrs.PlayerAdded:connect(addchrtotable)
	
		local function gettargetpart(chr)
			local p = chr:FindFirstChild(getOrDefault(GameStats, "Target"))
			if p then
				return p
			else
				if chr:FindFirstChild("Humanoid") and chr.Humanoid.RootPart then
					return chr.Humanoid.RootPart
				end
			end
		end
		local AimbotFunction = game:GetService("RunService").RenderStepped:connect(function()
			if misc.TargetedCharacter then
				local part = gettargetpart(misc.TargetedCharacter)
				if part then
					local partpos = part.Position
					local v, onscreen = camera:WorldToScreenPoint(partpos + misc.AimOffset)
					local x,y = (v.X - m.X), (v.Y - m.Y)
					if onscreen then
						if misc.IsAimbotOn then
							if getOrDefault(GameStats, "AimMethod") == "Camera" then
								camera.CFrame = CFrame.new(camera.CFrame.Position, partpos + misc.AimOffset)
								uiservice.MouseDeltaSensitivity = 0
							else
								mousemoverel((x + misc.AimOffset.X) * getOrDefault(GlobalStats, "MouseSensitivity"), (y + misc.AimOffset.Y) * getOrDefault(GlobalStats, "MouseSensitivity"))
							end
							if not getOrDefault(GameStats, "FirstPersonEnabled") then
								lplr.Character.Humanoid.RootPart.CFrame = CFrame.lookAt(lplr.Character.Humanoid.RootPart.Position, (partpos * Vector3.new(1,0,1)) + Vector3.new(0, lplr.Character.Humanoid.RootPart.Position.Y, 0))
							end
						end
					else
						camera.CFrame = CFrame.new(camera.CFrame.Position, partpos)
					end
				end
				if not meetsConditions(misc.TargetedCharacter) then
					deselect()
				end
			else
				uiservice.MouseDeltaSensitivity = 1
			end
	
			if not getOrDefault(Keybinds, "AimbotToggle").Toggle then
				misc.IsAimbotOn = isKeyActivated(Keybinds.AimbotToggle)
			end
	
			for i,v in pairs(Keybinds) do
				if GameStats[i] ~= nil and not v.Toggle then
					GameStats[i] = isKeyActivated(Keybinds[i])
				end
				if GlobalStats[i] ~= nil and not v.Toggle then
					GlobalStats[i] = isKeyActivated(Keybinds[i])
				end
			end
	
			if m.Target ~= nil then
				if not getOrDefault(GameStats, "IgnorePlayers") then
					for i,v in pairs(GetFamily(m.Target)) do
						local plr = game:GetService("Players"):GetPlayerFromCharacter(v)
						if plr and plr.Character and meetsConditions(plr.Character) and priorityCheck(plr) then
							targetPlr(plr)
							break
						end
					end
				end
	
				if getOrDefault(GameStats, "TargetNPCs") then
					local npc = isnpc(m.Target)
					if npc and npc.Humanoid.Health > 0 and meetsConditions(npc) then
						selectChr(npc)
					end
				end
			end
	
			if getOrDefault(GameStats, "AutoTarget") then
				local table1 = {}
				local PrioritizedPlrsOnScreen = {}
	
				local function addchr(v)
					local player = plrs:GetPlayerFromCharacter(v)
					if player and IsNotWhitelisted(player) or not player then
						if v:FindFirstChildOfClass("Humanoid")
							and lplr.Character and lplr.Character:FindFirstChild("Head")
							and v:FindFirstChildOfClass("Humanoid").Health > 0
							and meetsConditions(v) then
							local targpart = gettargetpart(v)
							if targpart then
								local pos = math.floor(lplr:DistanceFromCharacter(targpart.Position))
								local _, onscreen = camera:WorldToScreenPoint(targpart.Position)
								local rayparams = RaycastParams.new()
								rayparams.FilterDescendantsInstances = chrs
								rayparams.IgnoreWater = true
								local raycast = workspace:Raycast(lplr.Character.Head.Position, targpart.Position - lplr.Character.Head.Position, rayparams)
								if (not raycast and getOrDefault(GameStats, "EnableRaycasting") or not getOrDefault(GameStats, "EnableRaycasting") and (onscreen or getOrDefault(GameStats, "TargetOffScreen")) and pos < getOrDefault(GameStats, "MaxStuds")) then
									table1[v] = pos
									if table.find(PrioritizedPlrs, plrs:GetPlayerFromCharacter(v)) then
										table.insert(PrioritizedPlrsOnScreen, v)
									end
								end
							end
						end
					end
				end
	
				if getOrDefault(GameStats, "TargetNPCs") and (not getOrDefault(GameStats, "TargetPrioOnly") or #PrioritizedPlrs == 0) then
					for i, npc in pairs(npcs) do
						addchr(npc)
					end
				end
	
				if not getOrDefault(GameStats, "IgnorePlayers") then
					for i,v in pairs(plrs:GetPlayers()) do
						if v ~= lplr and v.Character then
							addchr(v.Character)
						end
					end
				end
	
				if #PrioritizedPlrsOnScreen ~= 0 or (#PrioritizedPlrs ~= 0 and getOrDefault(GameStats, "TargetPrioOnly")) then
	
					for chr, pos in pairs(table1) do
						if not table.find(PrioritizedPlrsOnScreen, chr) then
							table1[chr] = nil
						end
					end
	
				end
	
				valuesort(table1, function(Char, position)
					local plr = plrs:GetPlayerFromCharacter(Char)
					if plr and priorityCheck(plr) then
						targetPlr(plr)
					elseif not plr then
						selectChr(Char)
					end
					return 1
				end)
			end
			if getOrDefault(GameStats, "FirstPersonEnabled") then
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
			local wasPrior = table.find(PrioritizedPlrs, plr)
			local wasWL = table.find(WhitelistedPlrs, plr)
			if wasPrior then
				table.remove(PrioritizedPlrs, wasPrior)
				table.insert(PrioritizedPlrsOld, plr.Name)
			end
			if wasWL then
				table.remove(WhitelistedPlrs, wasWL)
				table.insert(WhitelistedPlrsOld, plr.Name)
			end
		end)
	
		Changed(misc, "TargetedCharacter", function(v)
			if v then
				local player = game:GetService("Players"):GetPlayerFromCharacter(v)
				if player then
					MainFrame.CurrentTarget.Text = CheckDN(player)
				else
					MainFrame.CurrentTarget.Text = v.Name
				end
				if not getOrDefault(GameStats, "FirstPersonEnabled") then
					lplr.Character.Humanoid.CameraOffset = Vector3.new(2,0,0)
					uiservice.MouseBehavior = Enum.MouseBehavior.LockCenter
				end
				MainFrame.CurrentTarget.TextColor3 = getOrDefault(Theme, "Yes")
				toggleTxt[MainFrame.CurrentTarget] = true
			else
				if not getOrDefault(GameStats, "FirstPersonEnabled") then
					lplr.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
					uiservice.MouseBehavior = Enum.MouseBehavior.Default
				end
				MainFrame.CurrentTarget.Text = "none"
				MainFrame.CurrentTarget.TextColor3 = getOrDefault(Theme, "No")
				toggleTxt[MainFrame.CurrentTarget] = false
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
				MainFrame.Status.TextColor3 = getOrDefault(Theme, "No")
				toggleTxt[MainFrame.Status] = false
				MainFrame.Status.Text = "disabled"
				deselect()
			else
				MainFrame.Status.TextColor3 = getOrDefault(Theme, "Yes")
				toggleTxt[MainFrame.Status] = true
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
				toggleTxt[button] = false
	
				if getOrDefault(GameStats, "WhitelistFriends") and lplr:IsFriendsWith(ins.UserId) and Table == WhitelistedPlrs and not table.find(Table, ins) then
					button.TextColor3 = getOrDefault(Theme, "Yes")
					toggleTxt[button] = true
					button.Text = "Yes"
					table.insert(Table, ins)
				end
				if table.find(Table, ins) and Table == PrioritizedPlrs then
					button.TextColor3 = getOrDefault(Theme, "Yes")
					toggleTxt[button] = true
					button.Text = "Yes"
				end
	
				button.Activated:connect(function()
					if button.Text == "No" then
						button.TextColor3 = getOrDefault(Theme, "Yes")
						toggleTxt[button] = true
						button.Text = "Yes"
						table.insert(Table,ins)
	
						if Table == PrioritizedPlrs and clone.WhitelistToggle.Text == "Yes" then
							clone.WhitelistToggle.Text = "No"
							clone.WhitelistToggle.TextColor3 = getOrDefault(Theme, "No")
							toggleTxt[clone.WhitelistToggle] = false
							local wlistplr = table.find(WhitelistedPlrs, ins)
							table.remove(WhitelistedPlrs, wlistplr)
						end
	
						if Table == WhitelistedPlrs and clone.PriorityToggle.Text == "Yes" then
							clone.PriorityToggle.Text = "No"
							clone.PriorityToggle.TextColor3 = getOrDefault(Theme, "No")
							toggleTxt[clone.PriorityToggle] = false
							local prioplr = table.find(PrioritizedPlrs, ins)
							table.remove(PrioritizedPlrs, prioplr)
						end
	
					else
						button.TextColor3 = getOrDefault(Theme, "No")
						toggleTxt[button] = false
						button.Text = "No"
						local removeins = table.find(Table, ins)
						table.remove(Table,removeins)
					end
				end)
	
			end
			clone.TextLabel.Text = CheckDN(ins)
			togglefunc(WhitelistedPlrs)
			togglefunc(PrioritizedPlrs)
	
			task.spawn(function()
				repeat task.wait() until not game:GetService("Players"):FindFirstChild(ins.Name)
				clone:Destroy()
			end)
	
		end
	
		for i,plr in pairs(plrs:GetPlayers()) do
			if plr ~= lplr then
				AddtoList(plr)
			end
		end
	
		Changed(wlui.searchbar, "Text", function(txt)
	
			for i,v in pairs(wlui.WhitelistedInstances:GetChildren()) do
				if v.ClassName == "Frame" and v ~= wlframe then
					v.Visible = v.TextLabel.Text:lower():match(txt:lower()) ~= nil
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
	
		plrs.PlayerAdded:connect(function(plr)
			local oldWL = table.find(WhitelistedPlrsOld, plr.Name)
			local oldPrior = table.find(PrioritizedPlrsOld, plr.Name)
			if oldWL then
				table.remove(WhitelistedPlrsOld, oldWL)
				table.insert(WhitelistedPlrs, plr)
			end
			if oldPrior then
				table.remove(PrioritizedPlrsOld, oldPrior)
				table.insert(PrioritizedPlrs, plr)
			end
			AddtoList(plr)
		end)
	
		targetingui.add.Activated:connect(function()
			addGUICondition(#getOrDefault(GameStats, "CustomTargetConditions")+1)
		end)
	
		targetingui.back.Activated:connect(function()
			targetingui.Visible = false
			games.Visible = true
		end)
	
		targetingui.about.Activated:connect(function()
			updateMsg(
				"When all of the conditions in this game return true, you may target someone. If any of these return false, you can't.\nKeywords to refer to your targets character/player is: TargetCharacter and TargetPlayer.",
				"Custom Targeting"
			)
		end)
	
		games.customtargetcons.Activated:connect(function()
			targetingui.Visible = true
			games.Visible = false
		end)
		
		local function Color3ToString(c3)
			return ("%d, %d, %d"):format(math.round(c3.R*255), math.round(c3.G*255), math.round(c3.B*255))
		end
	
		local themeTemplate = globalSettings.ThemeTemplate
		for name, color in pairs(Theme) do
			local clone = themeTemplate:Clone()
			clone.Parent = globalSettings
			clone.Visible = true
			clone.Name = "Theme"..name
			clone.Text = createName(clone.Name)
			local defaultColor = createGlobalStats().Theme[name]
			clone.value.PlaceholderText = Color3ToString(defaultColor)
			clone.value.Text = Color3ToString(color)
			clone.colorDisplay.BackgroundColor3 = color
			clone.value.FocusLost:connect(function()
				local success, col3 = pcall(function()
					return loadstring(("return Color3.fromRGB(%s)"):format(clone.value.Text))()
				end)
				if success then
					Theme[name] = col3
					clone.colorDisplay.BackgroundColor3 = col3
				else
					clone.value.Text = clone.value.PlaceholderText
					Theme[name] = defaultColor
					clone.colorDisplay.BackgroundColor3 = Theme[name]
				end
				applyTheme()
			end)
		end
	else
		sendNotif("R.U.A. Clone", "You've already executed this script. Deleting clone.")
		task.wait(0.2)
		gui:Destroy()
	end
end
coroutine.wrap(NHTIOA_fake_script)()
