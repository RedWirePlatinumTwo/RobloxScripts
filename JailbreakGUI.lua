-- Gui to Lua
-- Version: 3.2

-- Instances:

local JailbreakGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local replaceparachute = Instance.new("TextButton")
local holdebypass = Instance.new("TextButton")
local aimbot = Instance.new("TextButton")
local CrateEsp = Instance.new("TextButton")
local UIGridLayout = Instance.new("UIGridLayout")
local modguns = Instance.new("TextButton")
local GravToggle = Instance.new("TextButton")
local forcedaytime = Instance.new("TextButton")
local removeragdoll = Instance.new("TextButton")
local RobberyNotifier = Instance.new("TextButton")
local infiniteyeet = Instance.new("TextButton")
local gunshoptp = Instance.new("TextButton")
local keybypass = Instance.new("TextButton")
local AAAAA = Instance.new("TextButton")
local delradio = Instance.new("TextButton")
local respawn = Instance.new("TextButton")
local lockonexit = Instance.new("TextButton")
local Tazermod = Instance.new("TextButton")
local ropefollow = Instance.new("TextButton")
local Hotbarautosort = Instance.new("TextButton")
local glidekey = Instance.new("TextButton")
local _1speedv2 = Instance.new("TextBox")
local _1flyhack = Instance.new("TextButton")
local _1flyhackv2 = Instance.new("TextBox")
local _1speed = Instance.new("TextButton")
local _1placeholder = Instance.new("TextButton")
local togglebox = Instance.new("TextLabel")
local DisableNPCGuns = Instance.new("TextButton")
local aimpredictor = Instance.new("TextButton")
local aimtriggerbot = Instance.new("TextButton")
local wallhack = Instance.new("TextButton")
local modshotgun = Instance.new("TextButton")
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
local teamname = Instance.new("Frame")
local NOT = Instance.new("TextButton")
local team = Instance.new("TextBox")
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
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
MainFrame.BorderColor3 = Color3.fromRGB(0, 170, 255)
MainFrame.Position = UDim2.new(0.868116915, -384, 0.0722088963, 10)
MainFrame.Size = UDim2.new(0, 400, 0, 308)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
Title.BorderColor3 = Color3.fromRGB(85, 170, 255)
Title.LayoutOrder = 1
Title.Size = UDim2.new(0, 400, 0, 42)
Title.Font = Enum.Font.Ubuntu
Title.Text = "RedWire's Jailbreak GUI"
Title.TextColor3 = Color3.fromRGB(85, 170, 255)
Title.TextSize = 30.000
Title.TextStrokeColor3 = Color3.fromRGB(110, 110, 248)
Title.TextWrapped = true

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 170, 255)
ScrollingFrame.Position = UDim2.new(0.0319970697, 0, 0.171266183, 0)
ScrollingFrame.Size = UDim2.new(0, 376, 0, 235)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

replaceparachute.Name = "replaceparachute"
replaceparachute.Parent = ScrollingFrame
replaceparachute.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
replaceparachute.BorderColor3 = Color3.fromRGB(0, 170, 255)
replaceparachute.Position = UDim2.new(0, 0, 0.451666713, 0)
replaceparachute.Size = UDim2.new(0, 106, 0, 51)
replaceparachute.ZIndex = -222
replaceparachute.Font = Enum.Font.Ubuntu
replaceparachute.Text = "Replace parachute w/ glider"
replaceparachute.TextColor3 = Color3.fromRGB(85, 170, 255)
replaceparachute.TextSize = 20.000
replaceparachute.TextWrapped = true
replaceparachute.TextXAlignment = Enum.TextXAlignment.Left

holdebypass.Name = "holdebypass"
holdebypass.Parent = ScrollingFrame
holdebypass.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
holdebypass.BorderColor3 = Color3.fromRGB(0, 170, 255)
holdebypass.Position = UDim2.new(0.329939932, 0, 0.189644739, 0)
holdebypass.Size = UDim2.new(0, 106, 0, 52)
holdebypass.Font = Enum.Font.Ubuntu
holdebypass.Text = "Hold E Bypass"
holdebypass.TextColor3 = Color3.fromRGB(85, 170, 255)
holdebypass.TextSize = 20.000
holdebypass.TextWrapped = true
holdebypass.TextXAlignment = Enum.TextXAlignment.Left

aimbot.Name = "aimbot"
aimbot.Parent = ScrollingFrame
aimbot.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
aimbot.BorderColor3 = Color3.fromRGB(0, 170, 255)
aimbot.Position = UDim2.new(0, 0, 0.267379671, 0)
aimbot.Size = UDim2.new(0, 110, 0, 50)
aimbot.Font = Enum.Font.Ubuntu
aimbot.Text = "Aimbot"
aimbot.TextColor3 = Color3.fromRGB(85, 170, 255)
aimbot.TextSize = 20.000
aimbot.TextWrapped = true
aimbot.TextXAlignment = Enum.TextXAlignment.Left

CrateEsp.Name = "CrateEsp"
CrateEsp.Parent = ScrollingFrame
CrateEsp.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
CrateEsp.BorderColor3 = Color3.fromRGB(0, 170, 255)
CrateEsp.Position = UDim2.new(0, 0, 0.451666713, 0)
CrateEsp.Size = UDim2.new(0, 106, 0, 51)
CrateEsp.ZIndex = -222
CrateEsp.Font = Enum.Font.Ubuntu
CrateEsp.Text = "Crate ESP"
CrateEsp.TextColor3 = Color3.fromRGB(85, 170, 255)
CrateEsp.TextSize = 20.000
CrateEsp.TextWrapped = true
CrateEsp.TextXAlignment = Enum.TextXAlignment.Left

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.CellSize = UDim2.new(0, 360, 0, 35)

modguns.Name = "modguns"
modguns.Parent = ScrollingFrame
modguns.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
modguns.BorderColor3 = Color3.fromRGB(0, 170, 255)
modguns.Position = UDim2.new(0.0186170209, 0, 2.55319142, 0)
modguns.Size = UDim2.new(0, 106, 0, 51)
modguns.ZIndex = -99
modguns.Font = Enum.Font.Ubuntu
modguns.Text = "Mod guns"
modguns.TextColor3 = Color3.fromRGB(85, 170, 255)
modguns.TextSize = 20.000
modguns.TextWrapped = true
modguns.TextXAlignment = Enum.TextXAlignment.Left

GravToggle.Name = "GravToggle"
GravToggle.Parent = ScrollingFrame
GravToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
GravToggle.BorderColor3 = Color3.fromRGB(0, 170, 255)
GravToggle.Position = UDim2.new(0.668999851, 0, 0.451666713, 0)
GravToggle.Size = UDim2.new(0, 105, 0, 51)
GravToggle.ZIndex = 0
GravToggle.Font = Enum.Font.Ubuntu
GravToggle.Text = "Gravity Toggle (196)"
GravToggle.TextColor3 = Color3.fromRGB(85, 170, 255)
GravToggle.TextSize = 20.000
GravToggle.TextWrapped = true
GravToggle.TextXAlignment = Enum.TextXAlignment.Left

forcedaytime.Name = "forcedaytime"
forcedaytime.Parent = ScrollingFrame
forcedaytime.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
forcedaytime.BorderColor3 = Color3.fromRGB(0, 170, 255)
forcedaytime.Position = UDim2.new(0.333333343, 0, 0.710666597, 0)
forcedaytime.Size = UDim2.new(0, 106, 0, 52)
forcedaytime.ZIndex = 0
forcedaytime.Font = Enum.Font.Ubuntu
forcedaytime.Text = "Force Daytime"
forcedaytime.TextColor3 = Color3.fromRGB(85, 170, 255)
forcedaytime.TextSize = 20.000
forcedaytime.TextWrapped = true
forcedaytime.TextXAlignment = Enum.TextXAlignment.Left

removeragdoll.Name = "removeragdoll"
removeragdoll.Parent = ScrollingFrame
removeragdoll.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
removeragdoll.BorderColor3 = Color3.fromRGB(0, 170, 255)
removeragdoll.Position = UDim2.new(0, 0, 2.7021277, 0)
removeragdoll.Size = UDim2.new(0, 115, 0, 47)
removeragdoll.Font = Enum.Font.Ubuntu
removeragdoll.Text = "Remove Ragdoll"
removeragdoll.TextColor3 = Color3.fromRGB(85, 170, 255)
removeragdoll.TextSize = 20.000
removeragdoll.TextWrapped = true
removeragdoll.TextXAlignment = Enum.TextXAlignment.Left

