-- Gui to Lua
-- Version: 3.2

-- Instances:

local DaShop = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ShopScroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local ShopItem = Instance.new("TextButton")
local Filter = Instance.new("TextBox")

--Properties:

DaShop.Name = "DaShop"
DaShop.Parent = game.CoreGui
DaShop.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = DaShop
MainFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 2
MainFrame.Position = UDim2.new(0.456822097, 0, 0.264218003, 0)
MainFrame.Size = UDim2.new(0, 307, 0, 315)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 307, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Da Shop Teleporter"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 40.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

ShopScroll.Name = "ShopScroll"
ShopScroll.Parent = MainFrame
ShopScroll.Active = true
ShopScroll.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
ShopScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
ShopScroll.BorderSizePixel = 0
ShopScroll.Position = UDim2.new(0.026058631, 0, 0.279365093, 0)
ShopScroll.Size = UDim2.new(0, 288, 0, 221)
ShopScroll.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = ShopScroll
UIListLayout.Padding = UDim.new(0, 4)

ShopItem.Name = "ShopItem"
ShopItem.Parent = ShopScroll
ShopItem.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
ShopItem.BorderColor3 = Color3.fromRGB(0, 0, 0)
ShopItem.BorderSizePixel = 0
ShopItem.Size = UDim2.new(0, 273, 0, 50)
ShopItem.Visible = false
ShopItem.Font = Enum.Font.SourceSans
ShopItem.Text = "20 [TacticalShotgun Ammo] - $66"
ShopItem.TextColor3 = Color3.fromRGB(255, 255, 255)
ShopItem.TextSize = 21.000
ShopItem.TextStrokeTransparency = 0.000
ShopItem.TextWrapped = true

Filter.Name = "Filter"
Filter.Parent = MainFrame
Filter.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Filter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Filter.Position = UDim2.new(0.0488599353, 0, 0.139682546, 0)
Filter.Size = UDim2.new(0, 277, 0, 38)
Filter.Font = Enum.Font.SourceSans
Filter.PlaceholderText = "Filter text"
Filter.Text = ""
Filter.TextColor3 = Color3.fromRGB(255, 255, 255)
Filter.TextScaled = true
Filter.TextSize = 14.000
Filter.TextStrokeTransparency = 0.000
Filter.TextWrapped = true

-- Scripts:

local function BETNQ_fake_script() -- DaShop.LocalScript 
	local script = Instance.new('LocalScript', DaShop)

	local mainframe = script.Parent.MainFrame
	mainframe.ShopScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
	mainframe.Active = true
	mainframe.Draggable = true
	local uiservice = game:GetService("UserInputService")
	local rstorage = game:GetService("ReplicatedStorage")
	local lplr = game:GetService("Players").LocalPlayer
	local runservice = game:GetService("RunService")
	
	local thread = function(f, ...)
		local co = coroutine.create(f)
		local ok, err = coroutine.resume(co, ...)
		if not ok then
			warn(err)
		end
		return co
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
	
	local shopItems = {}
	for i, shopitem in pairs(workspace.Ignored.Shop:GetChildren()) do
		pcall(function()
			local name = shopitem.Name:gsub(" ", "")
			name = name:sub(name:find("%[")+1, name:find("%]")-1)
			local price = (shopItems[name] and shopItems[name].Price) or 0
			local price2 = tonumber(shopitem.Name:match("%d+"))
			if price2 < price or price == 0 and shopitem:FindFirstChild("Head") and shopitem:FindFirstChild("ClickDetector") then
				shopItems[name] = {}
				shopItems[name].Price = price2
				shopItems[name].Instance = shopitem
			end
		end)
	end
	
	local basebutton = mainframe.ShopScroll.ShopItem
	local function addShopItem(shopitem, name)
		local clone = basebutton:Clone()
		clone.Parent = basebutton.Parent
		clone.Visible = true
		clone.Text = shopitem.Name
		local canClick = true
		clone.Activated:connect(function()
			for i,v in pairs(lplr.Backpack:GetChildren()) do
				if v.Name:find(name) then
					return
				end
			end
			for i,v in pairs(lplr.Character:GetChildren()) do
				if v.Name:find(name) then
					return
				end
			end
			if canClick then
				canClick = false
				local hrp = lplr.Character.Humanoid.RootPart
				local origCf = hrp.CFrame
				thread(function()
					while not canClick do
						hrp.CFrame = shopitem.Head.CFrame + Vector3.new(0, -3, 0)
						fireclickdetector(shopitem.ClickDetector)
						task.wait()
					end
				end)
				lplr.PlayerGui.MainScreenGui.ChildAdded:Wait()
				hrp.CFrame = origCf
				canClick = true
			end
		end)
	end
	
	for i,v in pairs(shopItems) do
		addShopItem(v.Instance, i)
	end
	
	Changed(mainframe.Filter, "Text", function(txt)
		for i,v in pairs(mainframe.ShopScroll:GetChildren()) do
			if v.ClassName == "TextButton" and v ~= basebutton then
				v.Visible = v.Text:lower():match(txt:lower()) ~= nil
			end
		end
	end)
	
	local function keyDown(keycode)
		return uiservice:IsKeyDown(keycode) and not uiservice:GetFocusedTextBox()
	end
	
	runservice.RenderStepped:connect(function()
		if keyDown(Enum.KeyCode.E) then
			rstorage.MainEvent:FireServer("Stomp")
		end
	end)
end
coroutine.wrap(BETNQ_fake_script)()
