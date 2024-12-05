local AcrylicBlur = {}
AcrylicBlur.__index = AcrylicBlur

-- Services
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Constants
local BLUR_INTENSITY = 24
local TRANSPARENCY = 0.98
local TWEEN_TIME = 0.3

function AcrylicBlur.new()
    local self = setmetatable({}, AcrylicBlur)
    
    -- Create blur effect
    self.blur = Instance.new("BlurEffect")
    self.blur.Size = 0
    self.blur.Parent = game:GetService("Lighting")
    
    -- Create transparency effect
    self.transparency = Instance.new("Frame")
    self.transparency.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    self.transparency.BackgroundTransparency = 1
    self.transparency.Size = UDim2.fromScale(1, 1)
    self.transparency.Parent = nil
    
    -- Create noise texture
    self.noise = Instance.new("ImageLabel")
    self.noise.Image = "rbxassetid://8884904608" -- Noise texture
    self.noise.ScaleType = Enum.ScaleType.Tile
    self.noise.TileSize = UDim2.new(0, 128, 0, 128)
    self.noise.Size = UDim2.fromScale(1, 1)
    self.noise.ImageTransparency = 1
    self.noise.Parent = self.transparency
    
    return self
end

function AcrylicBlur:Apply(frame)
    -- Clone transparency frame
    local newTransparency = self.transparency:Clone()
    newTransparency.Parent = frame
    
    -- Apply blur effect
    local tweenInfo = TweenInfo.new(TWEEN_TIME, Enum.EasingStyle.Quad)
    local blurTween = TweenService:Create(self.blur, tweenInfo, {Size = BLUR_INTENSITY})
    local transparencyTween = TweenService:Create(newTransparency, tweenInfo, {BackgroundTransparency = TRANSPARENCY})
    local noiseTween = TweenService:Create(newTransparency.noise, tweenInfo, {ImageTransparency = 0.95})
    
    blurTween:Play()
    transparencyTween:Play()
    noiseTween:Play()
    
    return newTransparency
end

function AcrylicBlur:Remove(frame)
    local tweenInfo = TweenInfo.new(TWEEN_TIME, Enum.EasingStyle.Quad)
    local blurTween = TweenService:Create(self.blur, tweenInfo, {Size = 0})
    
    for _, child in pairs(frame:GetChildren()) do
        if child:IsA("Frame") and child.Name == self.transparency.Name then
            local transparencyTween = TweenService:Create(child, tweenInfo, {BackgroundTransparency = 1})
            local noiseTween = TweenService:Create(child.noise, tweenInfo, {ImageTransparency = 1})
            
            transparencyTween:Play()
            noiseTween:Play()
            
            task.delay(TWEEN_TIME, function()
                child:Destroy()
            end)
        end
    end
    
    blurTween:Play()
end

function AcrylicBlur:Destroy()
    self.blur:Destroy()
    self.transparency:Destroy()
end

return AcrylicBlur
