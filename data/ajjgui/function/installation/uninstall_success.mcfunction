execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin] positioned ~ ~ ~ run function ajjgui:__decompile

execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin] run data remove block ~ ~ ~ Items

execute as @a on vehicle if entity @s[type=minecraft:chest_boat,tag=ajjgui.gui_boat] run function ajjgui:control/close_gui_ported

kill @e[type=minecraft:marker,tag=ajjgui.box]
kill @e[type=minecraft:marker,tag=ajjgui.gui_origin]

scoreboard players reset @a ajjgui.cooldown

scoreboard players reset #temp ajjgui
scoreboard players reset #two ajjgui
scoreboard players reset #x ajjgui
scoreboard players reset #y ajjgui
scoreboard players reset #z ajjgui

scoreboard objectives remove ajjgui
scoreboard objectives remove ajjgui.cooldown
scoreboard objectives remove ajjgui.count
scoreboard objectives remove ajjgui.page
scoreboard objectives remove ajjgui.slot
scoreboard objectives remove ajjgui.slot_returned
scoreboard objectives remove ajjgui.state

data remove storage ajjgui:data database
data remove storage ajjgui:data prompt
data remove storage ajjgui:data version