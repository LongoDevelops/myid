Citizen.CreateThread(function()
local name = GetPlayerServerId(PlayerId())
while true do
Citizen.Wait(0)
RegisterCommand('myid', function()
TriggerEvent('chat:addMessage', {
    color = {255,0,255},
    multiline = true,
    args = { GetPlayerName(PlayerId()), "~b~id is " .. name .. "!"}
})
end)
end    
end)