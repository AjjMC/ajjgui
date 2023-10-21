execute at @e[type=minecraft:marker,tag=ajjgui.gui] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:chest
execute at @e[type=minecraft:marker,tag=ajjgui.gui] positioned ~ ~1 ~ run function ajjgui:_decompile

execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ajjgui.gui] run data remove block ~ ~ ~ Items

kill @e[type=minecraft:marker,tag=ajjgui.box]
kill @e[type=minecraft:marker,tag=ajjgui.gui]

scoreboard players reset @a ajjgui.cooldown

scoreboard players reset #two ajjgui
scoreboard players reset #x ajjgui
scoreboard players reset #y ajjgui
scoreboard players reset #z ajjgui

scoreboard objectives remove ajjgui
scoreboard objectives remove ajjgui.cooldown
scoreboard objectives remove ajjgui.count
scoreboard objectives remove ajjgui.page
scoreboard objectives remove ajjgui.slot
scoreboard objectives remove ajjgui.state

data remove storage ajjgui:gui Version

tellraw @a [{"text":"Uninstalled "},{"text":"ajjgui","color":"gray"}]