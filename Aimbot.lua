loadstring(game:HttpGet("https://raw.githubusercontent.com/RedWirePlatinumTwo/RobloxScripts/main/ImportantFunctions.lua"))()

local gui = script.Parent
local MainFrame = gui.MFrame
local wlui = gui.ManagerUI
local gamesettings = gui.GameSettingsUI.ScrollingFrame
local globalsettings = gui.GlobalSettingsUI.ScrollingFrame
local games = gui.GameSettingsUI
local globals = gui.GlobalSettingsUI
local teamui = gui.TeamUI
local camera = workspace.CurrentCamera

local function sendnotif(title, text)
	game.StarterGui:SetCore("ChatMakeSystemMessage",({["Text"] = "["..title.."]: "..text, ["Color"] = MainFrame.Title.TextColor3}))
end

if not _G.RedsAimbot then
	_G.RedsAimbot = true

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

	local reps = {}
	local TableChanged = function(Table,f,dosubtables,issubtable)
		if not dosubtables then
			reps = {}
		end
		local function tc(t)
			for i,v in pairs(t) do

				Changed(t,i,function(...)
					f(t,i,...)
				end)

			end

			TableAdded(t,function(index,value,Time)
				f(t,index,value,nil,Time)

				Changed(t,index,function(...)
					f(t,index,...)
				end)

			end)
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

	if syn then
		syn.protect_gui(gui)
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
		GameStats.WhitelistFriends = false
		GameStats.MaxStuds = 500
		GameStats.OwnTeamWhitelisted = true
		GameStats.Teams = {}
		GameStats.TargetCloserPlayers = true
	end

	if isfile and loadfile and isfile("RedsAimbotStats.lua") then
		GlobalStats = loadfile("RedsAimbotStats.lua")()
		local newglobalstats = {}
		newglobalstats["TeamAutofill"] = true
		newglobalstats["RightClickAim"] = false
		newglobalstats["FirstPersonEnabled"] = true
		newglobalstats["AimMethod"] = "Camera"
		newglobalstats["MouseSensitivity"] = 0.25
		if not GlobalStats[game.PlaceId] then
			gengamestats()
		end
		
		for name, default in pairs(newglobalstats) do
			if GlobalStats[name] == nil then
				GlobalStats[name] = default
			end
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
		gengamestats()
		GlobalStats.Keybinds.AimbotToggle = Enum.KeyCode.CapsLock
		GlobalStats.Keybinds.TargetedPartToggle = Enum.KeyCode.RightAlt
		local newkeybinds = {}
		newkeybinds["NPCToggle"] = "none"
		newkeybinds["GUIVisibilityToggle"] = "none"
		
		for name, default in pairs(newkeybinds) do
			if GlobalStats.Keybinds[name] == nil then
				GlobalStats.Keybinds[name] = default
			end
		end
	end

	GameStats = GlobalStats[game.PlaceId]
	Keybinds = GlobalStats.Keybinds
	if not Keybinds.NPCToggle then
		Keybinds.NPCToggle = "none"
	end
	local newgamestats = {}
	newgamestats["Teams"] = {}
	newgamestats["TargetNPCs"] = false
	newgamestats["TargetCloserPlayers"] = true
	newgamestats["IgnorePlayers"] = false
	
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
			if v:FindFirstChild("reset") then
				v.reset.Activated:connect(function()
					GlobalStats.Keybinds[v.Name] = "none"
					v.value.Text = "none"
				end)
			end

		if v:FindFirstChild("value") and v.Name:lower():find("toggle") then
			v.value.Activated:connect(function()
				GlobalStats.Keybinds[v.Name] = "none"
				v.value.Text = "Press any key"
				local key = game.UserInputService.InputBegan:Wait()
				GlobalStats.Keybinds[v.Name] = key.KeyCode
				v.value.Text = tostring(key.KeyCode)
			end)
		end
		if type(GlobalStats[v.Name]) == "boolean" then
			v.value.Activated:connect(function()
				GlobalStats[v.Name] = not GlobalStats[v.Name]
			end)
			Changed(GlobalStats, v.Name, function(val)
				v.value.Text = tostring(val)
			end)
		end
	end
	
	if globalsettings.AimMethod.value.Text == "Camera" then
		globalsettings.AimMethod.About.Text = "Less universal, more stable."
	end
	globalsettings.AimMethod.value.Activated:connect(function()
		local method = globalsettings.AimMethod
		if method.value.Text == "Camera" then
			method.value.Text = "Mouse"
			method.About.Text = "More universal, less stable."
		else
			method.value.Text = "Camera"
			method.About.Text = "Less universal, more stable."
		end
		GlobalStats.AimMethod = method.value.Text
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
	            if not ischaracter(v.Parent) and not table.find(npcs, v.Parent) and v.Health > 0 then
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
			local part = gettargetpart(misc.TargetedCharacter)
			local partpos = part.Position
			local v, onscreen = camera:WorldToScreenPoint(partpos)
			local x,y = (v.X - m.X), (v.Y - m.Y)
			if onscreen then
				if misc.IsAimbotOn then
					if GlobalStats.RightClickAim and RightClick or not GlobalStats.RightClickAim then
						if GlobalStats.AimMethod == "Camera" then
							camera.CFrame = CFrame.new(camera.CFrame.Position, partpos)
							game.UserInputService.MouseDeltaSensitivity = 0
						else
							mousemoverel(x,y)
							game.UserInputService.MouseDeltaSensitivity = GlobalStats.MouseSensitivity
						end
						if not GlobalStats.FirstPersonEnabled then
							lplr.Character.Humanoid.RootPart.CFrame = CFrame.lookAt(lplr.Character.Humanoid.RootPart.Position, (partpos * Vector3.new(1,0,1)) + Vector3.new(0, lplr.Character.Humanoid.RootPart.Position.Y, 0))
						end
					end
				end
			else
				camera.CFrame = CFrame.new(camera.CFrame.Position, partpos)
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
				pcall(function()
					local player = plrs:GetPlayerFromCharacter(v)
					if player and IsNotWhitelisted(player) or not player then
			    		if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health ~= 0 then
							local targpart = gettargetpart(v)
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
				end)
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
					targetplayer(plr)
				else
					selectcharacter(Char)
				end
				return "stop"
			end)
		end
		if GlobalStats.FirstPersonEnabled then
			if misc.TargetedCharacter and misc.IsAimbotOn and camera.CameraType ~= Enum.CameraType.Scriptable then
				plrs.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
			else
				plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			end
		else
			plrs.LocalPlayer.CameraMode = Enum.CameraMode.Classic
		end
	end)

	sendnotif("Aimbot Update","Removed wall check because it sucks and is the reason your game lags a bit on execution.")
	
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
			if not GlobalStats.FirstPersonEnabled then
				lplr.Character.Humanoid.CameraOffset = Vector3.new(2,0,0)
				game.UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			end
				MainFrame.CurrentTarget.TextColor3 = Color3.new(0,0.66,0)
		else
			if not GlobalStats.FirstPersonEnabled then
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

else
	sendnotif("Aimbot", "You've already executed this. Deleting clone.")
	task.wait(0.2)
	gui:Destroy()
end