RobberyNotifier.Name = "RobberyNotifier"
RobberyNotifier.Parent = ScrollingFrame
RobberyNotifier.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
RobberyNotifier.BorderColor3 = Color3.fromRGB(0, 170, 255)
RobberyNotifier.Position = UDim2.new(0.327883303, 0, 0, 0)
RobberyNotifier.Size = UDim2.new(0, 117, 0, 47)
RobberyNotifier.Font = Enum.Font.Ubuntu
RobberyNotifier.Text = "Robbery Notifier"
RobberyNotifier.TextColor3 = Color3.fromRGB(85, 170, 255)
RobberyNotifier.TextSize = 20.000
RobberyNotifier.TextWrapped = true
RobberyNotifier.TextXAlignment = Enum.TextXAlignment.Left

infiniteyeet.Name = "infiniteyeet"
infiniteyeet.Parent = ScrollingFrame
infiniteyeet.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
infiniteyeet.BorderColor3 = Color3.fromRGB(0, 170, 255)
infiniteyeet.Position = UDim2.new(0.663817644, 0, 0, 0)
infiniteyeet.Size = UDim2.new(0, 117, 0, 47)
infiniteyeet.Font = Enum.Font.Ubuntu
infiniteyeet.Text = "Infinite Yield"
infiniteyeet.TextColor3 = Color3.fromRGB(85, 170, 255)
infiniteyeet.TextSize = 20.000
infiniteyeet.TextWrapped = true
infiniteyeet.TextXAlignment = Enum.TextXAlignment.Left

gunshoptp.Name = "gunshoptp"
gunshoptp.Parent = ScrollingFrame
gunshoptp.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
gunshoptp.BorderColor3 = Color3.fromRGB(0, 170, 255)
gunshoptp.Position = UDim2.new(0, 0, 0.262000024, 0)
gunshoptp.Size = UDim2.new(0, 117, 0, 47)
gunshoptp.Font = Enum.Font.Ubuntu
gunshoptp.Text = "Gunshop TP"
gunshoptp.TextColor3 = Color3.fromRGB(85, 170, 255)
gunshoptp.TextSize = 20.000
gunshoptp.TextWrapped = true
gunshoptp.TextXAlignment = Enum.TextXAlignment.Left

keybypass.Name = "keybypass"
keybypass.Parent = ScrollingFrame
keybypass.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
keybypass.BorderColor3 = Color3.fromRGB(0, 170, 255)
keybypass.Position = UDim2.new(0.333333343, 0, 0.262000024, 0)
keybypass.Size = UDim2.new(0, 116, 0, 47)
keybypass.ZIndex = 0
keybypass.Font = Enum.Font.Ubuntu
keybypass.Text = "Keycard Bypass"
keybypass.TextColor3 = Color3.fromRGB(85, 170, 255)
keybypass.TextSize = 20.000
keybypass.TextWrapped = true
keybypass.TextXAlignment = Enum.TextXAlignment.Left

AAAAA.Name = "AAAAA"
AAAAA.Parent = ScrollingFrame
AAAAA.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
AAAAA.BorderColor3 = Color3.fromRGB(0, 170, 255)
AAAAA.Position = UDim2.new(0, 0, 0.523438752, 0)
AAAAA.Size = UDim2.new(0, 116, 0, 47)
AAAAA.ZIndex = 0
AAAAA.Font = Enum.Font.Ubuntu
AAAAA.Text = "Casino code:"
AAAAA.TextColor3 = Color3.fromRGB(85, 170, 255)
AAAAA.TextSize = 20.000
AAAAA.TextWrapped = true
AAAAA.TextXAlignment = Enum.TextXAlignment.Left

delradio.Name = "delradio"
delradio.Parent = ScrollingFrame
delradio.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
delradio.BorderColor3 = Color3.fromRGB(0, 170, 255)
delradio.Position = UDim2.new(0.333333343, 0, 0.523438752, 0)
delradio.Size = UDim2.new(0, 117, 0, 47)
delradio.ZIndex = -1
delradio.Font = Enum.Font.Ubuntu
delradio.Text = "Delete Radio Gui"
delradio.TextColor3 = Color3.fromRGB(85, 170, 255)
delradio.TextSize = 20.000
delradio.TextWrapped = true
delradio.TextXAlignment = Enum.TextXAlignment.Left

respawn.Name = "respawn"
respawn.Parent = ScrollingFrame
respawn.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
respawn.BorderColor3 = Color3.fromRGB(0, 170, 255)
respawn.Position = UDim2.new(0.667000175, 0, 0.523438752, 0)
respawn.Size = UDim2.new(0, 116, 0, 47)
respawn.ZIndex = -1
respawn.Font = Enum.Font.Ubuntu
respawn.Text = "Respawn"
respawn.TextColor3 = Color3.fromRGB(85, 170, 255)
respawn.TextSize = 20.000
respawn.TextWrapped = true
respawn.TextXAlignment = Enum.TextXAlignment.Left

lockonexit.Name = "lockonexit"
lockonexit.Parent = ScrollingFrame
lockonexit.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
lockonexit.BorderColor3 = Color3.fromRGB(0, 170, 255)
lockonexit.Position = UDim2.new(0.667000175, 0, 0.523438752, 0)
lockonexit.Size = UDim2.new(0, 116, 0, 47)
lockonexit.ZIndex = -1
lockonexit.Font = Enum.Font.Ubuntu
lockonexit.Text = "Auto-lock vehicle on exit"
lockonexit.TextColor3 = Color3.fromRGB(85, 170, 255)
lockonexit.TextSize = 20.000
lockonexit.TextWrapped = true
lockonexit.TextXAlignment = Enum.TextXAlignment.Left

Tazermod.Name = "Tazermod"
Tazermod.Parent = ScrollingFrame
Tazermod.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
Tazermod.BorderColor3 = Color3.fromRGB(0, 170, 255)
Tazermod.Position = UDim2.new(0, 0, 0.451666713, 0)
Tazermod.Size = UDim2.new(0, 106, 0, 51)
Tazermod.ZIndex = -222
Tazermod.Font = Enum.Font.Ubuntu
Tazermod.Text = "Tazer mod"
Tazermod.TextColor3 = Color3.fromRGB(85, 170, 255)
Tazermod.TextSize = 20.000
Tazermod.TextWrapped = true
Tazermod.TextXAlignment = Enum.TextXAlignment.Left

ropefollow.Name = "ropefollow"
ropefollow.Parent = ScrollingFrame
ropefollow.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
ropefollow.BorderColor3 = Color3.fromRGB(0, 170, 255)
ropefollow.Position = UDim2.new(0, 0, 0.451666713, 0)
ropefollow.Size = UDim2.new(0, 106, 0, 51)
ropefollow.ZIndex = -222
ropefollow.Font = Enum.Font.Ubuntu
ropefollow.Text = "Rope-Follow-Part"
ropefollow.TextColor3 = Color3.fromRGB(85, 170, 255)
ropefollow.TextSize = 20.000
ropefollow.TextWrapped = true
ropefollow.TextXAlignment = Enum.TextXAlignment.Left

Hotbarautosort.Name = "Hotbarautosort"
Hotbarautosort.Parent = ScrollingFrame
Hotbarautosort.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
Hotbarautosort.BorderColor3 = Color3.fromRGB(0, 170, 255)
Hotbarautosort.Position = UDim2.new(0, 0, 0.451666713, 0)
Hotbarautosort.Size = UDim2.new(0, 106, 0, 51)
Hotbarautosort.ZIndex = -222
Hotbarautosort.Font = Enum.Font.Ubuntu
Hotbarautosort.Text = "Hotbar Auto-sorter"
Hotbarautosort.TextColor3 = Color3.fromRGB(85, 170, 255)
Hotbarautosort.TextSize = 20.000
Hotbarautosort.TextWrapped = true
Hotbarautosort.TextXAlignment = Enum.TextXAlignment.Left

glidekey.Name = "glidekey"
glidekey.Parent = ScrollingFrame
glidekey.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
glidekey.BorderColor3 = Color3.fromRGB(0, 170, 255)
glidekey.Position = UDim2.new(0, 0, 0.451666713, 0)
glidekey.Size = UDim2.new(0, 106, 0, 51)
glidekey.ZIndex = -222
glidekey.Font = Enum.Font.Ubuntu
glidekey.Text = "G-to-glide"
glidekey.TextColor3 = Color3.fromRGB(85, 170, 255)
glidekey.TextSize = 20.000
glidekey.TextWrapped = true
glidekey.TextXAlignment = Enum.TextXAlignment.Left

