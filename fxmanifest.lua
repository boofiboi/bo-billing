fx_version 'cerulean'
games { 'gta5' }

author 'boofiboi'
description 'Billing script'
version 'alpha'

shared_script 'config.lua'
server_script '@oxmysql/lib/MySQL.lua'
server_script 'server/server.lua'
client_script 'client/client.lua'