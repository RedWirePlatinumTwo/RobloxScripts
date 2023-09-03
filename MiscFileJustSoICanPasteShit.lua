local lplr = game:GetService("Players").LocalPlayer

getgenv().playerChatted = function(player,func)
	local tcservice = game:GetService("TextChatService")
	if tcservice.ChatVersion == Enum.ChatVersion.LegacyChatService then
		if player ~= lplr then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
				if messageData.FromSpeaker == player.Name then
					func(messageData.Message)
				end
			end)
		else
			lplr.Chatted:connect(function(msg)
				func(msg)
			end)
		end
	else
		local function removeTags(str)
			str = str:gsub("<br%s*/>", "\n")
			return (str:gsub("<[^<>]->", ""))
		end
		if player ~= lplr then
			tcservice.MessageReceived:connect(function(txtmsg)
				if txtmsg.TextSource.UserId == player.UserId then
					func(removeTags(txtmsg.Text))
				end
			end)
		else
			tcservice.SendingMessage:connect(function(txtmsg)
				func(removeTags(txtmsg.Text))
			end)
		end
	end
end

getgenv().playerchatted = playerChatted
