-- Blox Fruits AutoFarm Script

-- Teleport to the island where the enemies spawn
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100, 100, 100))

-- Wait for a few seconds for enemies to spawn
wait(5)

-- Loop to defeat enemies continuously
while true do
    for i, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        -- Teleport to the enemy's location
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame

        -- Attack the enemy
        wait(1) -- Adjust the delay as needed
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame
    end
    wait(10) -- Wait for enemies to respawn
end
