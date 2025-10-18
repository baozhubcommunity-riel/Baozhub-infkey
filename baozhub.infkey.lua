-- Baozhub.infkey - Version for Delta Executor
-- Key mở menu chính: "baozcomunity"

local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
if not player then return end

local SCREEN_NAME = "Baozhub.infkey"
local UNLOCK_KEY = "baozcomunity"
local scriptCode = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()'
local keyCode = "rMChVgMZYJYHMGNtMvYkvDKasUFztRuG"

-- Xóa GUI cũ nếu có
local old = player.PlayerGui:FindFirstChild(SCREEN_NAME)
if old then old:Destroy() end

local gui = Instance.new("ScreenGui")
gui.Name = SCREEN_NAME
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- ==== Lock Frame ====
local lockFrame = Instance.new("Frame")
lockFrame.Size = UDim2.new(0, 420, 0, 160)
lockFrame.Position = UDim2.new(0.5, -210, 0.5, -80)
lockFrame.AnchorPoint = Vector2.new(0.5, 0.5)
lockFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
lockFrame.Parent = gui
Instance.new("UICorner", lockFrame).CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", lockFrame)
title.Size = UDim2.new(1, -20, 0, 30)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundTransparency = 1
title.Text = "Baozhub.infkey - Enter Key"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(0, 255, 180)
title.TextXAlignment = Enum.TextXAlignment.Left

local box = Instance.new("TextBox", lockFrame)
box.Size = UDim2.new(1, -20, 0, 40)
box.Position = UDim2.new(0, 10, 0, 60)
box.PlaceholderText = "Nhập key ở đây..."
box.TextColor3 = Color3.new(1, 1, 1)
box.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
box.Font = Enum.Font.Gotham
box.TextSize = 16
box.ClearTextOnFocus = false
Instance.new("UICorner", box).CornerRadius = UDim.new(0, 8)

local unlock = Instance.new("TextButton", lockFrame)
unlock.Size = UDim2.new(0, 120, 0, 36)
unlock.Position = UDim2.new(1, -130, 1, -46)
unlock.Text = "Unlock"
unlock.Font = Enum.Font.GothamBold
unlock.TextSize = 16
unlock.TextColor3 = Color3.fromRGB(255,255,255)
unlock.BackgroundColor3 = Color3.fromRGB(0,160,120)
Instance.new("UICorner", unlock).CornerRadius = UDim.new(0,8)

local status = Instance.new("TextLabel", lockFrame)
status.Size = UDim2.new(1, -150, 0, 28)
status.Position = UDim2.new(0,10,1,-46)
status.BackgroundTransparency = 1
status.Text = ""
status.Font = Enum.Font.Gotham
status.TextSize = 14
status.TextColor3 = Color3.fromRGB(255,200,200)
status.TextXAlignment = Enum.TextXAlignment.Left

-- ==== Main Frame ====
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 420, 0, 230)
main.Position = UDim2.new(0.5, -210, 0.5, -115)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(10,10,15)
main.Visible = false
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 15)
local stroke = Instance.new("UIStroke", main)
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(0,255,180)

local header = Instance.new("Frame", main)
header.Size = UDim2.new(1,0,0,35)
header.BackgroundColor3 = Color3.fromRGB(20,20,30)
header.BorderSizePixel = 0
Instance.new("UICorner", header).CornerRadius = UDim.new(0,15)

local headText = Instance.new("TextLabel", header)
headText.Size = UDim2.new(1, -50, 1, 0)
headText.Position = UDim2.new(0,10,0,0)
headText.BackgroundTransparency = 1
headText.Text = "Baozhub.infkey"
headText.Font = Enum.Font.GothamBold
headText.TextSize = 20
headText.TextColor3 = Color3.fromRGB(0,255,180)
headText.TextXAlignment = Enum.TextXAlignment.Left

