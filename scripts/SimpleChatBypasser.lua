local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield:Notify({
   Title = "Script Executed",
   Content = "Simple Bypasser by Devappl",
   Duration = 5,
   Image = 4483362458,
   Actions = {
      Ignore = {
         Name = "Dismiss",
         Callback = function()
      end
   },
},
})


local lettersBypass = false
local numbersBypass = false
local lettersSetting = 1
local numbersSetting = 1

local tcs = game:GetService("TextChatService")
local chat = tcs.ChatInputBarConfiguration.TargetTextChannel

local Window = Rayfield:CreateWindow({
   Name = "Simple Chat Bypasser | Script by Devappl",
   LoadingTitle = "Simple Chat Bypasser",
   LoadingSubtitle = "by Devappl",
   ConfigurationSaving = {
      Enabled = flase,
      FolderName = nil,
      FileName = "chatBypasser"
   },
   Discord = {
      Enabled = false,
      Invite = "usercreation",
      RememberJoins = true
   },
   KeySystem = false,
})


local MainTab = Window:CreateTab("Home", 4483362458)
local MainSection = MainTab:CreateSection("Main")

local SettingsTab = Window:CreateTab("Settings", 4483362458)
local SettingsSection = SettingsTab:CreateSection("Settings")

local ScriptsTab = Window:CreateTab("Scripts", 4483362458)
local ScriptsSection = ScriptsTab:CreateSection("Scripts")

local InfoTab = Window:CreateTab("Info", 4483362458)
local InfoSection = InfoTab:CreateSection("Info")

-- LETTERS:
-- working:
-- 🅰 🅱 🅲 🅳 🅴 🅵 🅶 🅷 🅸 🅹 🅺 🅻 🅼 🅽 🅾 🅿 🆀 🆁 🆂 🆃 🆄 🆅 🆆 🆇 🆈 🆉
-- 🇦 🇧 🇨 🇩 🇪 🇫 🇬 🇭 🇮 🇯 🇰 🇱 🇲 🇳 🇴 🇵 🇶 🇷 🇸 🇹 🇺 🇻 🇼 🇽 🇾 🇿
-- 🅐 🅑 🅒 🅓 🅔 🅕 🅖 🅗 🅘 🅙 🅚 🅛 🅜 🅝 🅞 🅟 🅠 🅡 🅢 🅣 🅤 🅥 🅦 🅧 🅨 🅩
-- patched:
-- ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ
-- 🄰 🄱 🄲 🄳 🄴 🄵 🄶 🄷 🄸 🄹 🄺 🄻 🄼 🄽 🄾 🄿 🅀 🅁 🅂 🅃 🅄 🅅 🅆 🅇 🅈 🅉
--
-- NUMBERS:
-- working:
-- ⓵ ⓶ ⓷ ⓸ ⓹ ⓺ ⓻ ⓼ ⓽
-- ⓿ ❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾
-- patched:
-- 0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣
-- ０ １ ２ ３ ４ ５ ６ ７ ８ ９
-- 𝟬 𝟭 𝟮 𝟯 𝟰 𝟱 𝟲 𝟳 𝟴 𝟵

local letters = {
    set1 = {
        ["a"] = "🅰",
        ["b"] = "🅱",
        ["c"] = "🅲",
        ["d"] = "🅳",
        ["e"] = "🅴",
        ["f"] = "🅵",
        ["g"] = "🅶",
        ["h"] = "🅷",
        ["i"] = "🅸",
        ["j"] = "🅹",
        ["k"] = "🅺",
        ["l"] = "🅻",
        ["m"] = "🅼",
        ["n"] = "🅽",
        ["o"] = "🅾",
        ["p"] = "🅿",
        ["q"] = "🆀",
        ["r"] = "🆁",
        ["s"] = "🆂",
        ["t"] = "🆃",
        ["u"] = "🆄",
        ["v"] = "🆅",
        ["w"] = "🆆",
        ["x"] = "🆇",
        ["y"] = "🆈",
        ["z"] = "🆉",
    },
    set2 = {
        ["a"] = "🅐",
        ["b"] = "🅑",
        ["c"] = "🅒",
        ["d"] = "🅓",
        ["e"] = "🅔",
        ["f"] = "🅕",
        ["g"] = "🅖",
        ["h"] = "🅗",
        ["i"] = "🅘",
        ["j"] = "🅙",
        ["k"] = "🅚",
        ["l"] = "🅛",
        ["m"] = "🅜",
        ["n"] = "🅝",
        ["o"] = "🅞",
        ["p"] = "🅟",
        ["q"] = "🅠",
        ["r"] = "🅡",
        ["s"] = "🅢",
        ["t"] = "🅣",
        ["u"] = "🅤",
        ["v"] = "🅥",
        ["w"] = "🅦",
        ["x"] = "🅧",
        ["y"] = "🅨",
        ["z"] = "🅩",
    },
    set3 = {
        ["a"] = "🇦 ",
        ["b"] = "🇧 ",
        ["c"] = "🇨 ",
        ["d"] = "🇩 ",
        ["e"] = "🇪 ",
        ["f"] = "🇫 ",
        ["g"] = "🇬 ",
        ["h"] = "🇭 ",
        ["i"] = "🇮 ",
        ["j"] = "🇯 ",
        ["k"] = "🇰 ",
        ["l"] = "🇱 ",
        ["m"] = "🇲 ",
        ["n"] = "🇳 ",
        ["o"] = "🇴 ",
        ["p"] = "🇵 ",
        ["q"] = "🇶 ",
        ["r"] = "🇷 ",
        ["s"] = "🇸 ",
        ["t"] = "🇹 ",
        ["u"] = "🇺 ",
        ["v"] = "🇻 ",
        ["w"] = "🇼 ",
        ["x"] = "🇽 ",
        ["y"] = "🇾 ",
        ["z"] = "🇿 ",
    },
}

