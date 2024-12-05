local InterfaceManager = {}
InterfaceManager.__index = InterfaceManager

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

-- Constants
local TWEEN_TIME = 0.3
local TWEEN_STYLE = Enum.EasingStyle.Quad
local TWEEN_DIRECTION = Enum.EasingDirection.Out

function InterfaceManager.new()
    local self = setmetatable({}, InterfaceManager)
    
    self.interfaces = {}
    self.activeInterface = nil
    self.container = Instance.new("ScreenGui")
    self.container.Name = "Masterboy123_UI"
    
    -- Handle container parent based on environment
    if syn and syn.protect_gui then
        syn.protect_gui(self.container)
        self.container.Parent = CoreGui
    else
        self.container.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    end
    
    return self
end

function InterfaceManager:CreateInterface(name)
    if self.interfaces[name] then
        return self.interfaces[name]
    end
    
    local interface = {
        name = name,
        frame = Instance.new("Frame"),
        visible = false,
        elements = {}
    }
    
    -- Setup interface frame
    interface.frame.Name = name
    interface.frame.Size = UDim2.new(0, 400, 0, 300)
    interface.frame.Position = UDim2.new(0.5, -200, 0.5, -150)
    interface.frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    interface.frame.BorderSizePixel = 0
    interface.frame.Parent = self.container
    
    -- Add corner rounding
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = interface.frame
    
    self.interfaces[name] = interface
    return interface
end

function InterfaceManager:ShowInterface(name)
    local interface = self.interfaces[name]
    if not interface then return end
    
    if self.activeInterface and self.activeInterface ~= interface then
        self:HideInterface(self.activeInterface.name)
    end
    
    interface.visible = true
    self.activeInterface = interface
    
    -- Show animation
    interface.frame.Transparency = 1
    interface.frame.Visible = true
    
    local tweenInfo = TweenInfo.new(TWEEN_TIME, TWEEN_STYLE, TWEEN_DIRECTION)
    local tween = TweenService:Create(interface.frame, tweenInfo, {
        Transparency = 0
    })
    tween:Play()
end

function InterfaceManager:HideInterface(name)
    local interface = self.interfaces[name]
    if not interface or not interface.visible then return end
    
    interface.visible = false
    
    -- Hide animation
    local tweenInfo = TweenInfo.new(TWEEN_TIME, TWEEN_STYLE, TWEEN_DIRECTION)
    local tween = TweenService:Create(interface.frame, tweenInfo, {
        Transparency = 1
    })
    
    tween.Completed:Connect(function()
        interface.frame.Visible = false
    end)
    
    tween:Play()
end

function InterfaceManager:DestroyInterface(name)
    local interface = self.interfaces[name]
    if not interface then return end
    
    interface.frame:Destroy()
    self.interfaces[name] = nil
    
    if self.activeInterface == interface then
        self.activeInterface = nil
    end
end

return InterfaceManager
