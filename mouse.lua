
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.289203078, 0, 0.195439741, 0)
Frame.Size = UDim2.new(0, 329, 0, 265)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 329, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Mouse Copier"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18.000



-- Scripts:

local function QKUNW_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', Frame)
    local wow = And
	local mouse = game.Players.LocalPlayer:GetMouse()
	local uis = game:GetService("UserInputService")
	
	uis.InputBegan:Connect(function(input,gameProcessedEvent)
		if input.KeyCode == Enum.KeyCode.L then
			setclipboard(tostring(mouse.X .."  "..mouse.Y))
	
		end
	end)
end
coroutine.wrap(QKUNW_fake_script)()
