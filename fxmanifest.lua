fx_version 'cerulean'
games { 'gta5' }

author 'boofiboi'
description 'Billing script'
version 'alpha'

server_script '@oxmysql/lib/MySQL.lua'
server_script 'server/server.lua'
client_script 'client/client.lua'

ui_page 'NUI/index.html'

files{
    'NUI/index.html',
}