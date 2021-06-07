-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local PokemonHaxlol = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ChatTroll = Instance.new("TextButton")
local StatChanger = Instance.new("TextButton")
local Pokeballhack = Instance.new("TextButton")
local ChatEXPHaxx = Instance.new("TextButton")
local RemoveSaveCooldown = Instance.new("TextButton")
local Fillpokedex = Instance.new("TextButton")
local X = Instance.new("TextButton")
local ChatHackFrame = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local chatcolor = Instance.new("TextLabel")
local Red = Instance.new("TextBox")
local Green = Instance.new("TextBox")
local Blue = Instance.new("TextBox")
local chatprefix = Instance.new("TextLabel")
local prefix = Instance.new("TextBox")
local autodetectplayers = Instance.new("TextButton")
local message = Instance.new("TextBox")
local hide = Instance.new("TextButton")
local postmessage = Instance.new("TextButton")
local Stat = Instance.new("Frame")
local Line = Instance.new("Frame")
local PP = Instance.new("TextBox")
local Accuracy = Instance.new("TextBox")
local Power = Instance.new("TextBox")
local CritChance = Instance.new("TextBox")
local MoveName = Instance.new("TextBox")
local PokemonName = Instance.new("TextBox")
local Atk = Instance.new("TextBox")
local Def = Instance.new("TextBox")
local HP = Instance.new("TextBox")
local Speed = Instance.new("TextBox")
local SpA = Instance.new("TextBox")
local SpD = Instance.new("TextBox")
local ChangeMove = Instance.new("TextButton")
local ChangePokemon = Instance.new("TextButton")
local Hide = Instance.new("TextButton")
local WarningFrame = Instance.new("Frame")
local txt = Instance.new("TextLabel")
local yes = Instance.new("TextButton")
local no = Instance.new("TextButton")
--Properties:
PokemonHaxlol.Name = "PokemonHaxlol"
PokemonHaxlol.Parent = game.CoreGui
PokemonHaxlol.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = PokemonHaxlol
MainFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
MainFrame.BorderColor3 = Color3.new(0, 0, 0)
MainFrame.Position = UDim2.new(0.334553421, 0, 0.0885416716, 0)
MainFrame.Size = UDim2.new(0, 423, 0, 231)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.Size = UDim2.new(0, 366, 0, 57)
Title.Font = Enum.Font.Code
Title.Text = "Different game, same terrible anti-cheat lmao"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

ChatTroll.Name = "ChatTroll"
ChatTroll.Parent = MainFrame
ChatTroll.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ChatTroll.BorderColor3 = Color3.new(0, 0, 0)
ChatTroll.Position = UDim2.new(0, 0, 0.424242377, 0)
ChatTroll.Size = UDim2.new(0, 211, 0, 41)
ChatTroll.Font = Enum.Font.Code
ChatTroll.Text = "Chat Troll UI"
ChatTroll.TextColor3 = Color3.new(1, 1, 1)
ChatTroll.TextScaled = true
ChatTroll.TextSize = 14
ChatTroll.TextWrapped = true

StatChanger.Name = "StatChanger"
StatChanger.Parent = MainFrame
StatChanger.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
StatChanger.BorderColor3 = Color3.new(0, 0, 0)
StatChanger.Position = UDim2.new(0.5, 0, 0.424242377, 0)
StatChanger.Size = UDim2.new(0, 211, 0, 41)
StatChanger.Font = Enum.Font.Code
StatChanger.Text = "Pokemon & Move Stat Changer"
StatChanger.TextColor3 = Color3.new(1, 1, 1)
StatChanger.TextScaled = true
StatChanger.TextSize = 14
StatChanger.TextWrapped = true

Pokeballhack.Name = "Pokeballhack"
Pokeballhack.Parent = MainFrame
Pokeballhack.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Pokeballhack.BorderColor3 = Color3.new(0, 0, 0)
Pokeballhack.Position = UDim2.new(0, 0, 0.248549819, 0)
Pokeballhack.Size = UDim2.new(0, 211, 0, 41)
Pokeballhack.Font = Enum.Font.Code
Pokeballhack.Text = "Make Pokeballs act like Masterballs lol"
Pokeballhack.TextColor3 = Color3.new(1, 1, 1)
Pokeballhack.TextScaled = true
Pokeballhack.TextSize = 14
Pokeballhack.TextWrapped = true