-- Toggle button
local toggle = Instance.new("TextButton", gui)
toggle.Size = UDim2.new(0, 50, 0, 50)
toggle.Position = UDim2.new(0, 20, 1, -70)
toggle.BackgroundColor3 = Color3.fromRGB(0, 20, 20)
toggle.TextColor3 = Color3.fromRGB(0,255,180)
toggle.Text = "⚡"
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 26
Instance.new("UICorner", toggle).CornerRadius = UDim.new(1,0)
local glow = Instance.new("UIStroke", toggle)
glow.Color = Color3.fromRGB(0,255,180)

-- Nội dung
local frame = Instance.new("Frame", main)
frame.Size = UDim2.new(1, -20, 1, -50)
frame.Position = UDim2.new(0, 10, 0, 45)
frame.BackgroundTransparency = 1

local info = Instance.new("TextLabel", frame)
info.Size = UDim2.new(1,0,0,30)
info.Text = "Hello, " .. player.Name .. "!"
info.Font = Enum.Font.Gotham
info.TextSize = 18
info.BackgroundTransparency = 1
info.TextColor3 = Color3.fromRGB(0,255,180)

local btn1 = Instance.new("TextButton", frame)
btn1.Size = UDim2.new(1, -20, 0, 50)
btn1.Position = UDim2.new(0, 10, 0, 50)
btn1.Text = "Script SpeedX"
btn1.BackgroundColor3 = Color3.fromRGB(0,60,60)
btn1.TextColor3 = Color3.fromRGB(0,255,180)
btn1.Font = Enum.Font.GothamBold
btn1.TextSize = 18
Instance.new("UICorner", btn1).CornerRadius = UDim.new(0,10)
Instance.new("UIStroke", btn1).Color = Color3.fromRGB(0,255,180)

local btn2 = Instance.new("TextButton", frame)
btn2.Size = UDim2.new(1, -20, 0, 50)
btn2.Position = UDim2.new(0, 10, 0, 115)
btn2.Text = "Key Inf"
btn2.BackgroundColor3 = Color3.fromRGB(0,60,40)
btn2.TextColor3 = Color3.fromRGB(0,255,180)
btn2.Font = Enum.Font.GothamBold
btn2.TextSize = 18
Instance.new("UICorner", btn2).CornerRadius = UDim.new(0,10)
Instance.new("UIStroke", btn2).Color = Color3.fromRGB(0,255,180)

-- ==== Drag system (compatible Delta) ====
local dragging, dragStart, startPos
header.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = main.Position
	end
end)
UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)
UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

-- ==== Clipboard (Delta = toClipboard) ====
local function copyText(text)
	local ok = false
	if toClipboard then
		pcall(toClipboard, text)
		ok = true
	elseif setclipboard then
		pcall(setclipboard, text)
		ok = true
	end
	if ok then
		info.Text = "✅ Copied!"
	else
		info.Text = "⚠️ Không thể copy!"
	end
	task.wait(1)
	info.Text = "Hello, " .. player.Name .. "!"
end

btn1.MouseButton1Click:Connect(function() copyText(scriptCode) end)
btn2.MouseButton1Click:Connect(function() copyText(keyCode) end)

-- ==== Toggle show/hide ====
local visible = true
toggle.MouseButton1Click:Connect(function()
	visible = not visible
	main.Visible = visible
end)

-- ==== Unlock Logic ====
local function unlockMenu()
	if string.lower(box.Text) == UNLOCK_KEY then
		status.Text = "Đang mở menu..."
		task.wait(0.3)
		lockFrame:Destroy()
		main.Visible = true
	else
		status.Text = "❌ Key sai!"
	end
end

unlock.MouseButton1Click:Connect(unlockMenu)
box.FocusLost:Connect(function(enter)
	if enter then unlockMenu() end
end)

-- ==== Neon Animation ====
task.spawn(function()
	while gui.Parent do
		task.wait(0.05)
		local hue = tick() % 5 / 5
		local color = Color3.fromHSV(hue,1,1)
		stroke.Color = color
		glow.Color = color
		headText.TextColor3 = color
		btn1.TextColor3 = color
		btn2.TextColor3 = color
	end
end)
