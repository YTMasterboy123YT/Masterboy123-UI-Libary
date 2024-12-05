local sceenGUI = Instance.new("ScreenGui")
local FRame = Instance.new("Frame")
local ui = Instance.new("UICorner")
local textlable = Instance.new("TextLabel")
local framez = Instance.new("Frame")
local textboxspeed = Instance.new("TextBox")
local uispeed = Instance.new("UICorner")
local numbervalue = Instance.new("NumberValue")
local buttonchange = Instance.new("TextButton")
local autokilllstop = Instance.new("TextButton")
local uikillplayerauto = Instance.new("UICorner")
local uiautokillstop = Instance.new("UICorner")
local frame2 = Instance.new("Frame")

local butonclose = Instance.new("TextButton")
local uizaaq = Instance.new("UICorner")

butonclose.Text = "Close"
butonclose.BackgroundColor3 = Color3.fromHSV(0, 0.827451, 1)
butonclose.TextColor3 = Color3.new(1, 1, 1)
butonclose.Name = "closebtn"
butonclose.TextScaled = true
butonclose.Size = UDim2.new(0.103, 0,0.051, 0)
butonclose.Position = UDim2.new(0.01, 0,0.937, 0)
butonclose.Parent = sceenGUI
uizaaq.CornerRadius = UDim.new(0.2, 0)
uizaaq.Parent = butonclose

-----list-----------
local listframe = Instance.new("Frame")--
local uilistframe = Instance.new("UICorner")--
local framewhite = Instance.new("Frame")--
local textup = Instance.new("TextLabel")--
local scrollingplayers = Instance.new("ScrollingFrame")--
local listlayutscrool = Instance.new("UIListLayout")--
local playerframe = Instance.new("Frame")--
local uiplayerframe = Instance.new("UICorner")--
local imageplayer = Instance.new("ImageLabel")--
local nameplayer = Instance.new("TextLabel")--
local buttonpast = Instance.new("TextButton")
local buttonteleport = Instance.new("TextButton")
local uibutton1 = Instance.new("UICorner")
local uibutton2 = Instance.new("UICorner")
local localscripts = Instance.new("LocalScript")--
localscripts.Parent = sceenGUI


-----Edition-----
listframe.BackgroundColor3 = Color3.fromHSV(0, 0, 0.121569)
listframe.Size = UDim2.new(0.351, 0,0.711, 0)
listframe.Position = UDim2.new(0.324, 0,0.144, 0)
uilistframe.Parent = listframe
listframe.Name = "list"
listframe.Visible = false
listframe.Parent = sceenGUI








local disablepunch = Instance.new("TextButton")
local uuuuuydd = Instance.new("UICorner")
disablepunch.Text = "DisableAnimation(Punch)"
disablepunch.Position = UDim2.new(0.53, 0,1.013, 0)
disablepunch.Size = UDim2.new(0.379, 0,0.076, 0)
disablepunch.BackgroundTransparency = 0.05
disablepunch.BackgroundColor3 = Color3.fromHSV(0.181556, 0.275868, 0.796078)
disablepunch.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
disablepunch.Name = "DisableAnimation(Punch)"
disablepunch.TextScaled = true
disablepunch.Parent = FRame
uuuuuydd.Parent = disablepunch
disablepunch.MouseButton1Click:Connect(function()
	pcall(function()
		game:GetService("Players").LocalPlayer.Backpack.Punch.RequiresHandle = true
	end)
end)






local speedfast = Instance.new("TextButton")
local uuuuuy = Instance.new("UICorner")
speedfast.Text = "Fast Speed"
speedfast.Position = UDim2.new(0.099, 0,1.013, 0)
speedfast.Size = UDim2.new(0.379, 0,0.076, 0)
speedfast.BackgroundTransparency = 0.05
speedfast.BackgroundColor3 = Color3.fromHSV(0.181556, 0.275868, 0.796078)
speedfast.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
speedfast.Name = "1500speed"
speedfast.TextScaled = true
speedfast.Parent = FRame
uuuuuy.Parent = speedfast
speedfast.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1500 
	
end)


--------------------
framewhite.BackgroundColor3 = Color3.fromHSV(0, 0, 1)
framewhite.Size = UDim2.new(1, 0,0.002, 0)
framewhite.Position = UDim2.new(0, 0,0.06, 0)
framewhite.Parent = listframe
--
textup.Position = UDim2.new(0, 0,0, 0)
textup.Size = UDim2.new(1, 0,0.063, 0)
textup.TextColor3 = Color3.new(1, 1, 1)
textup.Text = "List Players"
textup.BackgroundTransparency = 1
textup.TextScaled = true
textup.Parent = listframe
--
scrollingplayers.Position = UDim2.new(0, 0,0.408, 0)
scrollingplayers.Size = UDim2.new(1, 0,0.592, 0)
scrollingplayers.BackgroundTransparency = 1
scrollingplayers.CanvasSize = UDim2.new(0, 0,2.5, 0)
scrollingplayers.Parent = FRame
listlayutscrool.Padding = UDim.new(0.002, 0)
listlayutscrool.Parent = scrollingplayers
--
playerframe.Position = UDim2.new(0, 0,0, 0)
playerframe.Size = UDim2.new(0.962, 0,0.04, 0)
playerframe.BackgroundColor3 = Color3.fromHSV(0, 0, 0)
playerframe.Parent = localscripts
playerframe.Name = "PlayerFrame"
uiplayerframe.Parent = playerframe


