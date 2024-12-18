local UI = {}

function UI:CreateMenu()
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Button = Instance.new("TextButton")
    
    -- Parent to PlayerGui (always ensures it has a valid parent)
    ScreenGui.Name = "CheatMenu"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- Main Frame setup
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.Size = UDim2.new(0, 300, 0, 400)
    MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.BorderSizePixel = 0
    
    -- Title setup
    Title.Name = "Title"
    Title.Parent = MainFrame
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Title.Font = Enum.Font.SourceSansBold
    Title.TextSize = 20
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Text = "Cheat Menu"
    
    -- Button setup
    Button.Name = "ExampleButton"
    Button.Parent = MainFrame
    Button.Size = UDim2.new(0.8, 0, 0, 50)
    Button.Position = UDim2.new(0.1, 0, 0.2, 0)
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Button.Font = Enum.Font.SourceSans
    Button.TextSize = 18
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Text = "Execute Cheat"
    
    Button.MouseButton1Click:Connect(function()
        print("Cheat executed!")
    end)
    
    return ScreenGui
end

return UI
