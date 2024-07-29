--  _    _            _    __  __           _           __  ___  __  ___  
-- | |  | |          | |  |  \/  |         | |         /_ |/ _ \/_ |/ _ \ 
-- | |__| | __ _  ___| | _| \  / | __ _ ___| |_ ___ _ __| | (_) || | | | |
-- |  __  |/ _` |/ __| |/ / |\/| |/ _` / __| __/ _ \ '__| |\__, || | | | |
-- | |  | | (_| | (__|   <| |  | | (_| \__ \ ||  __/ |  | |  / / | | |_| |
-- |_|  |_|\__,_|\___|_|\_\_|  |_|\__,_|___/\__\___|_|  |_| /_/  |_|\___/ 
--
-- This script is made by HackMaster1910 on GitHub.                                                                      

-- SETTINGS DO NOT TOUCH --

local settings_data = {
  Invincibility = false,
  WalkSpeed = 16,
  JumpPower = 50,
}

-- END OF SETTINGS


-- FUNCTIONS DO NOT TOUCH --

function changeWalkSpeed(new_amount)
  settings_data["WalkSpeed"] = new_amount
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = new_amount
end

function changeJumpPower(new_amount)
  settings_data["JumpPower"] = new_amount
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = new_amount
end

function setInvincible(boolean)
  settings_data["Invincibility"] = boolean
  game.Players.LocalPlayer.Character:WaitForChild("KillScript").Enabled = not boolean
end

function onCharacterDeath()
  wait(5)
  changeWalkSpeed(settings_data["WalkSpeed"])
  changeJumpPower(settings_data["JumpPower"])
  setInvincible(settings_data["Invincibility"])
end

-- END OF FUNCTIONS --


-- EVENTS DO NOT TOUCH -- 

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(onCharacterDeath)

-- END OF EVENTS --


-- TESTING FUNCTIONS --

changeWalkSpeed(60)
changeJumpPower(600)
setInvincible(true)