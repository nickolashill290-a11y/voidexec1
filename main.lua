local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "voidExec " .. Fluent.Version,
    SubTitle = "by VoidExec",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local ScriptsBloxTab = Window:AddTab({ Title = "ScriptsBlox", Icon = "terminal" })
local ScriptsBrainrotTab = Window:AddTab({ Title = "ScriptsBrainrot", Icon = "terminal" })
local SobreosScriptsTab = Window:AddTab({ Title = "Sobre os Scripts", Icon = "home" })
local InfoTab = Window:AddTab({ Title = "Info", Icon = "info" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })

ScriptsBloxTab:AddButton({
    Title = "Executar Astral",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Blox-Fruits-ASTRAL-29222"))()
    end
})

ScriptsBloxTab:AddButton({
    Title = "Executar Gravity",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
    end
})

ScriptsBrainrotTab:AddButton({
    Title = "Executar Chilli Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
    end
})

ScriptsBrainrotTab:AddButton({
    Title = "Executar Nameless",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr"))()
    end
})

SobreosScriptsTab:AddParagraph({
    Title = "Sobre",
    Content = "Se faltar algum script, entre no Discord na aba Info e abra um ticket."
})

InfoTab:AddParagraph({
    Title = "Discord",
    Content = "https://discord.gg/pDF83Sj4HC"
})

InfoTab:AddParagraph({
    Title = "Aviso",
    Content = "Não nos responsabilizamos por banimentos."
})

SettingsTab:AddToggle({
    Title = "Toggle Teste",
    Default = false,
    Callback = function(Value)
        print("Toggle:", Value)
    end
})

SettingsTab:AddSlider({
    Title = "Slider Teste",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        print("Slider:", Value)
    end
})

SettingsTab:AddInput({
    Title = "Input Teste",
    Default = "",
    Placeholder = "Digite algo",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        print("Input:", Value)
    end
})

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("VoidExec")
SaveManager:SetFolder("VoidExec/configs")

InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)

Window:SelectTab(1)

Fluent:Notify({
    Title = "VoidExec",
    Content = "Script carregado",
    Duration = 5
})

SaveManager:LoadAutoloadConfig()
