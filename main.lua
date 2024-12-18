local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)

local acrylicEffect = Instance.new("ImageLabel")
acrylicEffect.Parent = frame
acrylicEffect.BackgroundTransparency = 1
acrylicEffect.Size = UDim2.new(1, 0, 1, 0)
acrylicEffect.Image = "rbxassetid://7072771026" -- A suitable image for acrylic effect, you can replace this with a proper one
acrylicEffect.ImageTransparency = 0.4

local button = Instance.new("TextButton")
button.Parent = frame
button.Text = "Activate Cheat"
button.Size = UDim2.new(0.3, 0, 0.1, 0)
button.Position = UDim2.new(0.35, 0, 0.8, 0)
button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

-- Your cheat functionality goes here, for example:
button.MouseButton1Click:Connect(function()
    print("Cheat Activated")
    -- Add your cheat code logic here
end)
