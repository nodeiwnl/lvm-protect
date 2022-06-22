    local Player = game.Players.LocalPlayer.Character
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    
    
    Player:FindFirstChild("HumanoidRootPart").Anchored = true
    wait(1)
    hrp.CFrame = CFrame.new(  185, 103, -181)
    hrp.CFrame = CFrame.new(5.58793545e-09, -3.40282347e+38, -1.39698386e-09, 0, 0, -1, 0)*CFrame.new(0, 4, 0)
    wait(1)
    
    Player:FindFirstChild("HumanoidRootPart").Anchored = false
    wait(1)
    hrp.CFrame = CFrame.new(  185, 103, -181) -- where i want it to tp me
     Player:FindFirstChild("HumanoidRootPart").Anchored = true
    wait(1)
    hrp.CFrame = CFrame.new(  185, 103, -181)
    Player:FindFirstChild("HumanoidRootPart").Anchored = false
                   
                                                                hrp.CFrame = CFrame.new(  185, 103, -181)
                                                                    game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                                                                     wait(2)
                                                                            game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
                                                                                           
                                                                hrp.CFrame = CFrame.new(  185, 103, -181)
                                                                    game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                                                                     wait()
                                                                            game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)
     hrp.CFrame = CFrame.new(5.58793545e-09, -3.40282347e+38, -1.39698386e-09, 0, 0, -1, 0)*CFrame.new(0, 4, 0)
          Player:FindFirstChild("HumanoidRootPart").Anchored = false
    wait(2)
    hrp.CFrame = CFrame.new(  185, 103, -181)
      game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(true)
                                                                     wait(1)
                                                                            game.Players.LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(false)

                   
   
                                                                            
                                                                    