imageplayer.Position = UDim2.new(0, 0,0, 0)
imageplayer.Size = UDim2.new(0.157, 0,1, 0)
imageplayer.BackgroundTransparency = 1
imageplayer.Parent = playerframe

nameplayer.Position = UDim2.new(0.157, 0,0, 0)
nameplayer.Size = UDim2.new(0.463, 0,1, 0)
nameplayer.TextColor3 = Color3.new(1, 1, 1)
nameplayer.BackgroundTransparency = 1
nameplayer.TextScaled = true
nameplayer.Parent = playerframe

----
buttonpast.Text = "Past"
buttonpast.Position = UDim2.new(0.697, 0,0, 3)
buttonpast.Size = UDim2.new(0.303, 0,0.397, 0)
buttonpast.BackgroundTransparency = 0.05
buttonpast.BackgroundColor3 = Color3.fromHSV(0, 0.839216, 1)
buttonpast.TextColor3 = Color3.new(1, 1, 1)
buttonpast.Name = "past"
buttonpast.TextScaled = true
buttonpast.Parent = playerframe
buttonpast.TextStrokeTransparency = 0.7
uibutton1.Parent = buttonpast



buttonteleport.Text = "Teleport"
buttonteleport.Position = UDim2.new(0.697, 0,0.603, -3)
buttonteleport.Size = UDim2.new(0.303, 0,0.397, 0)
buttonteleport.BackgroundTransparency = 0.05
buttonteleport.BackgroundColor3 = Color3.fromHSV(0.297472, 0.87451, 1)
buttonteleport.TextColor3 = Color3.new(1, 1, 1)
buttonteleport.Name = "teleport"
buttonteleport.TextScaled = true
buttonteleport.TextStrokeTransparency = 0.7
buttonteleport.Parent = playerframe
uibutton2.Parent = buttonteleport

















--------------------
local buttonteleport = Instance.new("TextButton")
local buttonplayer = Instance.new("TextButton")
local ui11 = Instance.new("UICorner")
local ui2 = Instance.new("UICorner")

frame2.Size = UDim2.new(1, 0,0.002, 0)
frame2.Position = UDim2.new(0, 0,0.408, 0)
frame2.Parent = FRame
frame2.Name = "Frame2"

local btnnn = Instance.new("TextButton")

btnnn.Parent = sceenGUI

uikillplayerauto.Parent = buttonchange
buttonchange.Parent = FRame
buttonchange.Text = "Auto Kill"
buttonchange.Name = "changebtn"
buttonchange.BackgroundColor3 = Color3.fromHSV(0.181556, 0.275868, 0.796078)
buttonchange.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
buttonchange.Size = UDim2.new(0.346, 0,0.087, 0)
buttonchange.Position = UDim2.new(0.324, 0,0.185, 0)
buttonchange.TextScaled = true



uiautokillstop.Parent = autokilllstop
autokilllstop.Parent = FRame
autokilllstop.Text = "Stop Auto Kill"
autokilllstop.Name = "stopautokill"
autokilllstop.BackgroundColor3 = Color3.fromHSV(0.181556, 0.275868, 0.796078)
autokilllstop.TextColor3 = Color3.new(0.156863, 0.156863, 0.156863)
autokilllstop.Size = UDim2.new(0.346, 0,0.087, 0)
autokilllstop.Position = UDim2.new(0.324, 0,0.29, 0)
autokilllstop.TextScaled = true

















local autokillplayerlocal = true


autokilllstop.MouseButton1Click:Connect(function()
	autokillplayerlocal = false
end)

