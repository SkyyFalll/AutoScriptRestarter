-- Restart Delay
local _delay = 1000*60*_config.scriptrestart._timedelay

print("[^1Space^0] Auto Restarter was loaded!")
-- Thread
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(_delay) 
        for _, _script in ipairs(_config.scriptrestart._scriptnames) do
            print("[^2Space^0] ^2Auto Restarter^0 > ".._script.." > Next Restart In > ".._config.scriptrestart._timedelay.."min!")
            if _config.scriptrestart._action ~= nil or _config.scriptrestart._action ~= "" then
                ExecuteCommand(_config.scriptrestart._action.." ".._script) 
              else 
                print("[^1Space^0] ^1There was an error!^0")
            end 
        end
    end
end)