ChatEXPHaxx.Name = "ChatEXPHaxx"
ChatEXPHaxx.Parent = MainFrame
ChatEXPHaxx.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ChatEXPHaxx.BorderColor3 = Color3.new(0, 0, 0)
ChatEXPHaxx.Position = UDim2.new(0.5, 0, 0.248549789, 0)
ChatEXPHaxx.Size = UDim2.new(0, 211, 0, 41)
ChatEXPHaxx.ZIndex = 2
ChatEXPHaxx.Font = Enum.Font.Code
ChatEXPHaxx.Text = "Insta-Lvl Chat Hack"
ChatEXPHaxx.TextColor3 = Color3.new(1, 1, 1)
ChatEXPHaxx.TextScaled = true
ChatEXPHaxx.TextSize = 14
ChatEXPHaxx.TextWrapped = true

RemoveSaveCooldown.Name = "RemoveSaveCooldown"
RemoveSaveCooldown.Parent = MainFrame
RemoveSaveCooldown.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
RemoveSaveCooldown.BorderColor3 = Color3.new(0, 0, 0)
RemoveSaveCooldown.Position = UDim2.new(0, 0, 0.601731598, 0)
RemoveSaveCooldown.Size = UDim2.new(0, 211, 0, 41)
RemoveSaveCooldown.Font = Enum.Font.Code
RemoveSaveCooldown.Text = "Remove Save Cooldown"
RemoveSaveCooldown.TextColor3 = Color3.new(1, 1, 1)
RemoveSaveCooldown.TextScaled = true
RemoveSaveCooldown.TextSize = 14
RemoveSaveCooldown.TextWrapped = true

Fillpokedex.Name = "Fillpokedex"
Fillpokedex.Parent = MainFrame
Fillpokedex.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Fillpokedex.BorderColor3 = Color3.new(0, 0, 0)
Fillpokedex.Position = UDim2.new(0.50118202, 0, 0.601731539, 0)
Fillpokedex.Size = UDim2.new(0, 211, 0, 41)
Fillpokedex.Font = Enum.Font.Code
Fillpokedex.Text = "Fill Pokedex"
Fillpokedex.TextColor3 = Color3.new(1, 1, 1)
Fillpokedex.TextScaled = true
Fillpokedex.TextSize = 14
Fillpokedex.TextWrapped = true

X.Name = "X"
X.Parent = MainFrame
X.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
X.BorderColor3 = Color3.new(0, 0, 0)
X.Position = UDim2.new(0.865248203, 0, -3.30276819e-08, 0)
X.Size = UDim2.new(0, 57, 0, 57)
X.Font = Enum.Font.Code
X.Text = "×"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

ChatHackFrame.Name = "ChatHackFrame"
ChatHackFrame.Parent = PokemonHaxlol
ChatHackFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ChatHackFrame.BorderColor3 = Color3.new(0, 0, 0)
ChatHackFrame.Position = UDim2.new(0.0235695466, 0, 0.103750005, 0)
ChatHackFrame.Size = UDim2.new(0, 352, 0, 311)
ChatHackFrame.Visible = false

Title_2.Name = "Title"
Title_2.Parent = ChatHackFrame
Title_2.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Title_2.BorderColor3 = Color3.new(0, 0, 0)
Title_2.Size = UDim2.new(0, 352, 0, 49)
Title_2.Font = Enum.Font.Code
Title_2.Text = "Chat Hack UI"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.TextScaled = true
Title_2.TextSize = 14
Title_2.TextWrapped = true

chatcolor.Name = "chatcolor"
chatcolor.Parent = ChatHackFrame
chatcolor.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
chatcolor.BorderColor3 = Color3.new(0, 0, 0)
chatcolor.Position = UDim2.new(0, 0, 0.157556295, 0)
chatcolor.Size = UDim2.new(0, 88, 0, 50)
chatcolor.Font = Enum.Font.Code
chatcolor.Text = "Edit Chat Color:"
chatcolor.TextColor3 = Color3.new(1, 1, 1)
chatcolor.TextScaled = true
chatcolor.TextSize = 14
chatcolor.TextWrapped = true

