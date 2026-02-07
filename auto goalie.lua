local ball

local char = game.Players.LocalPlayer.Character

local con 
local mouse = game.Players.LocalPlayer:GetMouse()

local con2
con2 = mouse.KeyDown:Connect(function(key)
	if key ~= "g" then return end

	con2:Disconnect()
	con:Disconnect()
end)

local limitsX = {
	20, 90
}
local limitsY = {
	2.7, 12
}

local con3
con3 = mouse.KeyDown:Connect(function(key)
	if key ~= "h" then return end

	for _, v in workspace["game"]:GetDescendants() do
		if v:FindFirstChild("centre") then
			ball = v
		end
	end
	con = game.RunService.RenderStepped:Connect(function()
		local x = ball.Position.X
		if x > limitsX[2] then
			return
		elseif x < limitsX[1] then
			return
		end
		
		local y = ball.Position.Y+2.4
		if y > limitsY[2] then
			return
		elseif y < limitsY[1] then
			return
		end
		
		char.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x, y, char.HumanoidRootPart.Position.Z))
	end)
end)

local con4
con4 = mouse.KeyDown:Connect(function(key)
	if key ~= "j" then return end

	con2:Disconnect()
	con:Disconnect()
	con3:Disconnect()
	con4:Disconnect()
end)
