fx_version 'cerulean'
game 'gta5'

description 'ESX Biker Gang Job with ox_inventory Integration'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_inventory/imports.lua'
}

server_scripts {
    'server/bikergang.lua'
}

client_scripts {
    'client/bikergang.lua'
}

dependencies {
    'es_extended',
    'ox_inventory'
}
