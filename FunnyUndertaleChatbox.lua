-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local UTChatBox = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local PlayerIcon = Instance.new("ImageLabel")
local Message = Instance.new("TextLabel")
--Properties:
UTChatBox.Name = "UTChatBox"
UTChatBox.Parent = game.CoreGui

Frame.Parent = UTChatBox
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderColor3 = Color3.new(1, 1, 1)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.0911589488, 0, 0.0532612614, 0)
Frame.Size = UDim2.new(0, 1142, 0, 160)

PlayerIcon.Name = "PlayerIcon"
PlayerIcon.Parent = Frame
PlayerIcon.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerIcon.BackgroundTransparency = 1
PlayerIcon.Position = UDim2.new(0.0302079134, 0, 0.0687500015, 0)
PlayerIcon.Size = UDim2.new(0, 136, 0, 136)
PlayerIcon.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

Message.Name = "Message"
Message.Parent = Frame
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BackgroundTransparency = 1
Message.Position = UDim2.new(0.171877623, 0, 0.06925001, 0)
Message.Size = UDim2.new(0, 936, 0, 136)
Message.Font = Enum.Font.Arcade
Message.Text = "* Heya, kiddo."
Message.TextColor3 = Color3.new(1, 1, 1)
Message.TextSize = 36
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Left
Message.TextYAlignment = Enum.TextYAlignment.Top
-- Scripts:
function SCRIPT_TJAD75_FAKESCRIPT() -- UTChatBox.Chatscript 
	local script = Instance.new('LocalScript')
	script.Parent = UTChatBox
	local gui = script.Parent
	gui.Enabled = false
	function PlayerChatted(plr)
	plr.Chatted:connect(function(String)
	local Chatgui = gui:Clone()
	Chatgui.Parent = game.CoreGui
	local Message = Chatgui.Frame.Message
	local userId = plr.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	Chatgui.Frame.PlayerIcon.Image = content
	Chatgui.Enabled = true
	local sentenceEnders = {".", "!", "?"}
	local String2 = String:sub(1,1):upper()..String:sub(2)
	if not table.find(sentenceEnders, String:sub(-1)) then
	    String2 = String2.."."
	end
	for i = 1, String2:len() do
	local f = String2:sub(i,i)
	if String2:len() ~= " " then
	coroutine.resume(coroutine.create(function()
	local s = Instance.new("Sound", workspace)
	s.SoundId = "rbxassetid://5416666166"
	repeat wait() until s.TimeLength ~= 0
	s:Play()
	wait(s.TimeLength)
	s:Destroy()
	end))
	end
	Message.Text = "* "..String2:sub(1,i)
	if f == "," and not tonumber(String2:sub(i-1,i-1)) then
	wait(0.25)
	elseif table.find(sentenceEnders,f) and not table.find(sentenceEnders,String2:sub(i+1,i+1)) then
	wait(0.5)
	else
	wait()
	end
	end
	wait(2)
	Chatgui:Destroy()
	end)
	end
	for i,v in pairs(game.Players:GetPlayers()) do PlayerChatted(v) end
	game.Players.PlayerAdded:connect(PlayerChatted)

end
coroutine.resume(coroutine.create(SCRIPT_TJAD75_FAKESCRIPT))
