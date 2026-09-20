local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Aleorep HUB",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Aleorep Hub",
   LoadingSubtitle = "by Aleorep",
   ShowText = "Aleorep", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "p", -- The keybind to toggle the UI visibility (string like "p" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "dNUybP5jRh", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set s to false to make them join the Discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Key System",
      Note = "Join my discord server and get key ", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"subtome"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local PlayerTab = Window:CreateTab("Aleorep", 4483362458) -- Title, Image

local Slider = Tab:CreateSlider({
   Name = "Speed",
   Range = {10, 100},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number that correlates to the value the slider is currently at
   game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
   Rayfield:Notify({
   Title = "Speed set Sucsessful",
   Content = "Script has ben loaded",
   Duration = 6.5,
   Image = 4483362458,
})
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Jump Heigth",
   Range = {10, 500},
   Increment = 1,
   Suffix = "Heigth",
   CurrentValue = 10,
   Flag = "Slider2", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   Rayfield:Notify({
   Title = "Heigth set Sucsessful",
   Content = "Sucsess",
   Duration = 6.5,
   Image = 4483362458,
})
   end,
})

Rayfield:Notify({
   Title = "Load Sucsessful",
   Content = "Script has ben loaded",
   Duration = 6.5,
   Image = 4483362458,
})

local Button = Tab:CreateButton({
   Name = "Close",
   Callback = function()
  Rayfield:Destroy()
   end,
})
