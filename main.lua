local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "voidexec[beta] " .. Fluent.Version,
    SubTitle = "by voidexec [paid]",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

getgenv().Window = Window

local ScriptsBrainrotTab = Window:AddTab({ Title = "ScriptsBrainrot", Icon = "terminal" })
local SobreOsScriptsTab = Window:AddTab({ Title = "Sobre Os Scripts", Icon = "terminal" })
local InfoTab = Window:AddTab({ Title = "Info", Icon = "info" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })

ScriptsBrainrotTab:AddButton({
    Title = "Executar lennon hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/MJw2J4T6/raw"))()
    end
})

ScriptsBrainrotTab:AddButton({
    Title = "Executar miranda",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()
    end
})

InfoTab:AddParagraph({
    Title = "Aviso",
    Content = "Não nos responsabilizamos por banimentos."
})

InfoTab:AddParagraph({
    Title = "Nossa comunidade",
    Content = "https://discord.gg/F2NXMVZ3VE"
})

SobreOsScriptsTab:AddParagraph({
    Title = "Aviso",
    Content = "Se faltar algum script, entre no servidor da aba Info e abra um ticket."
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

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local ToggleGui = Instance.new("ScreenGui")
ToggleGui.Name = "VoidExecToggle"
ToggleGui.ResetOnSpawn = false
ToggleGui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("ImageButton")
button.Parent = ToggleGui
button.Size = UDim2.fromOffset(50, 50)
button.Position = UDim2.fromScale(0.02, 0.5)
button.BackgroundTransparency = 1
button.Image = "rbxassetid://71062543907599"
button.Active = true
button.Draggable = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(1, 0)
corner.Parent = button

button.MouseButton1Click:Connect(function()
    local Window = getgenv().Window
    if not Window then return end
    Window:Minimize()
end)
