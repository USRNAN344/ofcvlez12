_G.HeadSize = 6
_G.Disabled = true

local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')

local originalHeadProperties = {}

local lastUpdate = tick()
local updateInterval = 0.01 

local function updatePlayerAppearance()
    if tick() - lastUpdate < updateInterval then
        return
    end
    lastUpdate = tick()

    if _G.Disabled then
        for _, player in next, Players:GetPlayers() do
            if player.Name ~= Players.LocalPlayer.Name then
                pcall(function()
                    local character = player.Character
                    if character and character:FindFirstChild("Head") then
                        local Head = character.Head

                        if not originalHeadProperties[player.UserId] then
                            originalHeadProperties[player.UserId] = {
                                Size = Head.Size,
                                Transparency = Head.Transparency,
                                BrickColor = Head.BrickColor,
                                Material = Head.Material,
                                CanCollide = Head.CanCollide
                            }
                        end

                        Head.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        Head.Transparency = 0.7
                        Head.BrickColor = BrickColor.new("Really black")
                        Head.Material = Enum.Material.Neon
                        Head.CanCollide = false
                    end
                end)
            end
        end
    else
        for _, player in next, Players:GetPlayers() do
            if player.Name ~= Players.LocalPlayer.Name then
                pcall(function()
                    local character = player.Character
                    if character and character:FindFirstChild("Head") then
                        local Head = character.Head
                        local originalProperties = originalHeadProperties[player.UserId]

                        if originalProperties then
                            Head.Size = originalProperties.Size
                            Head.Transparency = originalProperties.Transparency
                            Head.BrickColor = originalProperties.BrickColor
                            Head.Material = originalProperties.Material
                            Head.CanCollide = originalProperties.CanCollide

                            originalHeadProperties[player.UserId] = nil
                        end
                    end
                end)
            end
        end
    end
end

RunService.RenderStepped:Connect(updatePlayerAppearance)

local function toggleDisabled()
    _G.Disabled = not _G.Disabled
    _G.HeadSize = _G.Disabled and 6 or 1.2

    updatePlayerAppearance()
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if input.KeyCode == Enum.KeyCode.T then
        toggleDisabled()
    end
end)