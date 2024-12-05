local AcrylicBlur = {}
local TweenService = game:GetService("TweenService")

function AcrylicBlur.new()
    local blur = Instance.new("BlurEffect")
    blur.Size = 0
    blur.Parent = game:GetService("Lighting")
    return blur
end

return AcrylicBlur