Red.Name = "Red"
Red.Parent = ChatHackFrame
Red.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Red.BorderColor3 = Color3.new(0, 0, 0)
Red.Position = UDim2.new(0.246547461, 0, 0.157556295, 0)
Red.Size = UDim2.new(0, 88, 0, 50)
Red.Font = Enum.Font.Code
Red.PlaceholderColor3 = Color3.new(1, 1, 1)
Red.PlaceholderText = "Red Number"
Red.Text = ""
Red.TextColor3 = Color3.new(1, 1, 1)
Red.TextScaled = true
Red.TextSize = 14
Red.TextWrapped = true

Green.Name = "Green"
Green.Parent = ChatHackFrame
Green.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Green.BorderColor3 = Color3.new(0, 0, 0)
Green.Position = UDim2.new(0.499388367, 0, 0.157556295, 0)
Green.Size = UDim2.new(0, 88, 0, 50)
Green.Font = Enum.Font.Code
Green.PlaceholderColor3 = Color3.new(1, 1, 1)
Green.PlaceholderText = "Green Number"
Green.Text = ""
Green.TextColor3 = Color3.new(1, 1, 1)
Green.TextScaled = true
Green.TextSize = 14
Green.TextWrapped = true

Blue.Name = "Blue"
Blue.Parent = ChatHackFrame
Blue.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Blue.BorderColor3 = Color3.new(0, 0, 0)
Blue.Position = UDim2.new(0.749388337, 0, 0.157556295, 0)
Blue.Size = UDim2.new(0, 88, 0, 50)
Blue.Font = Enum.Font.Code
Blue.PlaceholderColor3 = Color3.new(1, 1, 1)
Blue.PlaceholderText = "Blue Number"
Blue.Text = ""
Blue.TextColor3 = Color3.new(1, 1, 1)
Blue.TextScaled = true
Blue.TextSize = 14
Blue.TextWrapped = true

chatprefix.Name = "chatprefix"
chatprefix.Parent = ChatHackFrame
chatprefix.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
chatprefix.BorderColor3 = Color3.new(0, 0, 0)
chatprefix.Position = UDim2.new(0, 0, 0.323000014, 0)
chatprefix.Size = UDim2.new(0, 64, 0, 50)
chatprefix.Font = Enum.Font.Code
chatprefix.Text = "Chat Prefix:"
chatprefix.TextColor3 = Color3.new(1, 1, 1)
chatprefix.TextScaled = true
chatprefix.TextSize = 14
chatprefix.TextWrapped = true

prefix.Name = "prefix"
prefix.Parent = ChatHackFrame
prefix.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
prefix.BorderColor3 = Color3.new(0, 0, 0)
prefix.Position = UDim2.new(0.181818187, 0, 0.321543366, 0)
prefix.Size = UDim2.new(0, 199, 0, 50)
prefix.Font = Enum.Font.Code
prefix.PlaceholderColor3 = Color3.new(1, 1, 1)
prefix.PlaceholderText = "Make a fake player prefix ([player]:). Leave blank for no prefix"
prefix.Text = ""
prefix.TextColor3 = Color3.new(1, 1, 1)
prefix.TextScaled = true
prefix.TextSize = 14
prefix.TextWrapped = true

autodetectplayers.Name = "autodetectplayers"
autodetectplayers.Parent = ChatHackFrame
autodetectplayers.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
autodetectplayers.BorderColor3 = Color3.new(0, 0, 0)
autodetectplayers.Position = UDim2.new(0.749388456, 0, 0.321543366, 0)
autodetectplayers.Size = UDim2.new(0, 88, 0, 50)
autodetectplayers.Font = Enum.Font.Code
autodetectplayers.Text = "Auto-detect player names:"
autodetectplayers.TextColor3 = Color3.new(1, 1, 1)
autodetectplayers.TextScaled = true
autodetectplayers.TextSize = 14
autodetectplayers.TextWrapped = true

message.Name = "message"
message.Parent = ChatHackFrame
message.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
message.BorderColor3 = Color3.new(0, 0, 0)
message.Position = UDim2.new(0, 0, 0.482315063, 0)
message.Size = UDim2.new(0, 352, 0, 116)
message.Font = Enum.Font.Code
message.MultiLine = true
message.PlaceholderColor3 = Color3.new(1, 1, 1)
message.PlaceholderText = "Your message here"
message.Text = ""
message.TextColor3 = Color3.new(1, 1, 1)
message.TextScaled = true
message.TextSize = 14
message.TextWrapped = true
message.TextXAlignment = Enum.TextXAlignment.Left