_1speedv2.Name = "1speedv2"
_1speedv2.Parent = ScrollingFrame
_1speedv2.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
_1speedv2.BorderColor3 = Color3.fromRGB(0, 170, 255)
_1speedv2.Position = UDim2.new(0, 0, -0.229946852, 0)
_1speedv2.Size = UDim2.new(0, 370, 0, 31)
_1speedv2.Visible = false
_1speedv2.Font = Enum.Font.Ubuntu
_1speedv2.PlaceholderColor3 = Color3.fromRGB(85, 255, 127)
_1speedv2.PlaceholderText = "Walkspeed number"
_1speedv2.Text = "30"
_1speedv2.TextColor3 = Color3.fromRGB(85, 255, 127)
_1speedv2.TextSize = 24.000
_1speedv2.TextWrapped = true
_1speedv2.TextXAlignment = Enum.TextXAlignment.Left

_1flyhack.Name = "1flyhack"
_1flyhack.Parent = ScrollingFrame
_1flyhack.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
_1flyhack.BorderColor3 = Color3.fromRGB(0, 170, 255)
_1flyhack.Position = UDim2.new(0, 0, 1.15385723, 0)
_1flyhack.Size = UDim2.new(0, 370, 0, 31)
_1flyhack.Font = Enum.Font.Ubuntu
_1flyhack.Text = "Fly hack (Left CTRL + F)"
_1flyhack.TextColor3 = Color3.fromRGB(85, 170, 255)
_1flyhack.TextSize = 20.000
_1flyhack.TextWrapped = true
_1flyhack.TextXAlignment = Enum.TextXAlignment.Left

_1flyhackv2.Name = "1flyhackv2"
_1flyhackv2.Parent = ScrollingFrame
_1flyhackv2.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
_1flyhackv2.BorderColor3 = Color3.fromRGB(0, 170, 255)
_1flyhackv2.Position = UDim2.new(0, 0, -0.229946852, 0)
_1flyhackv2.Size = UDim2.new(0, 370, 0, 31)
_1flyhackv2.Visible = false
_1flyhackv2.Font = Enum.Font.Ubuntu
_1flyhackv2.PlaceholderColor3 = Color3.fromRGB(85, 255, 255)
_1flyhackv2.PlaceholderText = "Fly Speed number"
_1flyhackv2.Text = "300"
_1flyhackv2.TextColor3 = Color3.fromRGB(85, 255, 255)
_1flyhackv2.TextSize = 24.000
_1flyhackv2.TextWrapped = true
_1flyhackv2.TextXAlignment = Enum.TextXAlignment.Left

_1speed.Name = "1speed"
_1speed.Parent = ScrollingFrame
_1speed.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
_1speed.BorderColor3 = Color3.fromRGB(0, 170, 255)
_1speed.Position = UDim2.new(0, 0, 3.92146373, 0)
_1speed.Size = UDim2.new(0, 370, 0, 31)
_1speed.ZIndex = 33
_1speed.Font = Enum.Font.Ubuntu
_1speed.Text = "Speedhack"
_1speed.TextColor3 = Color3.fromRGB(85, 170, 255)
_1speed.TextSize = 20.000
_1speed.TextWrapped = true
_1speed.TextXAlignment = Enum.TextXAlignment.Left

_1placeholder.Name = "1placeholder"
_1placeholder.Parent = ScrollingFrame
_1placeholder.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
_1placeholder.BorderColor3 = Color3.fromRGB(0, 170, 255)
_1placeholder.Position = UDim2.new(0, 0, 0.451666713, 0)
_1placeholder.Size = UDim2.new(0, 106, 0, 51)
_1placeholder.Visible = false
_1placeholder.ZIndex = -222
_1placeholder.Font = Enum.Font.Ubuntu
_1placeholder.Text = "placeholder frame"
_1placeholder.TextColor3 = Color3.fromRGB(85, 170, 255)
_1placeholder.TextSize = 20.000
_1placeholder.TextWrapped = true
_1placeholder.TextXAlignment = Enum.TextXAlignment.Left

togglebox.Name = "togglebox"
togglebox.Parent = _1placeholder
togglebox.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
togglebox.BorderColor3 = Color3.fromRGB(85, 170, 255)
togglebox.Position = UDim2.new(0.902777791, 0, 0, 0)
togglebox.Size = UDim2.new(0, 35, 0, 35)
togglebox.Font = Enum.Font.Ubuntu
togglebox.Text = "x"
togglebox.TextColor3 = Color3.fromRGB(170, 0, 0)
togglebox.TextSize = 40.000
togglebox.TextStrokeTransparency = 0.000
togglebox.TextWrapped = true

DisableNPCGuns.Name = "DisableNPCGuns"
DisableNPCGuns.Parent = ScrollingFrame
DisableNPCGuns.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
DisableNPCGuns.BorderColor3 = Color3.fromRGB(0, 170, 255)
DisableNPCGuns.Position = UDim2.new(0, 0, 0.451666713, 0)
DisableNPCGuns.Size = UDim2.new(0, 106, 0, 51)
DisableNPCGuns.ZIndex = -222
DisableNPCGuns.Font = Enum.Font.Ubuntu
DisableNPCGuns.Text = "Disable NPC Guns (Client-sided)"
DisableNPCGuns.TextColor3 = Color3.fromRGB(85, 170, 255)
DisableNPCGuns.TextSize = 20.000
DisableNPCGuns.TextWrapped = true
DisableNPCGuns.TextXAlignment = Enum.TextXAlignment.Left

aimpredictor.Name = "aimpredictor"
aimpredictor.Parent = ScrollingFrame
aimpredictor.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
aimpredictor.BorderColor3 = Color3.fromRGB(0, 170, 255)
aimpredictor.Position = UDim2.new(0, 0, 0.267379671, 0)
aimpredictor.Size = UDim2.new(0, 110, 0, 50)
aimpredictor.Visible = false
aimpredictor.Font = Enum.Font.Ubuntu
aimpredictor.Text = "Aim Predictor"
aimpredictor.TextColor3 = Color3.fromRGB(85, 170, 255)
aimpredictor.TextSize = 20.000
aimpredictor.TextWrapped = true
aimpredictor.TextXAlignment = Enum.TextXAlignment.Left

aimtriggerbot.Name = "aimtriggerbot"
aimtriggerbot.Parent = ScrollingFrame
aimtriggerbot.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
aimtriggerbot.BorderColor3 = Color3.fromRGB(0, 170, 255)
aimtriggerbot.Position = UDim2.new(0, 0, 0.267379671, 0)
aimtriggerbot.Size = UDim2.new(0, 110, 0, 50)
aimtriggerbot.Visible = false
aimtriggerbot.Font = Enum.Font.Ubuntu
aimtriggerbot.Text = "Triggerbot"
aimtriggerbot.TextColor3 = Color3.fromRGB(85, 170, 255)
aimtriggerbot.TextSize = 20.000
aimtriggerbot.TextWrapped = true
aimtriggerbot.TextXAlignment = Enum.TextXAlignment.Left

wallhack.Name = "wallhack"
wallhack.Parent = ScrollingFrame
wallhack.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
wallhack.BorderColor3 = Color3.fromRGB(0, 170, 255)
wallhack.Position = UDim2.new(0, 0, 3.92146373, 0)
wallhack.Size = UDim2.new(0, 370, 0, 31)
wallhack.ZIndex = 33
wallhack.Font = Enum.Font.Ubuntu
wallhack.Text = "Shoot thru walls"
wallhack.TextColor3 = Color3.fromRGB(85, 170, 255)
wallhack.TextSize = 20.000
wallhack.TextWrapped = true
wallhack.TextXAlignment = Enum.TextXAlignment.Left

modshotgun.Name = "modshotgun"
modshotgun.Parent = ScrollingFrame
modshotgun.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
modshotgun.BorderColor3 = Color3.fromRGB(0, 170, 255)
modshotgun.Position = UDim2.new(0, 0, 0.523438752, 0)
modshotgun.Size = UDim2.new(0, 116, 0, 47)
modshotgun.ZIndex = 0
modshotgun.Font = Enum.Font.Ubuntu
modshotgun.Text = "Reduced spread/single shotgun bullet"
modshotgun.TextColor3 = Color3.fromRGB(85, 170, 255)
modshotgun.TextSize = 20.000
modshotgun.TextWrapped = true
modshotgun.TextXAlignment = Enum.TextXAlignment.Left

