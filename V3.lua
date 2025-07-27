-- 🔑 AubixHub Key System
local correctKey = "123AubixHubTestV3"
local discordLink = "https://discord.gg/CVwJK2d7Pw"

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ✅ Key GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AubixHubKeyUI"
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, -175, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel", Frame)
Title.Text = "🔑 AubixHub Key System"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

local DiscordLabel = Instance.new("TextLabel", Frame)
DiscordLabel.Text = "Join Discord to get key:\n" .. discordLink
DiscordLabel.Size = UDim2.new(1, -20, 0, 50)
DiscordLabel.Position = UDim2.new(0, 10, 0, 40)
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
DiscordLabel.Font = Enum.Font.Gotham
DiscordLabel.TextSize = 16
DiscordLabel.TextWrapped = true

local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(1, -20, 0, 40)
TextBox.Position = UDim2.new(0, 10, 0, 100)
TextBox.PlaceholderText = "Enter key here"
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 18

local Submit = Instance.new("TextButton", Frame)
Submit.Size = UDim2.new(1, -20, 0, 40)
Submit.Position = UDim2.new(0, 10, 0, 150)
Submit.Text = "Submit Key"
Submit.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
Submit.Font = Enum.Font.Gotham
Submit.TextSize = 20

-- ✅ Button Function
Submit.MouseButton1Click:Connect(function()
    if TextBox.Text == correctKey then
        Frame:Destroy()
        ScreenGui:Destroy()
        print("✅ Correct key entered! Loading AubixHub...")
        
        -- ✅ Load your main script here
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TherealScripter/AubixHub/main/V3Main.lua"))()
    else
        TextBox.Text = ""
        TextBox.PlaceholderText = "❌ Wrong Key - Try Again"
    end
end)