buttonchange.MouseButton1Click:Connect(function()
	autokillplayerlocal = true
	local charkterkiller = game.Players:WaitForChild(textboxspeed.Text).Character---
	charkterkiller.Head.nameGui:Clone().Parent = charkterkiller.UpperTorso----




	while wait() do	----
		if autokillplayerlocal == true then--
			pcall(function()
				local charkterkiller = game.Players:WaitForChild(textboxspeed.Text).Character
				local mycharacter = game.Players:WaitForChild(game.Players.LocalPlayer.Name).Character
				charkterkiller.Head.Anchored = true
				charkterkiller.Head.CanCollide = false

				pcall(function()


					if charkterkiller.Head.Neck.Name == "Neck" and charkterkiller.Head.nameGui then
						charkterkiller.Head.nameGui:Clone().Parent = charkterkiller.UpperTorso----
						charkterkiller.Head.Neck:Destroy()
						charkterkiller.Head.nameGui:Destroy()
						charkterkiller.Head.Transparency = 1
						charkterkiller.Head.Face:Destroy()
					end
				end)
				pcall(function()
					local args = {[1] = "punch",[2] = "leftHand"}

					game:GetService("Players").LocalPlayer.muscleEvent:FireServer(unpack(args))

					local args = {[1] = "punch",[2] = "rightHand"}

					game:GetService("Players").LocalPlayer.muscleEvent:FireServer(unpack(args))
					wait()
					charkterkiller.Head.Position = Vector3.new(mycharacter.LeftHand.Position.X,mycharacter.LeftHand.Position.Y,mycharacter.LeftHand.Position.Z)
				end)
			end)
		end
	end-- if
end)----





uispeed.Parent = textboxspeed
textboxspeed.Text = "UserPlayer"
textboxspeed.Parent = FRame
textboxspeed.BackgroundTransparency = 0
textboxspeed.BackgroundColor3 = Color3.fromHSV(0, 0, 0.0666667)
textboxspeed.Name = "speedtextbox"
textboxspeed.TextScaled = true
textboxspeed.TextColor3 = Color3.new(1, 1, 1)
textboxspeed.Size = UDim2.new(0.563, 0,0.089, 0)
textboxspeed.Position = UDim2.new(0.217, 0,0.08, 0)
numbervalue.Parent = textboxspeed


framez.Size = UDim2.new(1, 0,0.002, 0)
framez.Parent = FRame
framez.Position = UDim2.new(0, 0,0.06, 0)

sceenGUI.ResetOnSpawn = false
sceenGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
sceenGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FRame.Parent = sceenGUI
FRame.Position = UDim2.new(0.324, 0,0.144, 0)
FRame.BackgroundColor3 = Color3.fromHSV(0, 0, 0.121569)
FRame.Size = UDim2.new(0.351, 0,0.711, 0)
FRame.Draggable = true
FRame.Active = true

textlable.Parent = FRame
textlable.BackgroundTransparency = 1
textlable.Text = "Welcome to script cherif V2"
textlable.TextScaled = true
textlable.TextColor3 = Color3.new(1, 1, 1)
textlable.Position = UDim2.new(0, 0,0, 0)
textlable.Size = UDim2.new(1, 0,0.063, 0)




ui.Parent = FRame



local template = sceenGUI.LocalScript.PlayerFrame
local scroller = sceenGUI.Frame.ScrollingFrame

function updatePlayers() 
	for i, child in pairs(scroller:GetChildren()) do		
		if child:IsA("Frame") then child:Destroy() end
	end

	for i, plr in pairs(game.Players:GetPlayers()) do		

		local templateClone = template:Clone()
		sceenGUI.LocalScript.PlayerFrame.TextLabel.Text = plr.DisplayName
		if plr.Name == game.Players.LocalPlayer.Name then

		else
			sceenGUI.LocalScript.PlayerFrame:Clone().Parent = sceenGUI.Frame.ScrollingFrame
			sceenGUI.Frame.ScrollingFrame.PlayerFrame.Name = plr.Name

			local Players = game:GetService("Players")
			local imagelabel = sceenGUI.Frame.ScrollingFrame:FindFirstChild(plr.Name).ImageLabel
			imagelabel.Image = Players:GetUserThumbnailAsync(plr.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)


			sceenGUI.Frame.ScrollingFrame:FindFirstChild(plr.Name).teleport.MouseButton1Click:Connect(function()
				local player = game.Players.LocalPlayer
				player.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(plr.Name).Character.HumanoidRootPart.CFrame
			end)


			sceenGUI.Frame.ScrollingFrame:FindFirstChild(plr.Name).past.MouseButton1Click:Connect(function()
				sceenGUI.Frame.speedtextbox.Text = plr.Name
			end)
		end

	end
end

butonclose.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	if player.PlayerGui.ScreenGui.Frame.Visible == true then
		player.PlayerGui.ScreenGui.Frame.Visible = false
		sceenGUI.closebtn.Text = "Open"
		sceenGUI.closebtn.BackgroundColor3 = Color3.fromHSV(0.296722, 0.852216, 0.796078)
	else
		player.PlayerGui.ScreenGui.Frame.Visible = true
		sceenGUI.closebtn.Text = "Close"
		sceenGUI.closebtn.BackgroundColor3 = Color3.fromHSV(0, 0.827451, 1)
	end
end)



---game.Players.PlayerAdded:Connect(updatePlayers)
---game.Players.PlayerRemoving:Connect(updatePlayers)

local timee = 1

while wait(timee) do
	timee = 15
	updatePlayers()
end
