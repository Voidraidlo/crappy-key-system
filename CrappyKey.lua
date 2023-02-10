local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Crappy Key System", HidePremium = false, SaveConfig = true,IntroText = "Crappy Key System", ConfigFolder = "CrappyShitttyKeySystem"})

getgenv().Key = "W&4rVy7R" --useless line i think you can remove it
getgenv().KeyInput = "string"

function KeyCorrect() --useless line i think you can remove it
    --script
end

function KeyFalse()
    game:GetService("Players").LocalPlayer:Kick("Incorrect Key | .gg/A9Qbj9a37M") --useless line i think you can remove it
end

local Key = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Key:AddSection({
    Name = "Key System"
})

Key:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        getgenv().KeyInput = Value
    end      
})

local keys = {
    "1", --- Change 1234 to any keys u want
    "2",
    "3",
    "4",

}

Key:AddButton({
    Name = "Check Key",
    Callback = function()
        if table.find(keys, tostring(getgenv().KeyInput)) then
            --script
        else
            game:GetService("Players").LocalPlayer:Kick("Incorrect Key | Discord Here")
        end
    end
})