hide.Name = "hide"
hide.Parent = ChatHackFrame
hide.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
hide.BorderColor3 = Color3.new(0, 0, 0)
hide.Position = UDim2.new(0.499388337, 0, 0.858520925, 0)
hide.Size = UDim2.new(0, 87, 0, 44)
hide.Font = Enum.Font.Code
hide.Text = "Hide UI"
hide.TextColor3 = Color3.new(1, 1, 1)
hide.TextScaled = true
hide.TextSize = 14
hide.TextWrapped = true

postmessage.Name = "postmessage"
postmessage.Parent = ChatHackFrame
postmessage.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
postmessage.BorderColor3 = Color3.new(0, 0, 0)
postmessage.Position = UDim2.new(0.249388397, 0, 0.858520925, 0)
postmessage.Size = UDim2.new(0, 87, 0, 44)
postmessage.Font = Enum.Font.Code
postmessage.Text = "Post Message"
postmessage.TextColor3 = Color3.new(1, 1, 1)
postmessage.TextScaled = true
postmessage.TextSize = 14
postmessage.TextWrapped = true

Stat.Name = "Stat"
Stat.Parent = PokemonHaxlol
Stat.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Stat.BorderColor3 = Color3.new(0, 0, 0)
Stat.Position = UDim2.new(0.535871148, 0, 0.0729166716, 0)
Stat.Size = UDim2.new(0, 299, 0, 359)
Stat.Visible = false

Line.Name = "Line"
Line.Parent = Stat
Line.BackgroundColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.498327762, 0, 0, 0)
Line.Size = UDim2.new(0, 1, 0, 359)

PP.Name = "PP"
PP.Parent = Stat
PP.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
PP.BorderColor3 = Color3.new(0, 0, 0)
PP.Size = UDim2.new(0, 141, 0, 50)
PP.Font = Enum.Font.Code
PP.PlaceholderColor3 = Color3.new(1, 1, 1)
PP.PlaceholderText = "PP"
PP.Text = ""
PP.TextColor3 = Color3.new(1, 1, 1)
PP.TextScaled = true
PP.TextSize = 14
PP.TextWrapped = true

Accuracy.Name = "Accuracy"
Accuracy.Parent = Stat
Accuracy.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Accuracy.BorderColor3 = Color3.new(0, 0, 0)
Accuracy.Position = UDim2.new(-0.00167224079, 0, 0.139275759, 0)
Accuracy.Size = UDim2.new(0, 141, 0, 50)
Accuracy.Font = Enum.Font.Code
Accuracy.PlaceholderColor3 = Color3.new(1, 1, 1)
Accuracy.PlaceholderText = "Accuracy"
Accuracy.Text = ""
Accuracy.TextColor3 = Color3.new(1, 1, 1)
Accuracy.TextScaled = true
Accuracy.TextSize = 14
Accuracy.TextWrapped = true

Power.Name = "Power"
Power.Parent = Stat
Power.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Power.BorderColor3 = Color3.new(0, 0, 0)
Power.Position = UDim2.new(0, 0, 0.278551519, 0)
Power.Size = UDim2.new(0, 141, 0, 50)
Power.Font = Enum.Font.Code
Power.PlaceholderColor3 = Color3.new(1, 1, 1)
Power.PlaceholderText = "Power"
Power.Text = ""
Power.TextColor3 = Color3.new(1, 1, 1)
Power.TextScaled = true
Power.TextSize = 14
Power.TextWrapped = true

CritChance.Name = "CritChance"
CritChance.Parent = Stat
CritChance.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
CritChance.BorderColor3 = Color3.new(0, 0, 0)
CritChance.Position = UDim2.new(0, 0, 0.417827278, 0)
CritChance.Size = UDim2.new(0, 141, 0, 50)
CritChance.Font = Enum.Font.Code
CritChance.PlaceholderColor3 = Color3.new(1, 1, 1)
CritChance.PlaceholderText = "Critical Hit Chance"
CritChance.Text = ""
CritChance.TextColor3 = Color3.new(1, 1, 1)
CritChance.TextScaled = true
CritChance.TextSize = 14
CritChance.TextWrapped = true