local numbers = {
    set1 = {
        ["0"] = "⓿",
        ["1"] = "❶",
        ["2"] = "❷",
        ["3"] = "❸",
        ["4"] = "❹",
        ["5"] = "❺",
        ["6"] = "❻",
        ["7"] = "❼",
        ["8"] = "❽",
        ["9"] = "❾",
    },
    set2 = {
        ["1"] = "⓵",
        ["2"] = "⓶",
        ["3"] = "⓷",
        ["4"] = "⓸",
        ["5"] = "⓹",
        ["6"] = "⓺",
        ["7"] = "⓻",
        ["8"] = "⓼",
        ["9"] = "⓽",
    },
}

local function convert(text)
    local letters_set = letters["set"..lettersSetting]
    local numbers_set = numbers["set"..numbersSetting]

    local converted = ""
    for i = 1, #text do
        local char = text:sub(i, i)
        local lower_char = char:lower()

        if char:match("%a") then
            if lettersBypass then
                converted = converted .. char
            else
                converted = converted .. (letters_set[lower_char] or char)
            end
        elseif char:match("%d") then
            if numbersBypass then
                converted = converted .. char
            else
                converted = converted .. (numbers_set[char] or char)
            end
        else
            converted = converted .. char
        end
    end
    return converted
end

local function sendchat(msg)
    if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
        game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
    else
        chat:SendAsync(msg)
    end
end

-----[ MAIN TAB ]-----

local Input = MainTab:CreateInput({
   Name = "Input",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
            if text ~= "" then
                print(Text)
                print(convert(Text))
                sendchat(convert(Text))
            end
   end,
})

local FixButton = MainTab:CreateButton({
    Name = "Fix Bypasses",
    Callback = function(Value)
        sendchat("abcdefghijk/-_.,:;*")
    end,
})


-----[ SETTINGS TAB ]-----

local LettersParagraph = SettingsTab:CreateParagraph({Title = "Letters Warning", Content = "(🇦 🇧 🇨 ) takes up twice as many characters and also doesnt support spaces"})


local LettersToggle = SettingsTab:CreateToggle({
   Name = "Bypass Letters",
   CurrentValue = true,
   Flag = "bypassLetters",
   Callback = function(Value)
        lettersBypass = not lettersBypass
   end,
})

local LettersDropdown = SettingsTab:CreateDropdown({
   Name = "Select Bypasser Type",
   Options = {"🅰🅱🅲","🅐🅑🅒","🇦 🇧 🇨 "},
   CurrentOption = {"🅰🅱🅲"},
   MultipleOptions = false,
   Flag = "selectLetters",
   Callback = function(Option)
            print("lettersBypass changed to: ".. Option[1])
            if Option[1] == "🅰🅱🅲" then
                lettersSetting = 1
            elseif Option[1] == "🅐🅑🅒" then
                lettersSetting = 2
            else 
                lettersSetting = 3
            end
   end,
})

local NumbersParagraph = SettingsTab:CreateParagraph({Title = "Numbers Warning", Content = "(⓵⓶⓷) doesnt support the number 0"})


local NumbersToggle = SettingsTab:CreateToggle({
   Name = "Bypass Numbers",
   CurrentValue = true,
   Flag = "bypassNumbers",
   Callback = function(Value)
        numbersBypass = not numbersBypass
   end,
})

local NumbersDropdown = SettingsTab:CreateDropdown({
   Name = "Select Bypasser Type",
   Options = {"❶❷❸","⓵⓶⓷"},
   CurrentOption = {"❶❷❸"},
   MultipleOptions = false,
   Flag = "selectNumbers",
   Callback = function(Option)
            print((Option[1]))
            if Option[1] == "❶❷❸" then
                numbersSetting = 1
            else 
                numbersSetting = 2
            end
   end,
})

-----[ SCRIPTS TAB ]-----

local ScriptsLabel = ScriptsTab:CreateLabel("Utility scripts that might come in handy")

local InfiniteYieldButton = ScriptsTab:CreateButton({
   Name = "Infinite Yield v5.9.4",
   Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
})

local SimpleSpyButton = ScriptsTab:CreateButton({
   Name = "Simple Spy v3",
   Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
    end,
})

-----[ INFO TAB ]-----

local Paragraph = InfoTab:CreateParagraph({Title = "Script Information", Content = "I made this script to substitute for better bypasser when they go offline or roblox patches them. It is not meant to be perfect, just good enough to use as a backup. I will probably not update this anymore. If anything stops working or gets patched in this script, check the source code for more characters that might also work (at the time of writing this they dont, but maybe that has changed by now)"})