AutosortFrame.Name = "AutosortFrame"
AutosortFrame.Parent = JailbreakGUI
AutosortFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
AutosortFrame.BorderColor3 = Color3.fromRGB(0, 170, 255)
AutosortFrame.Position = UDim2.new(0.3528229, 0, 0.157118276, 0)
AutosortFrame.Size = UDim2.new(0, 402, 0, 335)
AutosortFrame.Visible = false

ScrollingFrame_2.Parent = AutosortFrame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 170, 255)
ScrollingFrame_2.Position = UDim2.new(0.0329122208, 0, 0.127253339, 0)
ScrollingFrame_2.Size = UDim2.new(0, 375, 0, 215)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = ScrollingFrame_2
UIListLayout.Padding = UDim.new(0, 10)

loadoutframe.Name = "loadoutframe"
loadoutframe.Parent = ScrollingFrame_2
loadoutframe.Active = true
loadoutframe.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
loadoutframe.BorderColor3 = Color3.fromRGB(0, 170, 255)
loadoutframe.Size = UDim2.new(0, 358, 0, 198)
loadoutframe.Visible = false
loadoutframe.CanvasSize = UDim2.new(0, 0, 0, 0)

Title_2.Name = "Title"
Title_2.Parent = loadoutframe
Title_2.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
Title_2.BorderColor3 = Color3.fromRGB(0, 170, 255)
Title_2.LayoutOrder = 1
Title_2.Size = UDim2.new(0, 317, 0, 25)
Title_2.Font = Enum.Font.Ubuntu
Title_2.Text = "loadoutname"
Title_2.TextColor3 = Color3.fromRGB(85, 170, 255)
Title_2.TextScaled = true
Title_2.TextSize = 27.000
Title_2.TextStrokeColor3 = Color3.fromRGB(110, 110, 248)
Title_2.TextWrapped = true

delloadout.Name = "delloadout"
delloadout.Parent = Title_2
delloadout.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
delloadout.BorderColor3 = Color3.fromRGB(0, 170, 255)
delloadout.Position = UDim2.new(1, 0, -0.0149493404, 0)
delloadout.Size = UDim2.new(0, 25, 0, 25)
delloadout.Font = Enum.Font.Ubuntu
delloadout.Text = "X"
delloadout.TextColor3 = Color3.fromRGB(170, 0, 0)
delloadout.TextScaled = true
delloadout.TextSize = 14.000
delloadout.TextWrapped = true

itemframe.Name = "itemframe"
itemframe.Parent = loadoutframe
itemframe.BackgroundColor3 = Color3.fromRGB(24, 24, 56)
itemframe.BorderColor3 = Color3.fromRGB(110, 110, 248)
itemframe.Position = UDim2.new(0, 0, 0.378787875, 0)
itemframe.Size = UDim2.new(0, 342, 0, 25)
itemframe.Visible = false

x.Name = "x"
x.Parent = itemframe
x.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
x.BorderColor3 = Color3.fromRGB(0, 170, 255)
x.Position = UDim2.new(0.926900625, 0, 0, 0)
x.Size = UDim2.new(0, 25, 0, 25)
x.Font = Enum.Font.Ubuntu
x.Text = "X"
x.TextColor3 = Color3.fromRGB(170, 0, 0)
x.TextScaled = true
x.TextSize = 14.000
x.TextWrapped = true

itemname.Name = "itemname"
itemname.Parent = itemframe
itemname.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
itemname.BorderColor3 = Color3.fromRGB(0, 170, 255)
itemname.Size = UDim2.new(0, 171, 0, 25)
itemname.Font = Enum.Font.Ubuntu
itemname.PlaceholderText = "Item Name"
itemname.Text = ""
itemname.TextColor3 = Color3.fromRGB(85, 170, 255)
itemname.TextScaled = true
itemname.TextSize = 14.000
itemname.TextWrapped = true

slotnum.Name = "slotnum"
slotnum.Parent = itemframe
slotnum.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
slotnum.BorderColor3 = Color3.fromRGB(0, 170, 255)
slotnum.Position = UDim2.new(0.5, 0, 0, 0)
slotnum.Size = UDim2.new(0, 146, 0, 25)
slotnum.Font = Enum.Font.Ubuntu
slotnum.PlaceholderText = "Slot number"
slotnum.Text = ""
slotnum.TextColor3 = Color3.fromRGB(85, 170, 255)
slotnum.TextScaled = true
slotnum.TextSize = 14.000
slotnum.TextWrapped = true

active.Name = "active"
active.Parent = loadoutframe
active.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
active.BorderColor3 = Color3.fromRGB(0, 170, 255)
active.Position = UDim2.new(0, 0, 0.25252524, 0)
active.Size = UDim2.new(0, 342, 0, 25)
active.Font = Enum.Font.Ubuntu
active.Text = "Active"
active.TextColor3 = Color3.fromRGB(170, 0, 0)
active.TextScaled = true
active.TextSize = 14.000
active.TextWrapped = true

additem.Name = "additem"
additem.Parent = loadoutframe
additem.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
additem.BorderColor3 = Color3.fromRGB(0, 170, 255)
additem.Position = UDim2.new(0, 0, 0.25252524, 0)
additem.Size = UDim2.new(0, 342, 0, 25)
additem.Font = Enum.Font.Ubuntu
additem.Text = "+ Add Item"
additem.TextColor3 = Color3.fromRGB(85, 255, 255)
additem.TextScaled = true
additem.TextSize = 14.000
additem.TextWrapped = true

UIListLayout_2.Parent = loadoutframe

teamname.Name = "teamname"
teamname.Parent = loadoutframe
teamname.BackgroundColor3 = Color3.fromRGB(24, 24, 56)
teamname.BorderColor3 = Color3.fromRGB(110, 110, 248)
teamname.Position = UDim2.new(0, 0, 0.378787875, 0)
teamname.Size = UDim2.new(0, 342, 0, 25)

NOT.Name = "NOT"
NOT.Parent = teamname
NOT.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
NOT.BorderColor3 = Color3.fromRGB(0, 170, 255)
NOT.Position = UDim2.new(0.897660792, 0, 0, 0)
NOT.Size = UDim2.new(0, 35, 0, 25)
NOT.Font = Enum.Font.Ubuntu
NOT.Text = "NOT"
NOT.TextColor3 = Color3.fromRGB(170, 0, 0)
NOT.TextScaled = true
NOT.TextSize = 14.000
NOT.TextWrapped = true

team.Name = "team"
team.Parent = teamname
team.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
team.BorderColor3 = Color3.fromRGB(0, 170, 255)
team.Size = UDim2.new(0, 307, 0, 25)
team.Font = Enum.Font.Ubuntu
team.PlaceholderText = "Leave blank for any team"
team.Text = ""
team.TextColor3 = Color3.fromRGB(85, 170, 255)
team.TextScaled = true
team.TextSize = 14.000
team.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = AutosortFrame
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(110, 110, 248)
Title_3.LayoutOrder = 1
Title_3.Position = UDim2.new(0.0602755435, 0, 0.0149253728, 0)
Title_3.Size = UDim2.new(0, 352, 0, 30)
Title_3.Font = Enum.Font.Ubuntu
Title_3.Text = "Hotbar Auto-Sorter"
Title_3.TextColor3 = Color3.fromRGB(85, 170, 255)
Title_3.TextSize = 30.000
Title_3.TextStrokeColor3 = Color3.fromRGB(110, 110, 248)
Title_3.TextWrapped = true

hide.Name = "hide"
hide.Parent = AutosortFrame
hide.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
hide.BorderColor3 = Color3.fromRGB(0, 170, 255)
hide.Position = UDim2.new(0.337292314, 0, 0.922172725, 0)
hide.Size = UDim2.new(0, 129, 0, 26)
hide.ZIndex = 33
hide.Font = Enum.Font.Ubuntu
hide.Text = "Hide"
hide.TextColor3 = Color3.fromRGB(85, 170, 255)
hide.TextSize = 28.000
hide.TextWrapped = true

addloadout.Name = "addloadout"
addloadout.Parent = AutosortFrame
addloadout.BackgroundColor3 = Color3.fromRGB(0, 0, 45)
addloadout.BorderColor3 = Color3.fromRGB(0, 170, 255)
addloadout.Position = UDim2.new(0.0315795019, 0, 0.803062916, 0)
addloadout.Size = UDim2.new(0, 168, 0, 25)
addloadout.ZIndex = 33
addloadout.Font = Enum.Font.Ubuntu
addloadout.Text = "Add loadout with name:"
addloadout.TextColor3 = Color3.fromRGB(85, 170, 255)
addloadout.TextScaled = true
addloadout.TextSize = 28.000
addloadout.TextWrapped = true

