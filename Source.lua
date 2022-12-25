local LUNR={}

local ScreenGui = Instance.new("ScreenGui")

local Main = Instance.new("Frame")
local Header = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Header_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Content = Instance.new("ScrollingFrame")

local UIPadding = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")

function LUNR:MakeName(Text)
	local ScriptName = Instance.new("TextLabel")


ScriptName.Name = "ScriptName"
ScriptName.Parent = Header
ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptName.BackgroundTransparency = 1.000
ScriptName.Position = UDim2.new(0.0263157897, 0, 0, 0)
ScriptName.Size = UDim2.new(0, 199, 0, 29)
ScriptName.Font = Enum.Font.GothamBold
ScriptName.Text = Text
ScriptName.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptName.TextSize = 14.000
ScriptName.TextXAlignment = Enum.TextXAlignment.Left
	end



function LUNR:MakeToggle(Text,callback)
	local Toggle = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local SliderText_2 = Instance.new("TextLabel")
	local Toggle_2 = Instance.new("ImageLabel")
	local Button = Instance.new("TextButton")
	local Circle = Instance.new("ImageLabel")
	Toggle.Name = "Toggle"
	Toggle.Parent = Content
	Toggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Toggle.Size = UDim2.new(0, 532, 0, 52)

	UICorner_6.Parent = Toggle

	SliderText_2.Name = "SliderText"
	SliderText_2.Parent = Toggle
	SliderText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderText_2.BackgroundTransparency = 1.000
	SliderText_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	SliderText_2.Position = UDim2.new(0.0263157897, 0, 0.288461536, 0)
	SliderText_2.Size = UDim2.new(0, 185, 0, 22)
	SliderText_2.Font = Enum.Font.GothamBold
	SliderText_2.Text = Text
	SliderText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	SliderText_2.TextSize = 14.000
	SliderText_2.TextXAlignment = Enum.TextXAlignment.Left

	Toggle_2.Name = "Toggle"
	Toggle_2.Parent = Toggle
	Toggle_2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
	Toggle_2.BackgroundTransparency = 1.000
	Toggle_2.Position = UDim2.new(0.928571463, -23, 0.5, -11)
	Toggle_2.Size = UDim2.new(0, 46, 0, 22)
	Toggle_2.Image = "rbxassetid://3570695787"
	Toggle_2.ImageColor3 = Color3.fromRGB(200, 200, 200)
	Toggle_2.ScaleType = Enum.ScaleType.Slice
	Toggle_2.SliceCenter = Rect.new(100, 100, 100, 100)
	Toggle_2.SliceScale = 0.120

	Button.Name = "Button"
	Button.Parent = Toggle_2
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.Size = UDim2.new(1, 0, 1, 0)
	Button.Font = Enum.Font.SourceSans
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 14.000
	Button.TextTransparency = 1.000

	Circle.Name = "Circle"
	Circle.Parent = Toggle_2
	Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Circle.BackgroundTransparency = 1.000
	Circle.Position = UDim2.new(0, 2, 0, 2)
	Circle.Size = UDim2.new(0, 18, 0, 18)
	Circle.Image = "rbxassetid://3570695787"
	Circle.ScaleType = Enum.ScaleType.Slice
	Circle.SliceCenter = Rect.new(100, 100, 100, 100)
	Circle.SliceScale = 0.120

	-- Scripts:

	local function FXGKB_fake_script() -- Toggle_2.Script 
		local script = Instance.new('LocalScript', Toggle_2)

		local toggled = false -- The start state of the toggle
		local debounce = false -- Debounce / cooldown so you cant spam the toggle and break it

		script.Parent.Button.MouseButton1Click:Connect(function() -- Gets executed when you click the button
			if debounce == false then
				if toggled == true then -- If the toggle is already on
					debounce = true
					game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(200, 200, 200)}):Play()
					game:GetService("TweenService"):Create(script.Parent.Circle, TweenInfo.new(0.25), {Position = UDim2.new(0,2,0,2)}):Play()
					wait(0.25)
					debounce = false
					toggled = false
					pcall(callback, false) -- REMOVE THIS IF YOUR NOT GONNA USE THE TOGGLE FOR AN UI LIBRARY!!!
				elseif toggled == false then -- If the toggle isnt already on
					debounce = true
					game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(148, 17, 255)}):Play()
					-- 64,200,114
					game:GetService("TweenService"):Create(script.Parent.Circle, TweenInfo.new(0.25), {Position = UDim2.new(1,-20,0,2)}):Play()
					wait(0.25)
					debounce = false
					toggled = true
					pcall(callback, true) -- REMOVE THIS IF YOUR NOT GONNA USE THE TOGGLE FOR AN UI LIBRARY!!!
				end
			end
		end)
	end
	coroutine.wrap(FXGKB_fake_script)()
