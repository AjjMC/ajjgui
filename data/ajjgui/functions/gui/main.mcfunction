execute as @a run function ajjgui:gui/run_gui

execute as @e[type=minecraft:item] if data entity @s Item.tag.ajjgui.Compiled as @e[type=minecraft:marker,tag=ajjgui.gui] at @s run function ajjgui:gui/load_page
execute as @e[type=minecraft:item] if data entity @s Item.tag.ajjgui.Compiled run kill @s

execute as @e[type=minecraft:marker,tag=ajjgui.gui] at @s unless block ~ ~ ~ #ajjgui:guis run kill @s

tag @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] remove ajjgui.active_gui

execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run setblock ~ ~ ~ minecraft:command_block[facing=up]
execute at @e[type=minecraft:marker,tag=ajjgui.cmd2] run setblock ~ ~ ~ minecraft:chain_command_block[facing=up]{auto:1b,Command:"tag @a[tag=ajjgui.user] remove ajjgui.user"}
execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:yellow_shulker_box

scoreboard players reset #bool ajjgui
scoreboard players reset #count ajjgui
scoreboard players reset #count1 ajjgui
scoreboard players reset #length ajjgui
scoreboard players reset #size ajjgui

data remove storage ajjgui:gui Temp
data remove storage ajjgui:gui Temp1
data remove storage ajjgui:gui Temp2
data remove storage ajjgui:gui Temp3
data remove storage ajjgui:gui Temp4