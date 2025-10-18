-- Baozhub.infkey - Neon Drag + Key Unlock (Delta Fixed)
-- Key mở menu: baozcomunity

local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local SCREEN_NAME = "Baozhub.infkey"
local UNLOCK_KEY = "baozcomunity"
local scriptCode = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()'
local keyCode = "rMChVgMZYJYHMGNtMvYkvDKasUFztRuG"

-- Xóa GUI cũ nếu có
local old = player:FindFirstChildOfClass("PlayerGui"):FindFirstChild(SCREEN_NAME)
if old then old:Destroy() end

-- Giao diện chính
local gui = Instance.new("ScreenGui")
gui.Name = SCREEN_NAME
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame nhập key
local lockFrame = Instance.new("Frame", gui)
lockFrame.Size = UDim2.new(0, 420, 0, 160)
lockFrame.AnchorPoint = Vector2.new(0.5, 0.5)
lockFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
lockFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
Instance.new("UICorner", lockFrame).CornerRadius = UDim.new(0, 12)

local lockLabel = Instance.new("TextLabel", lockFrame)
lockLabel.Size = UDim2.new(1, -20, 0, 28)
lockLabel.Position = UDim2.new(0, 10, 0, 8)
lockLabel.BackgroundTransparency = 1
lockLabel.Text = "Baozhub.infkey - Enter Key"
lockLabel.Font = Enum.Font.GothamBold
lockLabel.TextColor3 = Color3.fromRGB(0, 255, 180)
lockLabel.TextSize = 18
lockLabel.TextXAlignment = Enum.TextXAlignment.Left

local keyBox = Instance.new("TextBox", lockFrame)
keyBox.Size = UDim2.new(1, -20, 0, 40)
keyBox.Position = UDim2.new(0, 10, 0, 46)
keyBox.PlaceholderText = "Nhập key..."
keyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
keyBox.ClearTextOnFocus = false
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255) -- ✅ chữ trắng
keyBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150) -- ✅ placeholder sáng
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 18
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 8)
local boxStroke = Instance.new("UIStroke", keyBox)
boxStroke.Color = Color3.fromRGB(0, 255, 180)
boxStroke.Thickness = 1.5

local unlockBtn = Instance.new("TextButton", lockFrame)
unlockBtn.Size = UDim2.new(0, 120, 0, 36)
unlockBtn.Position = UDim2.new(1, -140, 1, -46)
unlockBtn.Text = "Unlock"
unlockBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 120)
unlockBtn.Font = Enum.Font.GothamBold
unlockBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
unlockBtn.TextSize = 17
Instance.new("UICorner", unlockBtn).CornerRadius = UDim.new(0, 8)

local lockStatus = Instance.new("TextLabel", lockFrame)
lockStatus.Size = UDim2.new(1, -160, 0, 28)
lockStatus.Position = UDim2.new(0, 10, 1, -46)
lockStatus.BackgroundTransparency = 1
lockStatus.TextColor3 = Color3.fromRGB(255, 180, 180)
lockStatus.Font = Enum.Font.Gotham
lockStatus.Text = ""

-- Menu chính
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 420, 0, 230)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.BackgroundColor3 = Color3.fromRGB(10, 10, 14)
main.Visible = false
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)
local stroke = Instance.new("UIStroke", main)
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(0, 255, 180)

-- Header (kéo menu)
local header = Instance.new("Frame", main)
header.Size = UDim2.new(1, 0, 0, 36)
header.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
Instance.new("UICorner", header).CornerRadius = UDim.new(0, 14)