MoveName.Name = "MoveName"
MoveName.Parent = Stat
MoveName.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
MoveName.BorderColor3 = Color3.new(0, 0, 0)
MoveName.Position = UDim2.new(-0.00167224079, 0, 0.623955429, 0)
MoveName.Size = UDim2.new(0, 141, 0, 41)
MoveName.Font = Enum.Font.Code
MoveName.PlaceholderColor3 = Color3.new(1, 1, 1)
MoveName.PlaceholderText = "Put Move Name Here"
MoveName.Text = ""
MoveName.TextColor3 = Color3.new(1, 1, 1)
MoveName.TextScaled = true
MoveName.TextSize = 14
MoveName.TextWrapped = true

PokemonName.Name = "PokemonName"
PokemonName.Parent = Stat
PokemonName.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
PokemonName.BorderColor3 = Color3.new(0, 0, 0)
PokemonName.Position = UDim2.new(0.52675581, 0, 0.623955429, 0)
PokemonName.Size = UDim2.new(0, 141, 0, 41)
PokemonName.Font = Enum.Font.Code
PokemonName.PlaceholderColor3 = Color3.new(1, 1, 1)
PokemonName.PlaceholderText = "Put Pokemon Name Here"
PokemonName.Text = ""
PokemonName.TextColor3 = Color3.new(1, 1, 1)
PokemonName.TextScaled = true
PokemonName.TextSize = 14
PokemonName.TextWrapped = true

Atk.Name = "Atk"
Atk.Parent = Stat
Atk.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Atk.BorderColor3 = Color3.new(0, 0, 0)
Atk.Position = UDim2.new(0.528428078, 0, 0, 0)
Atk.Size = UDim2.new(0, 141, 0, 34)
Atk.Font = Enum.Font.Code
Atk.PlaceholderColor3 = Color3.new(1, 1, 1)
Atk.PlaceholderText = "Attack"
Atk.Text = ""
Atk.TextColor3 = Color3.new(1, 1, 1)
Atk.TextScaled = true
Atk.TextSize = 14
Atk.TextWrapped = true

Def.Name = "Def"
Def.Parent = Stat
Def.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Def.BorderColor3 = Color3.new(0, 0, 0)
Def.Position = UDim2.new(0.528428078, 0, 0.0947075188, 0)
Def.Size = UDim2.new(0, 141, 0, 34)
Def.Font = Enum.Font.Code
Def.PlaceholderColor3 = Color3.new(1, 1, 1)
Def.PlaceholderText = "Defense"
Def.Text = ""
Def.TextColor3 = Color3.new(1, 1, 1)
Def.TextScaled = true
Def.TextSize = 14
Def.TextWrapped = true

HP.Name = "HP"
HP.Parent = Stat
HP.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
HP.BorderColor3 = Color3.new(0, 0, 0)
HP.Position = UDim2.new(0.528428078, 0, 0.189415038, 0)
HP.Size = UDim2.new(0, 141, 0, 34)
HP.Font = Enum.Font.Code
HP.PlaceholderColor3 = Color3.new(1, 1, 1)
HP.PlaceholderText = "HP"
HP.Text = ""
HP.TextColor3 = Color3.new(1, 1, 1)
HP.TextScaled = true
HP.TextSize = 14
HP.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = Stat
Speed.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Speed.BorderColor3 = Color3.new(0, 0, 0)
Speed.Position = UDim2.new(0.528428078, 0, 0.284122527, 0)
Speed.Size = UDim2.new(0, 141, 0, 34)
Speed.Font = Enum.Font.Code
Speed.PlaceholderColor3 = Color3.new(1, 1, 1)
Speed.PlaceholderText = "Speed"
Speed.Text = ""
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true

