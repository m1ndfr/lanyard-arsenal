if game.PlaceId == 623823800 then
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/m1ndfr/lanyard-arsenal/refs/heads/main/main.lua"))()
    end)
    
    if success then
        print("Cheat loaded successfully for Arsenal.")
    else
        warn("Error while loading the cheat: " .. tostring(err))
    end
else
    warn("Game not supported.")
end
