local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Wala GUI Script",
   LoadingTitle = "Wala GUI Script",
   LoadingSubtitle = "by wala_bingung",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "walascript",
      FileName = "walascriptconfig"
   },
   Discord = {
      Enabled = true,
      Invite = "MjexmasSWT",
      RememberJoins = true,
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"}
   }
})

local Tab = Window:CreateTab("Home", nil) -- Title, Image

local Button = HomeTab:CreateButton({
   Name = "Close GUI",
   Callback = function()
      Rayfield:Destroy()
   end,
})

local Toggle = HomeTab:CreateToggle({
   Name = "Spam Wala in console",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      if Value == false then
         print("Wala")
      end
   end,
})

local Input = Tab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      local Character = v.Character
      local humanoid = Character:WaitForChild("Humanoid")

      Humanoid.WalkSpeed = Text
   end,
})

local Input = Tab:CreateInput({
   Name = "Jump Power",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      local Character = v.Character
      local humanoid = Character:WaitForChild("Humanoid")

      Humanoid.JumpPower = Text
   end
})