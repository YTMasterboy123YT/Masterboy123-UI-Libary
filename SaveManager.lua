local SaveManager = {}
SaveManager.__index = SaveManager

-- Services
local HttpService = game:GetService("HttpService")

function SaveManager.new(name)
    local self = setmetatable({}, SaveManager)
    
    self.fileName = "Masterboy123_" .. name .. ".json"
    self.folder = "Masterboy123"
    self.defaultConfig = {}
    self.settings = {}
    
    -- Create folder if it doesn't exist
    if not isfolder(self.folder) then
        makefolder(self.folder)
    end
    
    return self
end

function SaveManager:SetDefault(config)
    self.defaultConfig = config
    self.settings = table.clone(config)
end

function SaveManager:Save()
    local data = HttpService:JSONEncode(self.settings)
    writefile(self.folder .. "/" .. self.fileName, data)
    return true
end

function SaveManager:Load()
    if isfile(self.folder .. "/" .. self.fileName) then
        local data = readfile(self.folder .. "/" .. self.fileName)
        local success, decoded = pcall(function()
            return HttpService:JSONDecode(data)
        end)
        
        if success then
            -- Merge with default config to ensure all keys exist
            for key, value in pairs(self.defaultConfig) do
                if decoded[key] == nil then
                    decoded[key] = value
                end
            end
            self.settings = decoded
            return true
        end
    end
    
    -- If load fails, use default config
    self.settings = table.clone(self.defaultConfig)
    return false
end

function SaveManager:Get(key)
    return self.settings[key]
end

function SaveManager:Set(key, value)
    self.settings[key] = value
    return value
end

function SaveManager:Delete()
    if isfile(self.folder .. "/" .. self.fileName) then
        delfile(self.folder .. "/" .. self.fileName)
        return true
    end
    return false
end

function SaveManager:Reset()
    self.settings = table.clone(self.defaultConfig)
    return self:Save()
end

function SaveManager:GetSettings()
    return table.clone(self.settings)
end

return SaveManager