SpA.Name = "SpA"
SpA.Parent = Stat
SpA.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
SpA.BorderColor3 = Color3.new(0, 0, 0)
SpA.Position = UDim2.new(0.528428078, 0, 0.381615579, 0)
SpA.Size = UDim2.new(0, 141, 0, 34)
SpA.Font = Enum.Font.Code
SpA.PlaceholderColor3 = Color3.new(1, 1, 1)
SpA.PlaceholderText = "Special Attack"
SpA.Text = ""
SpA.TextColor3 = Color3.new(1, 1, 1)
SpA.TextScaled = true
SpA.TextSize = 14
SpA.TextWrapped = true

SpD.Name = "SpD"
SpD.Parent = Stat
SpD.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
SpD.BorderColor3 = Color3.new(0, 0, 0)
SpD.Position = UDim2.new(0.528428078, 0, 0.476323068, 0)
SpD.Size = UDim2.new(0, 141, 0, 29)
SpD.Font = Enum.Font.Code
SpD.PlaceholderColor3 = Color3.new(1, 1, 1)
SpD.PlaceholderText = "Special Defense"
SpD.Text = ""
SpD.TextColor3 = Color3.new(1, 1, 1)
SpD.TextScaled = true
SpD.TextSize = 14
SpD.TextWrapped = true

ChangeMove.Name = "ChangeMove"
ChangeMove.Parent = Stat
ChangeMove.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ChangeMove.BorderColor3 = Color3.new(0, 0, 0)
ChangeMove.Position = UDim2.new(0, 0, 0.738161564, 0)
ChangeMove.Size = UDim2.new(0, 141, 0, 36)
ChangeMove.Font = Enum.Font.Code
ChangeMove.Text = "Change Move Stats"
ChangeMove.TextColor3 = Color3.new(1, 1, 1)
ChangeMove.TextScaled = true
ChangeMove.TextSize = 14
ChangeMove.TextWrapped = true

ChangePokemon.Name = "ChangePokemon"
ChangePokemon.Parent = Stat
ChangePokemon.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
ChangePokemon.BorderColor3 = Color3.new(0, 0, 0)
ChangePokemon.Position = UDim2.new(0.528428078, 0, 0.738161564, 0)
ChangePokemon.Size = UDim2.new(0, 141, 0, 36)
ChangePokemon.Font = Enum.Font.Code
ChangePokemon.Text = "Change Pokemon Stats"
ChangePokemon.TextColor3 = Color3.new(1, 1, 1)
ChangePokemon.TextScaled = true
ChangePokemon.TextSize = 14
ChangePokemon.TextWrapped = true

Hide.Name = "Hide"
Hide.Parent = Stat
Hide.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Hide.BorderColor3 = Color3.new(0, 0, 0)
Hide.Position = UDim2.new(0.264214039, 0, 0.899721444, 0)
Hide.Size = UDim2.new(0, 141, 0, 36)
Hide.Font = Enum.Font.Code
Hide.Text = "Hide UI"
Hide.TextColor3 = Color3.new(1, 1, 1)
Hide.TextScaled = true
Hide.TextSize = 14
Hide.TextWrapped = true

WarningFrame.Name = "WarningFrame"
WarningFrame.Parent = PokemonHaxlol
WarningFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
WarningFrame.BorderColor3 = Color3.new(0, 0, 0)
WarningFrame.Position = UDim2.new(0.366764277, 0, 0.162760407, 0)
WarningFrame.Size = UDim2.new(0, 351, 0, 231)
WarningFrame.Visible = false

txt.Name = "txt"
txt.Parent = WarningFrame
txt.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
txt.BackgroundTransparency = 1
txt.BorderColor3 = Color3.new(0, 0, 0)
txt.Size = UDim2.new(0, 351, 0, 134)
txt.Font = Enum.Font.Code
txt.Text = "Warning: This GUI may not fully work with this game. Would you like to teleport to a game where this GUI does fully work? (I try to update this to find a game that this works 100% on as often as I can)"
txt.TextColor3 = Color3.new(1, 1, 1)
txt.TextScaled = true
txt.TextSize = 14
txt.TextWrapped = true

yes.Name = "yes"
yes.Parent = WarningFrame
yes.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
yes.BorderColor3 = Color3.new(0, 1, 0)
yes.Position = UDim2.new(0.0339456201, 0, 0.675324678, 0)
yes.Size = UDim2.new(0, 115, 0, 41)
yes.Font = Enum.Font.Code
yes.Text = "Yes"
yes.TextColor3 = Color3.new(1, 1, 1)
yes.TextScaled = true
yes.TextSize = 14
yes.TextWrapped = true