end


function LUNR:MakeSlider(Text,minvalue,maxvalue,callback)
	local Slider = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local SliderButton = Instance.new("TextButton")
	local SliderFrame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UICorner_5 = Instance.new("UICorner")
	local SliderText = Instance.new("TextLabel")
	local SliderValue = Instance.new("TextLabel")
	Slider.Name = "Slider"
	Slider.Parent = Content
	Slider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Slider.Size = UDim2.new(0, 532, 0, 52)

	UICorner_3.Parent = Slider

	SliderButton.Name = "SliderButton"
	SliderButton.Parent = Slider
	SliderButton.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
	SliderButton.Position = UDim2.new(0.0375939831, 0, 0.576923072, 0)
	SliderButton.Size = UDim2.new(0.325187981, 318, 0.288077027, 0)
	SliderButton.Font = Enum.Font.SourceSans
	SliderButton.Text = ""
	SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	SliderButton.TextSize = 14.000

	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = SliderButton
	SliderFrame.BackgroundColor3 = Color3.fromRGB(148, 17, 255)
	SliderFrame.Size = UDim2.new(0.0203665979, 0, 1, 0)

	UICorner_4.Parent = SliderFrame

	UICorner_5.Parent = SliderButton

	SliderText.Name = "SliderText"
	SliderText.Parent = Slider
	SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderText.BackgroundTransparency = 1.000
	SliderText.BorderColor3 = Color3.fromRGB(27, 42, 53)
	SliderText.Position = UDim2.new(0.0263157897, 0, 0, 0)
	SliderText.Size = UDim2.new(0, 185, 0, 22)
	SliderText.Font = Enum.Font.GothamBold
	SliderText.Text = Text
	SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
	SliderText.TextSize = 14.000
	SliderText.TextXAlignment = Enum.TextXAlignment.Left

	SliderValue.Name = "SliderValue"
	SliderValue.Parent = Slider
	SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderValue.BackgroundTransparency = 1.000
	SliderValue.BorderColor3 = Color3.fromRGB(27, 42, 53)
	SliderValue.Position = UDim2.new(0.612781942, 0, 0, 0)
	SliderValue.Size = UDim2.new(0, 185, 0, 22)
	SliderValue.Font = Enum.Font.GothamBold
	SliderValue.Text = "0"
	SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
	SliderValue.TextSize = 14.000
	SliderValue.TextXAlignment = Enum.TextXAlignment.Right
	
	-----Values-----
	minvalue = minvalue or 0
	maxvalue = maxvalue or 100


	-----Callback-----
	callback = callback or function() end


	-----Variables-----
	local mouse = game.Players.LocalPlayer:GetMouse()
	local uis = game:GetService("UserInputService")
	local Value;




	-----Main Code-----

	SliderButton.MouseButton1Down:Connect(function()
		Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 491) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
		pcall(function()
			callback(Value)
		end)
		SliderFrame.Size = UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 491), 0, 16)
		moveconnection = mouse.Move:Connect(function()
			SliderValue.Text = Value
			Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 491) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
			pcall(function()
				callback(Value)
			end)
			SliderFrame.Size = UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 491), 0, 16)
		end)
		releaseconnection = uis.InputEnded:Connect(function(Mouse)
			if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 491) * SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
				pcall(function()
					callback(Value)
				end)
				SliderFrame.Size = UDim2.new(0, math.clamp(mouse.X - SliderFrame.AbsolutePosition.X, 0, 491), 0, 16)
				moveconnection:Disconnect()
				releaseconnection:Disconnect()
			end
		end)
	end)
end



--Properties:

ScreenGui.Parent = game:WaitForChild("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.Position = UDim2.new(0.174639329, 0, 0.272836536, 0)
Main.Size = UDim2.new(0, 532, 0, 327)

Header.Name = "Header"
Header.Parent = Main
Header.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Header.Size = UDim2.new(0, 532, 0, 29)

UICorner.Parent = Header

Header_2.Name = "Header"
Header_2.Parent = Header
Header_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Header_2.BorderSizePixel = 0
Header_2.Position = UDim2.new(0, 0, 0.448275864, 0)
Header_2.Size = UDim2.new(0, 532, 0, 16)

UICorner_2.Parent = Main

Content.Name = "Content"
Content.Parent = Main
Content.Active = true
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.Position = UDim2.new(0, 0, 0.0886850134, 0)
Content.Size = UDim2.new(0, 532, 0, 298)
Content.ScrollBarThickness = 0



UIPadding.Parent = Content
UIPadding.PaddingTop = UDim.new(0, 12)

UIListLayout.Parent = Content
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 7)


local function XNDB_fake_script() -- Main.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Main)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(XNDB_fake_script)()

return LUNR
