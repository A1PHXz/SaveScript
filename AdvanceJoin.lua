getgenv().PlaceId = game.PlaceId
getgenv().TP = game:GetService("TeleportService")
task.spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().ARJ then
                getgenv().ErrorPrompt = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
                    if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                        getgenv().TP:Teleport(getgenv().PlaceId)
                    end
                end)
            end
        end)
    end
end)