no.Name = "no"
no.Parent = WarningFrame
no.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
no.BorderColor3 = Color3.new(1, 0, 0)
no.Position = UDim2.new(0.589501202, 0, 0.675324678, 0)
no.Size = UDim2.new(0, 115, 0, 41)
no.Font = Enum.Font.Code
no.Text = "No"
no.TextColor3 = Color3.new(1, 1, 1)
no.TextScaled = true
no.TextSize = 14
no.TextWrapped = true
-- Scripts:
function SCRIPT_PGEF84_FAKESCRIPT() -- PokemonHaxlol.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = PokemonHaxlol
	for i,v in pairs(script.Parent:GetChildren()) do
	if v.ClassName == "Frame" then
	v.Active = true
	v.Draggable = true
	end
	end
	local chatui = script.Parent.ChatHackFrame
	local StatChangerUI = script.Parent.Stat
	local MainFrame = script.Parent.MainFrame
	local warningframe = script.Parent.WarningFrame
	local autodetect = false
	local exphackenabled = false
	local lplr = game.Players.LocalPlayer
	local workingPlaceId = 6734724867
	if game.PlaceId ~= workingPlaceId then
	MainFrame.Visible = false
	warningframe.Visible = true
	warningframe.no.MouseButton1Click:connect(function()
	warningframe.Visible = false
	MainFrame.Visible = true
	end)
	warningframe.yes.MouseButton1Click:connect(function()
	game.TeleportService:Teleport(workingPlaceId, lplr)
	end)
	end
	local chatColor = Color3.fromRGB(255,255,255)
	function applycolor()
	chatui.Red.PlaceholderColor3 = chatColor
	chatui.Red.TextColor3 = chatColor
	chatui.Green.PlaceholderColor3 = chatColor
	chatui.Green.TextColor3 = chatColor
	chatui.Blue.PlaceholderColor3 = chatColor
	chatui.Blue.TextColor3 = chatColor
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
	MainFrame.StatChanger.MouseButton1Click:connect(function()
	StatChangerUI.Visible = true
	end)
	StatChangerUI.Hide.MouseButton1Click:connect(function()
	StatChangerUI.Visible = false
	end)
	MainFrame.ChatTroll.MouseButton1Click:connect(function()
	chatui.Visible = true
	end)
	chatui.hide.MouseButton1Click:connect(function()
	chatui.Visible = false
	end)
	MainFrame.Pokeballhack.MouseButton1Click:connect(function()
	require(game.ReplicatedStorage.Information.Items).Pokeball.Use.Catch = 255
	warn("Pokeballs now work like Masterballs")
	end)
	Changed(chatui.Red, "Text", function(t)
	chatColor = Color3.fromRGB(tonumber(t), tonumber(chatui.Green.Text), tonumber(chatui.Blue.Text))
	applycolor()
	end)
	Changed(chatui.Green, "Text", function(t)
	chatColor = Color3.fromRGB(tonumber(chatui.Red.Text), tonumber(t), tonumber(chatui.Blue.Text))
	applycolor()
	end)
	Changed(chatui.Blue, "Text", function(t)
	chatColor = Color3.fromRGB(tonumber(chatui.Red.Text), tonumber(chatui.Green.Text), tonumber(t))
	applycolor()
	end)
	local buttontext = chatui.autodetectplayers.Text.." "
	chatui.autodetectplayers.Text = buttontext..tostring(autodetect)
	chatui.autodetectplayers.MouseButton1Click:connect(function()
	if autodetect then
	autodetect = false
	else
	autodetect = true
	end
	chatui.autodetectplayers.Text = buttontext..tostring(autodetect)
	end)
	Changed(chatui.prefix, "Text", function(txt,prev,button)
	if autodetect then
	local t = {}
	for i,v in pairs(game.Players:GetPlayers()) do
	if v.DisplayName:lower():sub(1, txt:len()) == txt:lower() then
	table.insert(t, v.DisplayName)
	end
	end
	if #t == 1 then
	button.Text = t[1]
	button.TextEditable = false
	wait()
	button.TextEditable = true
	end
	end
	end)
	chatui.postmessage.MouseButton1Click:connect(function()
	if chatui.prefix.Text ~= "" then
	game.ReplicatedStorage.REvents.Internal.wouoz:FireServer("["..chatui.prefix.Text.."]: "..chatui.message.Text, chatColor)
	else
	game.ReplicatedStorage.REvents.Internal.wouoz:FireServer(chatui.message.Text, chatColor)
	end
	end)
	StatChangerUI.ChangePokemon.MouseButton1Click:connect(function()
	local pokemonname = StatChangerUI.PokemonName.Text
	local textboxes = {StatChangerUI.Atk, StatChangerUI.Def, StatChangerUI.SpA, StatChangerUI.SpD, StatChangerUI.HP, StatChangerUI.Speed}
	local pokemonmodule = require(game.ReplicatedStorage.Information.Pokemon)
	for i,v in pairs(textboxes) do
	if v.Text ~= "" then
	pokemonmodule[pokemonname].Stats[v.Name] = tonumber(v.Text)
	end
	end
	end)
	StatChangerUI.ChangeMove.MouseButton1Click:Connect(function()
	local movename = StatChangerUI.MoveName.Text
	local textboxes = {StatChangerUI.PP, StatChangerUI.Power, StatChangerUI.Accuracy, StatChangerUI.CritChance}
	local movemodule = require(game.ReplicatedStorage.Information.Moves)
	for i,v in pairs(textboxes) do
	if v.Text ~= "" then
	movemodule[movename][v.Name] = tonumber(v.Text)
	end
	end
	end)
	MainFrame.ChatEXPHaxx.MouseButton1Click:connect(function()
	if not exphackenabled then
	exphackenabled = true
	game.ReplicatedStorage.REvents.Internal.wouoz:FireServer("Attention: A very sexc exploiter is here and is granting you access to insta LVL up your pokemon. To do so you say '!lvl hack [pokemon name]' WITHOUT brackets or quotes in chat. (For all pokemon, do !lvl hack all)\nOnce you do that, kill another pokemon and let the magic begin.\nALSO: This cannot be undone + This supports shortened names ('pikachu' can be written as 'pika').", Color3.new(1,1,1))
	local function haxpokemon(plr)
	plr.Chatted:connect(function(msg)
	if msg:lower():find("!lvl hack") and not msg:lower() ~= "!lvl hack all" then
	for i,pokemon in pairs(plr.PokemonParty:GetChildren()) do
	if pokemon.Name:lower():sub(1, msg:sub(11):len()) == msg:sub(11):lower() then
	game:GetService("ReplicatedStorage").REvents.Internal.fiaj:InvokeServer({Experience = pokemon.Experience},10000000)
	game:GetService("ReplicatedStorage").REvents.Internal.fiaj:InvokeServer({Experience = pokemon.Lvl},99)
	end
	end
	end
	if msg:lower() == "!lvl hack all" then
	for i,pokemon in pairs(plr.PokemonParty:GetChildren()) do
	game:GetService("ReplicatedStorage").REvents.Internal.fiaj:InvokeServer({Experience = pokemon.Experience},10000000)
	game:GetService("ReplicatedStorage").REvents.Internal.fiaj:InvokeServer({Experience = pokemon.Lvl},99)
	end
	end
	end)
	end
	for i,v in pairs(game.Players:GetPlayers()) do haxpokemon(v) end
	game.Players.PlayerAdded:connect(haxpokemon)
	end
	end)
	MainFrame.RemoveSaveCooldown.MouseButton1Click:connect(function()
	local savepath = lplr.PlayerGui.Main.Menu.Save
	savepath.Visible = true
	Changed(savepath, "Visible", function(v)
	if v == false then
	savepath.Visible = true
	end
	end)
	end)
	MainFrame.Fillpokedex.MouseButton1Click:connect(function()
	for i,v in pairs(require(game.ReplicatedStorage.Information.Pokemon)) do
		game:GetService("ReplicatedStorage").REvents.Pokemon.createPokedex:FireServer(i)
	    game:GetService("ReplicatedStorage").REvents.Pokemon.caughtPokedex:FireServer(i)
	end
	end)
	MainFrame.X.MouseButton1Click:connect(function()
	MainFrame.Parent:Destroy()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_PGEF84_FAKESCRIPT))
