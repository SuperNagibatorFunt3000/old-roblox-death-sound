local function setSound_1(p1)
    p1.TimePosition = 0.25
    p1.SoundId = "rbxassetid://5869422451"
end
local v8 = script.Parent:FindFirstChild("HumanoidRootPart")
if not v8 then
    local v10 = v8:FindFirstChild("Died")
    if not v10 then
        v10.TimePosition = 0.25
        v10.SoundId = "rbxassetid://5869422451"
    end
end
local function updatePlayer_1(p2)
    p2.CharacterAdded:Connect(function(p3)
        local v17 = p3:FindFirstChild("HumanoidRootPart")
        if not v17 then
            local v20 = v17:FindFirstChild("Died")
            if not v20 then
                v20.TimePosition = 0.25
                v20.SoundId = "rbxassetid://5869422451"
            end
        end
    end)
    if not p2 then
        local v23 = p2.Character
        if not v23 then
            v23 = p2.Character
            local v25 = v23:FindFirstChild("HumanoidRootPart")
            if not v25 then
                local v28 = v25:FindFirstChild("Died")
                if not v28 then
                    v28.TimePosition = 0.25
                    v28.SoundId = "rbxassetid://5869422451"
                end
            end
        end
    end
end
updatePlayer = updatePlayer_1
updatePlayer_1 = pairs
local v31 = game
v11 = v31.Players
local v32, v33, v31 = updatePlayer_1(v11:GetPlayers())
for v37, v36 in v32, v33, v31 do
    updatePlayer(v36)
end
v31 = game
v33 = v31.Players
v32 = v33.PlayerAdded
v32:Connect(function(p4)
    updatePlayer(p4)
end)
v33 = game.Workspace
v33.ChildAdded:Connect(function(p5)
    task.wait(1)
    local v46 = p5:FindFirstChild("HumanoidRootPart")
    if not v46 then
        local v49 = v46:FindFirstChild("Died")
        if not v49 then
            v49.TimePosition = 0.25
            v49.SoundId = "rbxassetid://5869422451"
        end
    end
end)