loadoutname.Name = "loadoutname"
loadoutname.Parent = AutosortFrame
loadoutname.BackgroundColor3 = Color3.fromRGB(0, 0, 70)
loadoutname.BorderColor3 = Color3.fromRGB(0, 170, 255)
loadoutname.Position = UDim2.new(0.449489921, 0, 0.802994728, 0)
loadoutname.Size = UDim2.new(0, 206, 0, 25)
loadoutname.Font = Enum.Font.Ubuntu
loadoutname.PlaceholderText = "Loadout Name"
loadoutname.Text = ""
loadoutname.TextColor3 = Color3.fromRGB(85, 170, 255)
loadoutname.TextScaled = true
loadoutname.TextSize = 14.000
loadoutname.TextWrapped = true

-- Scripts:

local function SYWYE_fake_script() -- JailbreakGUI.LocalScript 
	local script = Instance.new('LocalScript', JailbreakGUI)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/getservice%20auto-converter.lua"))()
	local mainframe = script.Parent.MainFrame.ScrollingFrame
	mainframe.UIGridLayout.SortOrder = 0
	local aframe = script.Parent.AutosortFrame
	local autosortframe = aframe.ScrollingFrame
	autosortframe.UIListLayout.SortOrder = 0
	local rstorage = game.ReplicatedStorage
	local runservice = game.RunService
	local itemconfig = rstorage.Game.ItemConfig
	local oneclickbuttons = {
		mainframe.RobberyNotifier,
		mainframe.Tazermod,
		mainframe.delradio,
		mainframe.forcedaytime,
		mainframe.keybypass,
		mainframe.modguns,
		mainframe.removeragdoll,
		mainframe.aimbot,
		mainframe.infiniteyeet,
		mainframe.DisableNPCGuns,
		mainframe.holdebypass
	}
	local togglebuttons = {
		mainframe.gunshoptp,
		mainframe.lockonexit,
		mainframe.glidekey,
		mainframe.CrateEsp,
		mainframe.ropefollow,
		mainframe.replaceparachute,
		mainframe.aimpredictor,
		mainframe.aimtriggerbot,
		mainframe.wallhack,
		mainframe.modshotgun
	}
	
	local function singleclick(button, func)
		local con
		con = button.Activated:connect(function(...)
			con:Disconnect()
			func(...)
		end)
	end
	
	local function tablecount(t)
		local n = 0
		for i,v in pairs(t) do
			n = n + 1
		end
		return n
	end
	
	local function thread(func)
		return coroutine.resume(coroutine.create(function()
			return func()
		end))
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
	
	for i,v in pairs(script.Parent:GetDescendants()) do
		if v.ClassName == "ScrollingFrame" then
			v.AutomaticCanvasSize = 2
			v.ScrollBarImageColor3 = mainframe.Parent.BorderColor3
		end
		if v.ClassName == "Frame" then
			v.Active = true
			v.Draggable = true
		end
	end
	
	for i,v in pairs(oneclickbuttons) do
		local box = mainframe["1placeholder"].togglebox:Clone()
		box.Parent = v
	
		singleclick(v, function()
			box.TextColor3 = Color3.fromRGB(0,170,0)
			box.Text = "✓"
		end)
	
	end
	
	for i,v in pairs(togglebuttons) do
		local bool = false
		local box = mainframe["1placeholder"].togglebox:Clone()
		box.Parent = v
		box.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
	
		v.Activated:connect(function()
			bool = not bool
			if bool then
				box.TextColor3 = Color3.fromRGB(0,170,0)
				box.Text = "✓"
			else
				box.TextColor3 = Color3.fromRGB(170,0,0)
				box.Text = "x"
			end
		end)
	end
	
	if game.PlaceId == 606849621 then
		local notif = require(game:GetService("ReplicatedStorage").Game.Notification)
		local tcservice = game:GetService("TextChatService")
	
		local function notify(text)
			text = "<font color= '#"..mainframe.BorderColor3:ToHex().."'>[Red's JB GUI] "..text.."</font>"
			if tcservice.ChatVersion == Enum.ChatVersion.LegacyChatService then
				game.StarterGui:SetCore("ChatMakeSystemMessage",({["Text"] = text}))
			else
				tcservice.TextChannels.RBXGeneral:DisplaySystemMessage(text)
			end
		end
	
		if not _G.RedsJBGUI then
			_G.RedsJBGUI = true
			notify("Re-worked hotbar loadout. Multiple loadouts can be active at a time and added a team check (and a NOT toggle for the team).")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()
	
	
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
	
	
			local speeds = {}
			speeds.walkspeed = 30
			speeds.flyspeed = 300
			mainframe["1speedv2"].Text = tostring(speeds.walkspeed)
	
			local plrs = game.Players
			local lplr = plrs.LocalPlayer
			local mouse = lplr:GetMouse()
			local jewel = workspace.Jewelrys:FindFirstChildOfClass("Model")
			local bank = workspace.Banks:FindFirstChildOfClass("Model")
			local minimap = lplr.PlayerGui.AppUI.Buttons.Minimap.Map.Container.Points
			lplr.CameraMaxZoomDistance = 200
			
			thread(function()
				while true do
					for i, plr in pairs(minimap:GetChildren()) do
						plr.Visible = true
					end
					task.wait()
				end
			end)
	
			lplr.PlayerGui.AppUI.ChildAdded:connect(function(c)
				if c.Name == "Minimap" then
					c:WaitForChild("Map"):WaitForChild("Container"):WaitForChild("Points")
					local minimap2 = c.Map.Container.Points
					local destroyed = false
					
					thread(function()
						while not destroyed do
							for i,v in pairs(minimap2:GetChildren()) do
								if v.ClassName == "ImageLabel" then
									v.Visible = true
								end
							end
							task.wait()
						end
					end)
					
					local removed
					removed = lplr.PlayerGui.AppUI.ChildRemoved:connect(function(c2)
						if c == c2 then
							removed:Disconnect()
							destroyed = true
						end
					end)
				end
			end)
	
			local plrgui = lplr.PlayerGui
			
			runservice.RenderStepped:connect(function()
				if lplr.Character and lplr.Character:FindFirstChild("Humanoid") then
					if lplr.Character.Humanoid.WalkSpeed == 0 then
						lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
					end
				end
			end)
	
			Changed(lplr, "Team", function(team)
				if team == game.Teams.Criminal then
					local fire = fireclickdetector
					if fire ~= nil then
						fire(workspace.ClothingRacks.ClothingRack.Hitbox.ClickDetector)
					end
				end
			end)
	
			mainframe.GravToggle.Text = "Gravity Toggle ("..tostring(math.floor(workspace.Gravity))..")"
	
			Changed(workspace, "Gravity", function(grav)
				mainframe.GravToggle.Text = "Gravity Toggle ("..tostring(grav)..")"
			end)
	
			mainframe.GravToggle.Activated:connect(function()
				if math.floor(workspace.Gravity) == 196 then
					workspace.Gravity = 0
				else
					workspace.Gravity = 196
				end
			end)
	
			local aimpredict = false
			local triggerbot = false
			local releaseonuntarget = false
			singleclick(mainframe.aimbot, function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/Aimbot.lua"))()
	
				repeat task.wait() until RedsAimbotMisc
				local vel2 = Vector3.new()
				local misc = RedsAimbotMisc
				runservice.RenderStepped:connect(function()
					pcall(function()
						if misc.TargetedCharacter then
							local targetedchr = misc.TargetedCharacter
							local tool
							local speed
							local fireauto
							local gun
							for i,v in pairs(lplr.Folder:GetChildren()) do
								local attribute = v:GetAttribute("InventoryItemEquipped")
								if attribute == true then
									tool = v.Name
									break
								end
							end
							if tool then
								if itemconfig:FindFirstChild(tool) then
									gun = require(itemconfig[tool])
									speed = gun.BulletSpeed
									fireauto = gun.FireAuto
								end
							else
								misc.aimoffset = Vector3.new()
							end
							if speed and aimpredict then
								local velocity = targetedchr.Humanoid.RootPart.Velocity
								if velocity.Magnitude < 1 then
									velocity = vel2
								end
								local distance = (lplr.Character.Humanoid.RootPart.Position - targetedchr.Humanoid.RootPart.Position).Magnitude
								misc.aimoffset = (velocity/speed)*distance
							else
								misc.aimoffset = Vector3.new()
							end
							if triggerbot then
								if gun then
									task.wait(0.05)
									if fireauto then
										releaseonuntarget = true
										mouse1press()
									else
										mouse1press()
										mouse1release()
									end
								end
							end
						else
							if releaseonuntarget then
								mouse1release()
								releaseonuntarget = false
							end
						end
					end)
				end)
				
				Changed(misc, "TargetedCharacter", function(chr)
					if chr then
						local change
						change = Changed(chr.Humanoid.RootPart, "CFrame", function(new,old)
							vel2 = (old-new).Position
							if misc.TargetedCharacter ~= chr then
								change.Stop()
								vel2 = Vector3.new()
							end
						end)
					end
				end)
	
				mainframe.aimpredictor.Visible = true
				mainframe.aimtriggerbot.Visible = true
	
				mainframe.aimpredictor.Activated:connect(function()
					aimpredict = not aimpredict
				end)
	
				mainframe.aimtriggerbot.Activated:connect(function()
					triggerbot = not triggerbot
				end)
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
				Line.Color = part.Parent.Post.Color
				Line.Thickness = 2
				Line.Transparency = 1
	
				local pointfunction = runservice.Heartbeat:connect(function()
					if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character.Humanoid.RootPart then
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
					end
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
							local stringnum = tostring(n)  
							local str = ""
	
							for i = 1, stringnum:len() do
								local revi = math.abs(i-stringnum:len())
								str = str..stringnum:sub(i,i)
								if revi/3 == math.floor(revi/3) then
									str = str..","
								end
							end 
	
							if str:sub(str:len()) == "," then
								str = str:sub(1, str:len()-1)
							end
							return str
						end
	
						local distancefunc = runservice.RenderStepped:connect(function()
							TextButton.Text = "Crate | Distance: "..FormatNumber(math.floor(lplr:DistanceFromCharacter(Airdrop.Position)))
						end)
						
						coroutine.resume(coroutine.create(function()
							repeat task.wait() until GetFamily(child)[1] ~= game
							table.remove(bbguis, table.find(bbguis, BillboardGui))
							distancefunc:Disconnect()
						end))
	
					end
				end))
			end
	
			for i,v in pairs(workspace:GetChildren()) do
				gui(v)
			end
	
			workspace.ChildAdded:connect(gui)
	
			mainframe.CrateEsp.Activated:connect(function()
				props.pointers = not props.pointers
				props.guitext = props.pointers
			end)
	
			local function changegunstats(Table)
				for i,v in pairs(itemconfig:GetChildren()) do
					pcall(function()
						local gun = require(v)
						if v.Name == "Shotgun" then
							gun.BulletSpread = 0.02
						end
	
						for index, value in pairs(Table) do
							gun[index] = value
						end
					end)
				end
			end
	
			singleclick(mainframe.modguns, function()
				notify("Removed recoil + all guns fire automatically (also decreased grenade fuse time)")
				changegunstats({["CamShakeMagnitude"] = 0,["FireAuto"] = true})
				local g = require(itemconfig.Grenade)
				g.ReloadTime = 0
				g.FuseTime = 0.8
			end)
			
			singleclick(mainframe.modguns, function()
				local m = require(rstorage.Inventory.InventoryItemSystem)
				for i,v in pairs(m._equipConditions) do
					m._equipConditions[i] = function(...)
						return true
					end
				end
				for i,v in pairs(m._unequipConditions) do
					m._unequipConditions[i] = function(...)
						return true
					end
				end
			end)
			
			local singlebullet = false
			mainframe.modshotgun.Activated:connect(function()
				local shotgun = require(itemconfig.Shotgun)
				singlebullet = not singlebullet
				if singlebullet then
					shotgun.BulletSpread = 0
				else
					shotgun.BulletSpread = 0.02
				end
			end)
	
			singleclick(mainframe.forcedaytime, function()
				game.Lighting.ClockTime = 12
	
				Changed(game.Lighting, "ClockTime", function()
					game.Lighting.ClockTime = 12
				end)
	
			end)
	
			singleclick(mainframe.holdebypass, function()
				local moduleui = require(rstorage.Module.UI)
				local nameavoid = {"grab documents",
					"grab computer",
					"grab briefcase",
					"grab phone",
					"grab spyglasses",
					"grab Cash",
					"rob",
					"open crate",
					"place tnt",
					"disable security"
				}
			
				game.RunService.Heartbeat:connect(function()
					for i,a in pairs(moduleui.CircleAction.Specs) do
						local function name()
							if a.Name then
								return a.Name:lower()
							else
								return ""
							end
						end
						if a.Duration and not table.find(nameavoid, name()) then
							a.Timed = false
						end
					end
				end)
			
				notify("Hold E Bypass enabled. Cannot be used with the following: donut shop, gas station, air drops, passenger train items, and oil rig dynamite.")
			end)
	
	
			singleclick(mainframe["1speed"], function()
				mainframe["1speed"].Visible = false
				mainframe["1speedv2"].Visible = true
	
				runservice.RenderStepped:connect(function()
					if lplr.Character and lplr.Character:FindFirstChild("Humanoid") then
						lplr.Character.Humanoid.WalkSpeed = speeds.walkspeed
					end
				end)
	
				notify("To edit your walkspeed, scroll up/down on the number in the textbox (max 150).")
	
				mainframe["1speedv2"].MouseWheelForward:connect(function()
					speeds.walkspeed = speeds.walkspeed + 5
				end)
	
				mainframe["1speedv2"].MouseWheelBackward:connect(function()
					speeds.walkspeed = speeds.walkspeed - 5
					mainframe.ScrollingEnabled = false
					delay(0.2, function()
						mainframe.ScrollingEnabled = true
					end)
				end)
	
	
	
				Changed(speeds, "walkspeed", function(num)
					if num > 150 then
						speeds.walkspeed = 150
					end
					if num < 0 then
						speeds.walkspeed = 0
					end
					mainframe["1speedv2"].Text = tostring(speeds.walkspeed)
				end)
	
				Changed(mainframe["1speedv2"], "Text", function(txt)
					if tonumber(txt) then
						speeds.walkspeed = tonumber(txt)
					end
				end)
			end)
	
			local trainrob = true
			local banktruck = true
	
			singleclick(mainframe.RobberyNotifier, function()
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
				IconIds["oil rig"] = "15617962600"
	
				for i,v in pairs(plrgui.WorldMarkersGui:GetChildren()) do
	
					for i2, v2 in pairs(v:GetChildren()) do
	
						for name, id in pairs(IconIds) do
	
							if v2.ImageLabel.Image == "rbxassetid://"..id then
	
								Changed(v2, "ImageColor3", function(color)
									if color == Color3.new(0,1,0) then
										if name == "bank truck" then
											if banktruck then
												banktruck = false
												notify("The bank truck is open.")
											end
										else
											notify("The "..name.." is open for robbery.")
										end
									else 
										if name == "bank truck" then
											banktruck = true
										end
									end
								end)
	
							end
	
						end
	
					end
	
				end
	
				plrgui.WorldMarkersGui.ChildAdded:connect(function(marker)
					marker:WaitForChild("ImageLabel"):WaitForChild("ImageLabel")
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
								if marker.ImageLabel.ImageColor3 == Color3.new(0,1,0) then
									if i == "bank truck" then
										if banktruck then
											banktruck = false
											notify("The bank truck is open.")
										end
									else
										notify("The "..i.." is open for robbery.")
									end
								else 
									if i == "bank truck" then
										banktruck = true
									end
								end
							end
						end
					end
				end)
			end)
	
			singleclick(mainframe.infiniteyeet, function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			end)
	
			singleclick(mainframe.removeragdoll, function()
				require(rstorage.Module.AlexRagdoll).Ragdoll = nil
				require(rstorage.Game.Falling).StartRagdolling = nil
				notify("Removed ragdolling. (WARNING: in some cases you will still take fall damage)")
			end)
			
			local gunshoptp = false
			runservice.Heartbeat:connect(function()
				if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and gunshoptp then
					local hrp = lplr.Character.Humanoid.RootPart
					if hrp then
						hrp.CFrame = CFrame.new() + Vector3.new(-1124.7, 18.9, -1660.5)
					end
				end
			end)
	
			mainframe.gunshoptp.Activated:connect(function()
				gunshoptp = not gunshoptp
			end)
	
			local uiservice = game.UserInputService
			local vehicle = require(rstorage.Vehicle.VehicleUtils)
			local getmodel = vehicle.GetLocalVehicleModel
			local getseats = vehicle.getSeats
			local togglelock = vehicle.toggleLocalLocked
			local onexit = vehicle.OnVehicleJumpExited._handlerListHead
			local exitfn = onexit._fn
	
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
	
			singleclick(mainframe["1flyhack"], function()
				mainframe["1flyhackv2"].Visible = true
				mainframe["1flyhack"].Visible = false
				-- actual fly script
				local flying = false
				local maxdistance = 100000000000000
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
				local vpart = Instance.new("Part", workspace)
				vpart.Material = Enum.Material.SmoothPlastic
				vpart.Size = Vector3.new(2,2,2)
				vpart.Transparency = 1
				vpart.Anchored = false
				vpart.CanCollide = false
				local rope = Instance.new("RopeConstraint", part)
				rope.Length = 3
				local function getattachment(p)
					if not p:FindFirstChild("Attachment") then
						Instance.new("Attachment", p)
					end
					return p.Attachment
				end
				rope.Attachment0 = getattachment(vpart)
	
				runservice.Heartbeat:connect(function()
					local hrp
					local flyspeed = speeds.flyspeed
					local invehicle = getmodel()
					if invehicle and isdriver() then
						hrp = invehicle.PrimaryPart
					else
						if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character.Humanoid.RootPart then
							hrp = lplr.Character.Humanoid.RootPart
						end
						if flyspeed > 150 then
							flyspeed = 150
						end
					end
					if hrp then
						local frontoffset = CFrame.new() + Vector3.new(0,0,-maxdistance)
						local backoffset = CFrame.new() + Vector3.new(0,0,maxdistance)
						local leftoffset = CFrame.new() + Vector3.new(-maxdistance,0,0)
						local rightoffset = CFrame.new() + Vector3.new(maxdistance,0,0)
						local upoffset = CFrame.new() + Vector3.new(0,maxdistance,0)
						local downoffset = CFrame.new() + Vector3.new(0,-maxdistance,0)
						local velocity = Vector3.new()
						if flying then
							hrp.RotVelocity = Vector3.new()
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
							hrp.CFrame = CFrame.new(hrp.Position, (workspace.CurrentCamera.CFrame*frontoffset).Position)
						end
						if flying and not keys.w_active and not keys.a_active and not keys.s_active and not keys.d_active and not keys.q_active and not keys.e_active then
							hrp.CFrame = CFrame.new(pos, (workspace.CurrentCamera.CFrame*frontoffset).Position)
							hrp.Velocity = Vector3.new()
						else
							pos = hrp.Position
						end
					end
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
					if num > 600 then
						speeds.flyspeed = 600
					end
					if num < 0 then
						speeds.flyspeed = 0
					end
					mainframe["1flyhackv2"].Text = tostring(speeds.flyspeed)
				end)
	
				mainframe["1flyhackv2"].MouseWheelForward:connect(function()
					speeds.flyspeed = speeds.flyspeed + 20
				end)
	
				mainframe["1flyhackv2"].MouseWheelBackward:connect(function()
					speeds.flyspeed = speeds.flyspeed - 20
					mainframe.ScrollingEnabled = false
					delay(0.2, function()
						mainframe.ScrollingEnabled = true
					end)
				end)
	
				Changed(mainframe["1flyhackv2"], "Text", function(txt)
					if tonumber(txt) then
						speeds.flyspeed = tonumber(txt)
					end
				end)
	
				notify("Fly hack enabled! Caps at 150 if you're flying without a vehicle.")
			end)
	
	
			singleclick(mainframe.keybypass, function()
				require(rstorage.Game.PlayerUtils).hasKey = function()
					return true
				end
			end)
	
			local ctxt = mainframe.AAAAA.Text
			local closedtxt = "Casino is currently closed"
	
			runservice.RenderStepped:connect(function()
				if workspace:FindFirstChild("Casino") and workspace.Casino:FindFirstChild("RobberyDoor") and workspace.Casino.RobberyDoor:FindFirstChild("Codes") then
					local codes = workspace.Casino.RobberyDoor.Codes
					local isopen = workspace.Casino:GetAttribute("CasinoRobberyOpen")
					
					if isopen then
						if mainframe.AAAAA.Text == closedtxt or mainframe.AAAAA.Text == "Casino building isn't loaded in :(" then
							local code
							for i,v in pairs(codes:GetChildren()) do
								if v:FindFirstChildOfClass("Part").SurfaceGui.TextLabel.Text ~= "" then
									code = v
									break
								end
							end
	
							local txt = ""
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
							if txt ~= txt:reverse() then
								mainframe.AAAAA.Text = ctxt.." "..txt.." (or "..txt:reverse()..")"
							else
								mainframe.AAAAA.Text = ctxt.." "..txt
							end
						end
					else
						mainframe.AAAAA.Text = closedtxt
					end
				else
					mainframe.AAAAA.Text = "Casino building isn't loaded in :("
				end
			end)
			local respawnconfirm = false
			local respawntxt = mainframe.respawn.Text
	
			mainframe.respawn.Activated:connect(function()
				if respawnconfirm then
					lplr.Character.Humanoid.Health = 0
				end
				if not respawnconfirm then
					respawnconfirm = true
					mainframe.respawn.Text = respawntxt.." (you sure?)"
					wait(2)
					respawnconfirm = false
					mainframe.respawn.Text = respawntxt
				end
			end)
	
			singleclick(mainframe.delradio, function()		
				runservice.RenderStepped:connect(function()
					if lplr.PlayerGui:FindFirstChild("RadioGui") then
						lplr.PlayerGui.RadioGui:Destroy()
					end
				end)
	
				notify("fuck this stupid gui")
			end)
	
			local vmod = false
			local vmodtoggle = false
	
	
			mainframe.lockonexit.Activated:connect(function()
				if not vmod then 
					vmod = true
	
					local function iscarlocked()
						local idk, icon = pcall(function()
							return lplr.PlayerGui.AppUI.Speedometer.Top.Lock.Icon.Image -- the speedometer thing is destroyed when you exit a vehicle
						end)
						if idk then
							return icon ~= "rbxassetid://5928936296"
						end
					end
	
					onexit._fn = function(...)
						if isdriver() and not iscarlocked() and vmodtoggle then
							togglelock()
						end
						return exitfn(...)
					end
	
				end
				vmodtoggle = not vmodtoggle
			end)
	
			singleclick(mainframe.Tazermod, function()
				local function hasval(t, child)
					local success, prop = pcall(function()
						return t[child]
					end)
					return success and prop ~= nil
				end
	
				for i,v in pairs(getreg()) do
					if type(v) == "table" then
						if isreadonly and setreadonly and isreadonly(v) then
							setreadonly(v, false)
						end
						if hasval(v, "ReloadTime") and hasval(v, "ReloadTimeHit") and type(v.ReloadTime) == "number" and type(v.ReloadTimeHit) == "number" then
							v.ReloadTime = 0
							v.ReloadTimeHit = 0
						end
					end
				end
			end)
	
			local ropefollow = false
			local ropepart = nil
			local ropenotif = false
	
			mainframe.ropefollow.Activated:connect(function()
				ropefollow = not ropefollow
				if not ropefollow then
					ropepart = nil
					local model = vehicle.GetLocalVehicleModel()
					if model:FindFirstChild("Winch") and model.Winch:FindFirstChild("RopeConstraint") then
						model.Winch.RopeConstraint.Length = 30
					end
				end
				if not ropenotif then
					ropenotif = true
					notify("Click on a vehicle (or cargo plane crate) to follow it with a rope.")
				end
			end)
	
			runservice.Heartbeat:connect(function()
				pcall(function()
					local model = vehicle.GetLocalVehicleModel()
					if model and ropefollow and ropepart and ropepart ~= model then
						if model:FindFirstChild("Preset") and model.Preset:FindFirstChild("RopePull") then
							local modelrope = model.Winch.RopeConstraint
							local ropepull = model.Preset.RopePull
							if ropepart.Parent == workspace.Vehicles then
	
								if ropepull.AttachedTo.Value then
									modelrope.Length = math.max(modelrope.Length-(task.wait()*100),30)
								else
									modelrope.Length = (model.PrimaryPart.Position - ropepart.PrimaryPart.Position).Magnitude
									ropepull.CFrame = ropepart.PrimaryPart.CFrame
								end
							else
								if ropepull.AttachedTo.Value then
									modelrope.Length = math.max(modelrope.Length-(task.wait()*100),30)
								else
									modelrope.Length = (model.PrimaryPart.Position - ropepart.MeshPart.Position).Magnitude
									ropepull.CFrame = ropepart.MeshPart.CFrame
								end
							end
						end
					end
				end)
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
			local teamnames = {}
	
			for i,v in pairs(rstorage.Game.Item:GetChildren()) do 
				table.insert(items, v.Name)
			end
			
			for i,v in pairs(game.Teams:GetTeams()) do
				if not table.find(teamnames, v.Name) then
					table.insert(teamnames, v.Name)
				end
			end
	
			local function saveloadouts()
				if writefile then
					writefile(file, TableToString(loadouts, "Loadouts"))
				end
			end
	
			local function addloadout(name)
				if not loadouts[name] then
					loadouts[name] = {}
					loadouts[name].active = false
					loadouts[name].items = {}
					loadouts[name].teamname = ""
					loadouts[name].NOT = false
				end
				local loadout = loadouts[name]
				if not loadout.teamname then
					loadout.teamname = ""
					loadout.NOT = false
				end
				local clone = autosortframe.loadoutframe:Clone()
				clone.Parent = autosortframe
				clone.Visible = true
				clone.Title.Text = name
				clone.active.Text = "Active ("..tostring(loadout.active)..")"
				if loadout.active then 
					clone.active.TextColor3 = Color3.fromRGB(85,255,255)
				end
				clone.teamname.team.Text = loadout.teamname
				if loadout.NOT then 
					clone.teamname.NOT.TextColor3 = Color3.fromRGB(85,255,255)
				end
	
				local function updateloadout()
					loadout.items = {}
	
					for i,v in pairs(clone:GetChildren()) do 
						if v.Name == "itemframe" and table.find(items, v.itemname.Text) and tonumber(v.slotnum.Text) then
							loadout.items[v.itemname.Text] = tonumber(v.slotnum.Text)
						end
					end
	
					saveloadouts()
				end
	
				clone.active.Activated:connect(function()
					loadout.active = not loadout.active
				end)
	
				Changed(loadout, "active", function(val)
					if val then
						clone.active.TextColor3 = Color3.fromRGB(85,255,255)
					else
						clone.active.TextColor3 = Color3.new(0.66,0,0)
					end
					clone.active.Text = "Active ("..tostring(val)..")"
					saveloadouts()
				end)
				
				clone.teamname.NOT.Activated:connect(function()
					loadout.NOT = not loadout.NOT
					if loadout.NOT then
						clone.teamname.NOT.TextColor3 = Color3.fromRGB(85,255,255)
					else
						clone.teamname.NOT.TextColor3 = Color3.new(0.66,0,0)
					end
					saveloadouts()
				end)
				
				clone.teamname.team.FocusLost:connect(saveloadouts)
				Changed(clone.teamname.team, "Text", function(txt)
					local teams2 = {}
	
					for i,v in pairs(teamnames) do
						if v:lower():sub(1, txt:len()) == txt:lower() then
							table.insert(teams2, v)
						end
					end
	
					if #teams2 == 1 then
						clone.teamname.team.Text = teams2[1]
						loadout.teamname = teams2[1]
						clone.teamname.team:ReleaseFocus()
					end
				end)
	
				local function additem(txt,txt2)
					txt = txt or ""
					txt2 = txt2 or ""
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
							itemclone.itemname:ReleaseFocus()
						end
					end)
	
					itemclone.x.Activated:connect(function()
						itemclone:Destroy()
						updateloadout()
					end)
	
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
	
				valuesort(loadout.items, function(i,v)
					additem(i, tostring(v))
				end)
	
				clone.additem.Activated:connect(additem)
	
				clone.Title.delloadout.Activated:connect(function()
	
					for i,v in pairs(loadouts) do
						if i == clone.Title.Text then
							loadouts[i] = nil
						end
					end
	
					clone:Destroy()
					saveloadouts()
				end)
			end
	
			for i,v in pairs(loadouts) do
				addloadout(i)
			end
	
			aframe.addloadout.Activated:connect(function()
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
	
			aframe.hide.Activated:connect(function()
				aframe.Visible = false
			end)
	
			local hb = require(rstorage.Hotbar.HotbarItemUtils)
			local setorder = hb.setDisplayOrder
			local getorder = hb.getDisplayOrder
	
			runservice.Heartbeat:connect(function()
				pcall(function()
					local loadout
					for i,v in pairs(loadouts) do
						local function teamcheck()
							if v.teamname ~= "" then
								if v.NOT then
									return v.teamname ~= lplr.Team.Name
								else
									return v.teamname == lplr.Team.Name
								end
							else
								return true
							end
						end
						if v.active and teamcheck() then
							loadout = v.items
							local folder = lplr:FindFirstChild("Folder")
							if folder then
								local folitems = folder:GetChildren()
								for item, pos in pairs(loadout) do
									for i, item2 in pairs(folitems) do
										if getorder(item2) == pos and item2.Name ~= item and folder:FindFirstChild(item) then
											setorder(item2, #folitems+1)
										end
										if folder:FindFirstChild(item) then
											setorder(folder[item], pos)
										end
									end
								end
							end
						end
					end
				end)
			end)
	
			mainframe.Hotbarautosort.Activated:connect(function()
				aframe.Visible = true
			end)
	
			local para = require(rstorage.Game.Paraglide)
			local gtoglide = false
			local parachute = para.Parachute
	
			uiservice.InputBegan:connect(function(inp, proc)
				if proc then return end
				if inp.KeyCode == Enum.KeyCode.G and gtoglide then
					para.Glider()
				end
			end)
	
			mainframe.glidekey.Activated:connect(function()
				gtoglide = not gtoglide
			end)
	
			local replacechute = false
	
			para.Parachute = function(...)
				if replacechute then
					return para.Glider(...)
				else
					return parachute(...)
				end
			end
	
			mainframe.replaceparachute.Activated:connect(function()
				replacechute = not replacechute
			end)
			local gunmodule = require(rstorage.Game.Item.Gun)
			singleclick(mainframe.DisableNPCGuns, function()
				local shoot = gunmodule.Shoot
	
				gunmodule.Shoot = function(...)
					local t = {...}
					t = t[1]
					if plrs:FindFirstChild(t.Humanoid.Parent.Name) then
						return shoot(...)
					end
				end
				notify("NPCs may still shoot if another player is nearby you (server-sided shid)")
			end)
	
			local shootThruWalls = false
			mainframe.wallhack.Activated:connect(function()
				shootThruWalls = not shootThruWalls
			end)
	
			singleclick(mainframe.wallhack, function()
				local ignore = {"MansionRobbery", "Drop"}
				local children = {}
	
				local function dropignore(drop)
					if drop.Name == "Drop" then
						for i,v in pairs(drop:GetChildren()) do
							if v.Name ~= "NPCs" then
								table.insert(children, v)
							end
						end
						local removed
						removed = workspace.ChildRemoved:connect(function(c)
							if c == drop then
								removed:Disconnect()
								for i,v in pairs(c:GetChildren()) do
									local tfind = table.find(children, v)
									if tfind then
										table.remove(children, tfind)
									end
								end
							end
						end)
					end
				end
	
				for i,v in pairs(workspace:GetChildren()) do
					if not table.find(ignore, v.Name) and not plrs:GetPlayerFromCharacter(v) then
						table.insert(children, v)
						dropignore(v)
					end
				end
	
				workspace.ChildAdded:connect(function(c)
					if not table.find(ignore, c.Name) and not plrs:GetPlayerFromCharacter(c) then
						table.insert(children, c)
						dropignore(c)
					end
				end)
	
				workspace.ChildRemoved:connect(function(c)
					local findchild = table.find(children, c)
					if findchild then
						table.remove(children, findchild)
					end
				end)
	
				for i,v in pairs(workspace.MansionRobbery:GetChildren()) do
					if v.Name ~= "ActiveBoss" and v.Name ~= "GuardsFolder" then
						table.insert(children, v)
					end
				end
	
				local function getequippeditem()
					for i,v in pairs(lplr.Folder:GetChildren()) do
						if v:GetAttribute("InventoryItemEquipped") == true then
							return v.Name
						end
					end
				end
	
				local shoot = gunmodule.Shoot
	
				gunmodule.Shoot = function(...)
					local args = {...}
					local main = args[1]
					if getequippeditem() ~= "PlasmaPistol" then
						for i,v in pairs(children) do
							if not table.find(main.BulletEmitter.IgnoreList, v) and shootThruWalls and main.Humanoid == lplr.Character.Humanoid then
								table.insert(main.BulletEmitter.IgnoreList, v)
							end
						end
					end
					return shoot(...)
				end
				notify("Sometimes the plasma pistol will just not hit enemies at all, so the wallhack will not work with that gun specifically")
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
coroutine.wrap(SYWYE_fake_script)()
