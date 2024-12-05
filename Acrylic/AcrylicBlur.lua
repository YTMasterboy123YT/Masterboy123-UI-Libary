local AcrylicBlur = {}
AcrylicBlur.__index = AcrylicBlur

-- Services
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Constants
local BLUR_SIZE = 24
local TWEEN_INFO = TweenInfo.new(0.3, Enum.EasingStyle.Quad)

function AcrylicBlur.new()
    local self = setmetatable({}, AcrylicBlur)
    
    self.blur = Instance.new("BlurEffect")
    self.blur.Size = 0
    self.blur.Parent = game:GetService("Lighting")
    
    return self
end

function AcrylicBlur:Enable()
    TweenService:Create(self.blur, TWEEN_INFO, {Size = BLUR_SIZE}):Play()
end

function AcrylicBlur:Disable()
    TweenService:Create(self.blur, TWEEN_INFO, {Size = 0}):Play()
end

return AcrylicBlur
