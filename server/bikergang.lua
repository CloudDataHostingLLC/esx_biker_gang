ESX = exports['es_extended']:getSharedObject()

-- Define job ranks
local bikerRanks = {
    'prospect',
    'member',
    'enforcer',
    'vicepresident',
    'president'
}

-- Add job for new players (default to prospect)
RegisterServerEvent('esx_biker_gang:setJob')
AddEventHandler('esx_biker_gang:setJob', function(playerId, jobGrade)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if xPlayer then
        if not jobGrade then jobGrade = 0 end
        xPlayer.setJob('bikergang', jobGrade)
    end
end)

-- Grant items based on rank
RegisterServerEvent('esx_biker_gang:giveJobItems')
AddEventHandler('esx_biker_gang:giveJobItems', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'bikergang' then
        if xPlayer.job.grade_name == 'prospect' then
            exports.ox_inventory:AddItem(source, 'weapon_knife', 1)
        elseif xPlayer.job.grade_name == 'member' then
            exports.ox_inventory:AddItem(source, 'weapon_pistol', 1)
        elseif xPlayer.job.grade_name == 'enforcer' then
            exports.ox_inventory:AddItem(source, 'weapon_bat', 1)
        elseif xPlayer.job.grade_name == 'vicepresident' then
            exports.ox_inventory:AddItem(source, 'weapon_smg', 1)
        elseif xPlayer.job.grade_name == 'president' then
            exports.ox_inventory:AddItem(source, 'weapon_assault_rifle', 1)
        end
    end
end)
