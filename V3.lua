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
-- AubixHub v3 | Fully Featured GUI + Reach System for Steal Time From Others
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- UI Setup
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "AubixHub"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 450, 0, 450)
Frame.Position = UDim2.new(0.5, -225, 0.5, -225)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel", Frame)
Title.Text = "🌟 AubixHub v3"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 28

-- 🔘 Shape Toggle
local ShapeLabel = Instance.new("TextLabel", Frame)
ShapeLabel.Text = "Hitbox Shape:"
ShapeLabel.Size = UDim2.new(0, 150, 0, 30)
ShapeLabel.Position = UDim2.new(0, 20, 0, 50)
ShapeLabel.BackgroundTransparency = 1
ShapeLabel.TextColor3 = Color3.fromRGB(255,255,255)
ShapeLabel.Font = Enum.Font.Gotham
ShapeLabel.TextSize = 18

local ShapeBtn = Instance.new("TextButton", Frame)
ShapeBtn.Size = UDim2.new(0, 120, 0, 30)
ShapeBtn.Position = UDim2.new(0, 180, 0, 50)
ShapeBtn.Text = "Box"
ShapeBtn.BackgroundColor3 = Color3.fromRGB(60,60,60)
ShapeBtn.TextColor3 = Color3.fromRGB(255,255,255)
ShapeBtn.Font = Enum.Font.Gotham
ShapeBtn.TextSize = 18
local UICornerShape = Instance.new("UICorner", ShapeBtn)
UICornerShape.CornerRadius = UDim.new(0, 6)
local shapeMode = "Box"

ShapeBtn.MouseButton1Click:Connect(function()
    if shapeMode == "Box" then
        shapeMode = "Sphere"
        ShapeBtn.Text = "Sphere"
    else
        shapeMode = "Box"
        ShapeBtn.Text = "Box"
    end
end)

-- 📏 Size Slider + Box
local SizeLabel = Instance.new("TextLabel", Frame)
SizeLabel.Text = "Hitbox Size:"
SizeLabel.Size = UDim2.new(0, 150, 0, 30)
SizeLabel.Position = UDim2.new(0, 20, 0, 90)
SizeLabel.BackgroundTransparency = 1
SizeLabel.TextColor3 = Color3.fromRGB(255,255,255)
SizeLabel.Font = Enum.Font.Gotham
SizeLabel.TextSize = 18

local SizeBox = Instance.new("TextBox", Frame)
SizeBox.Size = UDim2.new(0, 60, 0, 30)
SizeBox.Position = UDim2.new(0, 310, 0, 90)
SizeBox.Text = "25"
SizeBox.BackgroundColor3 = Color3.fromRGB(60,60,60)
SizeBox.TextColor3 = Color3.fromRGB(255,255,255)
SizeBox.Font = Enum.Font.Gotham
SizeBox.TextSize = 18
SizeBox.ClearTextOnFocus = false
local UICornerSize = Instance.new("UICorner", SizeBox)
UICornerSize.CornerRadius = UDim.new(0, 6)

-- Slider bar
local SliderFrame = Instance.new("Frame", Frame)
SliderFrame.Size = UDim2.new(0, 250, 0, 6)
SliderFrame.Position = UDim2.new(0, 50, 0, 115)
SliderFrame.BackgroundColor3 = Color3.fromRGB(80,80,80)
SliderFrame.BorderSizePixel = 0
local SliderFill = Instance.new("Frame", SliderFrame)
SliderFill.Size = UDim2.new(0.25, 0, 1, 0)
SliderFill.BackgroundColor3 = Color3.fromRGB(255,255,255)
SliderFill.BorderSizePixel = 0

local sliderHeld = false
SliderFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then sliderHeld = true end
end)
SliderFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then sliderHeld = false end
end)

