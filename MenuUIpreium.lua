-- ==========================
-- 🧠 XANE NEXUS DECOMPILER PREMIUMFREE v4
-- SUPER PROFESSIONAL VERSION
-- ==========================

local password = "bnkjwbduihw93yh12hhnp98duy8w12jih0di8hgf978t39psigadp912uh","duihqw98y4e12312321f43534gfdfbdfhahbiowi8ugya98iwhfff232"
local attempts = 0

-- ===== Utility Function: Log to F9 Console =====
local function log(msg)
	print(msg) -- F9 console
end

log("✅Access Attachment")
log("✅Access Attachment")

-- ===== Create GUI =====
local gui = Instance.new("ScreenGui")
gui.Name = "COPY GAME BY XANE NEXUS"
gui.Parent = game.CoreGui

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 440, 0, 280)
frame.Position = UDim2.new(0.5, -220, 0.5, -140)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local frameCorner = Instance.new("UICorner", frame)
frameCorner.CornerRadius = UDim.new(0, 8)

---------------------------------------------------------
-- 🔥 LED RGB
---------------------------------------------------------
local border = Instance.new("UIStroke")
border.Thickness = 2
border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
border.Color = Color3.fromRGB(0, 150, 255)
border.Parent = frame

task.spawn(function()
	local TweenService = game:GetService("TweenService")
	while true do
		TweenService:Create(border, TweenInfo.new(1, Enum.EasingStyle.Quad), {
			Color = Color3.fromRGB(math.random(50,255), math.random(50,255), math.random(50,255))
		}):Play()
		task.wait(1)
	end
end)

---------------------------------------------------------
-- 🔥 LOGO LED RGB
---------------------------------------------------------
local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 65, 0, 65)
logo.Position = UDim2.new(1, -75, 1, -75) 
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://137786147102494"
logo.Parent = frame

local logoLED = Instance.new("UIStroke")
logoLED.Thickness = 2
logoLED.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
logoLED.Color = Color3.fromRGB(0, 255, 200)
logoLED.Parent = logo

task.spawn(function()
	local TweenService = game:GetService("TweenService")
	while true do
		TweenService:Create(logoLED, TweenInfo.new(1, Enum.EasingStyle.Quad), {
			Color = Color3.fromRGB(math.random(50,255), math.random(50,255), math.random(50,255))
		}):Play()
		task.wait(1)
	end
end)

---------------------------------------------------------
-- Title
---------------------------------------------------------
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
title.Text = "🧠 XANE NEXUS DECOMPILER PREMIUM"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextStrokeTransparency = 0.7
title.Parent = frame

local titleCorner = Instance.new("UICorner", title)
titleCorner.CornerRadius = UDim.new(0, 8)

---------------------------------------------------------
-- Password Input
---------------------------------------------------------
local input = Instance.new("TextBox")
input.Size = UDim2.new(1, -40, 0, 35)
input.Position = UDim2.new(0, 20, 0, 65)
input.PlaceholderText = "🔒 Enter Password"
input.Text = ""
input.Font = Enum.Font.Gotham
input.TextSize = 16
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
input.ClearTextOnFocus = false
input.Parent = frame

local inputCorner = Instance.new("UICorner", input)
inputCorner.CornerRadius = UDim.new(0, 4)

---------------------------------------------------------
-- Unlock Button
---------------------------------------------------------
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -40, 0, 40)
button.Position = UDim2.new(0, 20, 0, 115)
button.Text = "🔓 Unlock"
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.Parent = frame

local buttonCorner = Instance.new("UICorner", button)
buttonCorner.CornerRadius = UDim.new(0, 4)

---------------------------------------------------------
-- Copy Button (hidden)
---------------------------------------------------------
local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(1, -40, 0, 40)
copyButton.Position = UDim2.new(0, 20, 0, 165)
copyButton.Text = "📁 Copy with Scripts!"
copyButton.Font = Enum.Font.GothamBold
copyButton.TextSize = 18
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
copyButton.Visible = false
copyButton.Parent = frame

local copyCorner = Instance.new("UICorner", copyButton)
copyCorner.CornerRadius = UDim.new(0, 4)

---------------------------------------------------------
-- Status Label
---------------------------------------------------------
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -40, 0, 30)
status.Position = UDim2.new(0, 20, 0, 215)
status.BackgroundTransparency = 1
status.Text = "🔧 Status: Waiting for password..."
status.Font = Enum.Font.Gotham
status.TextSize = 14
status.TextColor3 = Color3.fromRGB(180, 180, 180)
status.TextXAlignment = Enum.TextXAlignment.Left
status.Parent = frame

---------------------------------------------------------
-- Footer
---------------------------------------------------------
local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1, 0, 0, 30)
footer.Position = UDim2.new(0, 0, 1, -30)
footer.BackgroundTransparency = 1
footer.Text = " Made by  XANE NEXUS "
footer.Font = Enum.Font.Gotham
footer.TextSize = 14
footer.TextColor3 = Color3.fromRGB(180, 180, 180)
footer.Parent = frame

---------------------------------------------------------
-- ===== Unlock Logic =====
---------------------------------------------------------
button.MouseButton1Click:Connect(function()
	if input.Text == password then
		title.Text = "✅ Access Leak"
		status.Text = "🔓 Unlocked. Click 'Copy with Scripts!'"
		copyButton.Visible = true
		button.Visible = false
		input.Visible = false
		log("✅Access Leak")
    log("✅Access GUI")
    log("✅Access Attachment")
    log("⚠ really copy?")
    log("⚠ really copy?")
	else
		attempts += 1
		status.Text = "❌ Wrong Password (" .. attempts .. "/3)"
		log("Wrong Password Attempt " .. attempts)

		if attempts >= 3 then
			title.Text = "⛔ Too Many Failed Attempts"
			log("GUI Locked due to too many attempts")
			wait(1)
			gui:Destroy()
		end
	end
end)

---------------------------------------------------------
-- ===== Copy Button Logic =====
---------------------------------------------------------
copyButton.MouseButton1Click:Connect(function()
	status.Text = "📁 Copying game with scripts..."
	log("💫Started copying game...")
	log("🌐Loading...")
  log("✅Access Attachment")

	local success, err = pcall(function()
		local saveinstance = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xanenexus/Preium/refs/heads/main/Univerinstance.lua"))()
		saveinstance({
			FileName = "ModelCopy_"..game.PlaceId..".rbxlx",
			Decompile = true,
			IncludeScripts = true,
			CreatorTag = "Copied by  PREMIUM | Thanks for buying!"
		})
	end)

	if success then
		status.Text = "✅ Game copied & saved."
		log("✅Game copied successfully.")
		log("✅leaked model.")
    log("✅attackment.")
    log("✅save in Cilent local file.")
    warn ("Cilent Decompiler")
    log("✅waiting.")
    log("✅Access Attachment")
	else
		status.Text = "❌ Failed to copy: "..tostring(err)
		log("❌Failed to copy game: "..tostring(err))
	end
end)
