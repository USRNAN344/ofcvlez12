-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Function to find the closest player to a given character
local function getClosestPlayer(character)
    local closestPlayer = nil
    local shortestDistance = math.huge
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
        return nil
    end

    local speakerPosition = humanoidRootPart.Position

    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character ~= character then
            local playerPosition = player.Character.HumanoidRootPart.Position
            local distance = (speakerPosition - playerPosition).magnitude
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

-- Function to execute the bang animation
local function executeBangAnimation(character)
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")
    if not humanoid then
        return
    end

    local bangAnim = Instance.new("Animation")
    bangAnim.AnimationId = humanoid.RigType == Enum.HumanoidRigType.R6 and "rbxassetid://148840371" or "rbxassetid://5918726674"
    local bang = humanoid:LoadAnimation(bangAnim)
    bang:Play(0.1, 1, 1)
    bang:AdjustSpeed(700000)

    local bangDied
    bangDied = humanoid.Died:Connect(function()
        bang:Stop()
        bangAnim:Destroy()
        bangDied:Disconnect()
        if bangLoop then
            bangLoop:Disconnect()
        end
    end)

    local closestPlayer = getClosestPlayer(character)
    if closestPlayer then
        local bangOffset = CFrame.new(0, 0, 1.1)
        local otherRoot = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
        if otherRoot then
            bangLoop = RunService.Stepped:Connect(function()
                pcall(function()
                    character.HumanoidRootPart.CFrame = otherRoot.CFrame * bangOffset
                end)
            end)
        end
    end
end

-- Main code execution
local player = Players.LocalPlayer

-- Ensure the player and their character exist
if player and player.Character then
    executeBangAnimation(player.Character)
end