RunService.RenderStepped:Connect(function()
    if sliderHeld then
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local percent = math.clamp((mouse.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
        SliderFill.Size = UDim2.new(percent, 0, 1, 0)
        local sizeValue = math.floor(percent * 100)  -- up to 100 studs
        SizeBox.Text = tostring(sizeValue)
    end
end)

SizeBox:GetPropertyChangedSignal("Text"):Connect(function()
    local num = tonumber(SizeBox.Text)
    if num then
        local percent = math.clamp(num/100, 0, 1)
        SliderFill.Size = UDim2.new(percent, 0, 1, 0)
    end
end)

-- 🎨 Color Sliders (RGB)
local ColorLabel = Instance.new("TextLabel", Frame)
ColorLabel.Text = "Hitbox Color:"
ColorLabel.Size = UDim2.new(0, 150, 0, 30)
ColorLabel.Position = UDim2.new(0, 20, 0, 150)
ColorLabel.BackgroundTransparency = 1
ColorLabel.TextColor3 = Color3.fromRGB(255,255,255)
ColorLabel.Font = Enum.Font.Gotham
ColorLabel.TextSize = 18

local color = {R=255,G=0,B=0}
local sliders = {}

local function makeColorSlider(name, yPos, default)
    local lbl = Instance.new("TextLabel", Frame)
    lbl.Text = name
    lbl.Size = UDim2.new(0, 20, 0, 20)
    lbl.Position = UDim2.new(0, 180, 0, yPos)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(255,255,255)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 16

    local bar = Instance.new("Frame", Frame)
    bar.Size = UDim2.new(0, 200, 0, 6)
    bar.Position = UDim2.new(0, 210, 0, yPos + 7)
    bar.BackgroundColor3 = Color3.fromRGB(80,80,80)
    bar.BorderSizePixel = 0

    local fill = Instance.new("Frame", bar)
    fill.Size = UDim2.new(default/255, 0, 1, 0)
    fill.BackgroundColor3 = name=="R" and Color3.fromRGB(255,0,0) or name=="G" and Color3.fromRGB(0,255,0) or Color3.fromRGB(0,0,255)
    fill.BorderSizePixel = 0

    local held = false
    bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then held = true end
    end)
    bar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then held = false end
    end)

    RunService.RenderStepped:Connect(function()
        if held then
            local mouse = LocalPlayer:GetMouse()
            local percent = math.clamp((mouse.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
            fill.Size = UDim2.new(percent, 0, 1, 0)
            color[name] = math.floor(percent * 255)
        end
    end)

    sliders[name] = fill
end

makeColorSlider("R", 180, 255)
makeColorSlider("G", 210, 0)
makeColorSlider("B", 240, 0)

-- ⚡ Reach Toggle
local ReachToggle = Instance.new("TextButton", Frame)
ReachToggle.Size = UDim2.new(0, 200, 0, 50)
ReachToggle.Position = UDim2.new(0.5, -100, 1, -70)
ReachToggle.Text = "Reach: OFF"
ReachToggle.BackgroundColor3 = Color3.fromRGB(120, 30, 30)
ReachToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
ReachToggle.Font = Enum.Font.GothamBold
ReachToggle.TextSize = 20

local UICornerToggle = Instance.new("UICorner", ReachToggle)
UICornerToggle.CornerRadius = UDim.new(0, 6)

local reachEnabled = false
ReachToggle.MouseButton1Click:Connect(function()
    reachEnabled = not reachEnabled
    ReachToggle.Text = reachEnabled and "Reach: ON" or "Reach: OFF"
    ReachToggle.BackgroundColor3 = reachEnabled and Color3.fromRGB(30,120,30) or Color3.fromRGB(120,30,30)
end)

-- 🔥 Live Update Reach
RunService.RenderStepped:Connect(function()
    if reachEnabled then
        local tool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if tool then
            local handle = tool:FindFirstChild("Handle")
            if handle and handle:IsA("BasePart") then
                -- Size update
                local newSize = tonumber(SizeBox.Text) or 25
                handle.Size = Vector3.new(newSize, newSize, newSize)
                handle.Massless = true
                handle.CanCollide = false

                -- Remove old visuals
                for _, child in ipairs(handle:GetChildren()) do
                    if child:IsA("SelectionBox") or child:IsA("SelectionSphere") then
                        child:Destroy()
                    end
                end

                -- Draw hitbox
                if shapeMode == "Box" then
                    local box = Instance.new("SelectionBox", handle)
                    box.Adornee = handle
                    box.Color3 = Color3.fromRGB(color.R, color.G, color.B)
                    box.LineThickness = 0.05
                else
                    local sphere = Instance.new("SelectionSphere", handle)
                    sphere.Adornee = handle
                    sphere.Color3 = Color3.fromRGB(color.R, color.G, color.B)
                    sphere.SurfaceTransparency = 0.8
                end
            end
        end
    end
end)
