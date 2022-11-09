execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ajjgui.cmd2] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:armor_stand,tag=ajjgui.gui] run setblock ~ ~ ~ minecraft:air

kill @e[type=minecraft:marker,tag=ajjgui.cmd1]
kill @e[type=minecraft:marker,tag=ajjgui.cmd2]
kill @e[type=minecraft:marker,tag=ajjgui.box]

scoreboard players reset @a ajjgui.page
scoreboard players reset @a ajjgui.slot
scoreboard players reset @a ajjgui.state
scoreboard players reset @a ajjgui.count

scoreboard players reset #two ajjgui
scoreboard players reset #x ajjgui
scoreboard players reset #y ajjgui
scoreboard players reset #z ajjgui

scoreboard objectives remove ajjgui
scoreboard objectives remove ajjgui.page
scoreboard objectives remove ajjgui.slot
scoreboard objectives remove ajjgui.state
scoreboard objectives remove ajjgui.count

data remove storage ajjgui:gui Page
data remove storage ajjgui:gui Version
data remove storage ajjgui:gui Widget
data remove storage ajjgui:itemslot In
data remove storage ajjgui:itemslot Out
data remove storage ajjgui:itembin In

tellraw @a [{"text":"Uninstalled "},{"text":"ajjgui","color":"gray"}]