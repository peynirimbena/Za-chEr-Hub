local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ZaİchEr Hub",
   Icon = 0,
   LoadingTitle = "Key & Keyless Scripts",
   LoadingSubtitle = "by peynirimben2",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "ZaİchEr Hub",
      FileName = "ZaİchEr Hub"
   },
   KeySystem = false,
})

-- TABS
local KeylessTab = Window:CreateTab("Keyless", 4483362458)
local KeyTab = Window:CreateTab("With Key", 4483362458)
local InfoTab = Window:CreateTab("Info", 4483362458)

--- 1. SECTION: KEYLESS
local Button1 = KeylessTab:CreateButton({
   Name = "JJS Script",
   Callback = function()
      Rayfield:Notify({Title = "Keyless", Content = "Enjoy!", Duration = 5})
      loadstring(request({Url="https://peeky.pythonanywhere.com/jjs",Method="GET"}).Body)()
   end,
})

local Button2 = KeylessTab:CreateButton({
   Name = "TSB Vexon Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))()
   end,
})

--- 2. SECTION: WITH KEY
local Button3 = KeyTab:CreateButton({
   Name = "Auto Piano", -- Talentless replaced with Auto Piano
   Callback = function()
      Rayfield:Notify({
         Title = "Key Required!",
         Content = "Get the key from Discord.",
         Duration = 6.5
      })
      loadstring(game:HttpGet("https://hellohellohell0.com/talentless-raw/TALENTLESS.lua", true))()
   end,
})

local Button4 = KeyTab:CreateButton({
   Name = "Ink Game Az Hub",
   Callback = function()
      Rayfield:Notify({
         Title = "Key Required!",
         Content = "Check Discord.",
         Duration = 6.5
      })
      loadstring(game:HttpGet("https://officialaxscripts.vercel.app/scripts/AX-Loader.lua"))() 
   end,
})

--- 3. SECTION: INFO
local DiscordButton = InfoTab:CreateButton({
   Name = "Copy Discord Link",
   Callback = function()
      setclipboard("https://discord.gg/YOUR_LINK")
      Rayfield:Notify({
         Title = "Copied",
         Content = "Link copied.",
         Duration = 5
      })
   end,
})

Rayfield:LoadConfiguration()
