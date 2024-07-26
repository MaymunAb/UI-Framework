local function createNotification(title, content, notificationTime)
	local TweenService = game:GetService("TweenService")
	local Notification = Instance.new("ScreenGui")
	local Notification_2 = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local Content = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke", Title)

	UIStroke.Color = Color3.new(1, 1, 1)
	UIStroke.Thickness = 2
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	Notification.Name = "Notification"
	Notification.Parent = game.CoreGui
	Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Notification_2.Name = "Notification"
	Notification_2.Parent = Notification
	Notification_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Notification_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notification_2.BorderSizePixel = 0
	Notification_2.Position = UDim2.new(0.720000029, 0, 0.829999983, 0)
	Notification_2.Size = UDim2.new(0.25, 0, 0.119999997, 0)

	Title.Name = "Title"
	Title.Parent = Notification_2
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(1, 0, 0.300000012, 0)
	Title.Font = Enum.Font.Unknown
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UICorner.Parent = Title

	Content.Name = "Content"
	Content.Parent = Notification_2
	Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content.BackgroundTransparency = 1.000
	Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content.BorderSizePixel = 0
	Content.Position = UDim2.new(0, 0, 0.300000012, 0)
	Content.Size = UDim2.new(1, 0, 0.699999988, 0)
	Content.Font = Enum.Font.Unknown
	Content.Text = content
	Content.TextColor3 = Color3.fromRGB(255, 255, 255)
	Content.TextSize = 22.000
	Content.TextWrapped = true

	UICorner_2.Parent = Notification_2
	
	local tween = TweenService:Create(Notification_2, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {Transparency = 0}):Play()
	wait(notificationTime)
	local tween = TweenService:Create(Notification_2, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {Transparency = 1}):Play()
end
wait(5)
createNotification("Bildirim", "ArdaT Test", 5)