local title = Instance.new("TextLabel", header)
title.Size = UDim2.new(1, -50, 1, 0)
title.Position = UDim2.new(0, 12, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Baozhub.infkey"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(0, 255, 180)
title.TextXAlignment = Enum.TextXAlignment.Left

-- Nút toggle menu
local toggle = Instance.new("TextButton", gui)
toggle.Size = UDim2.new(0, 50, 0, 50)
toggle.Position = UDim2.new(0, 20, 1, -80)
toggle.Text = "⚡"
toggle.Font = Enum.Font.GothamBold
Instance.new("UICorner", toggle).CornerRadius = UDim.new(1, 0)
local glow = Instance.new("UIStroke", toggle)
glow.Color = Color3.fromRGB(0, 255, 180)

-- Nội dung chính
local content = Instance.new("Frame", main)
content.Position = UDim2.new(0, 10, 0, 46)
content.Size = UDim2.new(1, -20, 1, -56)
content.BackgroundTransparency = 1

local info = Instance.new("TextLabel", content)
info.Size = UDim2.new(1, 0, 0, 28)
info.BackgroundTransparency = 1
info.Text = "Hello, " .. player.Name
info.Font = Enum.Font.Gotham
info.TextColor3 = Color3.fromRGB(0, 255, 180)

local btnScript = Instance.new("TextButton", content)
btnScript.Size = UDim2.new(1, -20, 0, 48)
btnScript.Position = UDim2.new(0, 0, 0, 40)
btnScript.Text = "Script SpeedX"
btnScript.Font = Enum.Font.GothamBold
btnScript.TextSize = 17
btnScript.BackgroundColor3 = Color3.fromRGB(0, 50, 50)
Instance.new("UICorner", btnScript).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", btnScript).Color = Color3.fromRGB(0, 255, 180)

local btnKey = Instance.new("TextButton", content)
btnKey.Size = UDim2.new(1, -20, 0, 48)
btnKey.Position = UDim2.new(0, 0, 0, 98)
btnKey.Text = "Key Inf"
btnKey.Font = Enum.Font.GothamBold
btnKey.TextSize = 17
btnKey.BackgroundColor3 = Color3.fromRGB(0, 50, 40)
Instance.new("UICorner", btnKey).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", btnKey).Color = Color3.fromRGB(0, 255, 180)

-- Copy helper
local function copyText(text)
	if setclipboard then
		setclipboard(text)
		info.Text = "✅ Copied!"
	else
		info.Text = "⚠️ Không thể copy"
	end
	task.wait(1.2)
	info.Text = "Hello, " .. player.Name
end

btnScript.MouseButton1Click:Connect(function() copyText(scriptCode) end)
btnKey.MouseButton1Click:Connect(function() copyText(keyCode) end)

-- Toggle menu
local open = true
toggle.MouseButton1Click:Connect(function()
	open = not open
	main.Visible = open
end)

-- Unlock
local function unlock()
	if string.lower(keyBox.Text or "") == UNLOCK_KEY then
		lockStatus.Text = "Đúng key! Đang mở menu..."
		task.wait(0.3)
		lockFrame:Destroy()
		main.Visible = true
	else
		lockStatus.Text = "❌ Key sai!"
	end
end

unlockBtn.MouseButton1Click:Connect(unlock)
keyBox.FocusLost:Connect(function(e) if e then unlock() end end)

-- Neon chuyển màu
task.spawn(function()
	while gui.Parent do
		local c = Color3.fromHSV((tick() % 5) / 5, 1, 1)
		stroke.Color = c
		glow.Color = c
		title.TextColor3 = c
		boxStroke.Color = c
		task.wait(0.05)
	end
end)

-- Kéo menu
local dragging = false
local dragOffset

header.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		local mousePos = UIS:GetMouseLocation()
		dragOffset = Vector2.new(mousePos.X - main.AbsolutePosition.X, mousePos.Y - main.AbsolutePosition.Y)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

RunService.RenderStepped:Connect(function()
	if dragging then
		local mousePos = UIS:GetMouseLocation()
		local newPos = Vector2.new(mousePos.X - dragOffset.X, mousePos.Y - dragOffset.Y)
		main.Position = UDim2.new(0, newPos.X, 0, newPos.Y)
	end
end)
