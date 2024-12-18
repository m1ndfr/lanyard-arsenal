local success, UI = pcall(function()
    return require(script.Parent.UI.ui) -- Load the UI module
end)

if success and UI then
    local menu = UI:CreateMenu()
    print("UI loaded successfully.")
else
    warn("Failed to load UI module.")
end
