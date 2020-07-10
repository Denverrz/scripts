--[[
Join the discord server:
https://discord.gg/WbPWut2
]]

local OldLoadstring = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Note = Instance.new("TextLabel")
local CopyBtn = Instance.new("TextButton")
local DiscordServer = Instance.new("TextBox")
local CloseBtn = Instance.new("TextButton")

OldLoadstring.Name = "OldLoadstring"
OldLoadstring.Parent = game.CoreGui
OldLoadstring.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = OldLoadstring
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.336605877, 0, 0.304780871, 0)
Main.Size = UDim2.new(0, 232, 0, 186)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 232, 0, 43)
Title.Font = Enum.Font.Gotham
Title.Text = "Looking for Zyrex Hub?"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000

Note.Name = "Note"
Note.Parent = Main
Note.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Note.BackgroundTransparency = 1.000
Note.BorderSizePixel = 0
Note.Position = UDim2.new(0.0387931019, 0, 0.219387755, 0)
Note.Size = UDim2.new(0, 214, 0, 64)
Note.Font = Enum.Font.Gotham
Note.Text = "The loadstring has been moved. Join the discord server to get the new loadstring."
Note.TextColor3 = Color3.fromRGB(255, 255, 255)
Note.TextSize = 14.000
Note.TextWrapped = true

CopyBtn.Name = "CopyBtn"
CopyBtn.Parent = Main
CopyBtn.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
CopyBtn.BorderSizePixel = 0
CopyBtn.Position = UDim2.new(0.75, 0, 0.562047362, 0)
CopyBtn.Size = UDim2.new(0, 49, 0, 29)
CopyBtn.Font = Enum.Font.Gotham
CopyBtn.Text = "Copy"
CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyBtn.TextSize = 14.000
CopyBtn.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/WbPWut2")
end)

DiscordServer.Name = "DiscordServer"
DiscordServer.Parent = Main
DiscordServer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordServer.Position = UDim2.new(0.0387931019, 0, 0.562047362, 0)
DiscordServer.Size = UDim2.new(0, 158, 0, 29)
DiscordServer.ClearTextOnFocus = false
DiscordServer.Font = Enum.Font.SourceSans
DiscordServer.Text = "https://discord.gg/WbPWut2"
DiscordServer.TextColor3 = Color3.fromRGB(0, 0, 0)
DiscordServer.TextSize = 14.000

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = Main
CloseBtn.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
CloseBtn.BorderSizePixel = 0
CloseBtn.Position = UDim2.new(0.0387931019, 0, 0.792736471, 0)
CloseBtn.Size = UDim2.new(0, 214, 0, 29)
CloseBtn.Font = Enum.Font.Gotham
CloseBtn.Text = "Close"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14.000
CloseBtn.MouseButton1Click:Connect(function()
	OldLoadstring:Destroy()
end)
