local success, UI = pcall(function()
    return require(script.Parent.UI.ui) -- Load the UI module
end)

if success and UI then
    local menu = UI:CreateMenu()
    print("UI loaded successfully.")
else
    warn("Failed to load UI module.")
    -- If loading the UI fails, attempt to load it again after a delay
    wait(1)
    local retrySuccess, retryUI = pcall(function()
        return require(script.Parent.UI.ui) -- Retry loading the UI module
    end)
    if retrySuccess and retryUI then
        local menu = retryUI:CreateMenu()
        print("UI loaded successfully after retry.")
    else
        warn("Failed to load UI module again.")
    end
end
