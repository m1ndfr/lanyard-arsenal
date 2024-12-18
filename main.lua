local success, UI = pcall(function()
    return require(script.Parent.UI.ui) -- Load the UI module
end)

if success and UI then
    local menu = UI:CreateMenu()
    print("UI loaded successfully.")
else
    warn("Failed to load UI module.")
    print("Error message: ", UI) -- This will print the error if the module loading fails
    -- Retry loading after a small delay
    wait(1)
    local retrySuccess, retryUI = pcall(function()
        return require(script.Parent.UI.ui) -- Retry loading the UI module
    end)
    if retrySuccess and retryUI then
        local menu = retryUI:CreateMenu()
        print("UI loaded successfully after retry.")
    else
        warn("Failed to load UI module again.")
        print("Error message on second attempt: ", retryUI) -- This will show the second attempt error
    end
end
