execute as @a run function ajjgui:gui/run_gui

execute as @a if score @s ajjgui.cooldown matches 1.. run scoreboard players remove @s ajjgui.cooldown 1

execute as @e[type=minecraft:item] if data entity @s {Item:{tag:{ajjgui:{Compiled:1b}}}} as @e[type=minecraft:marker,tag=ajjgui.gui] at @s run function ajjgui:gui/load_page
execute as @e[type=minecraft:item] if data entity @s {Item:{tag:{ajjgui:{Compiled:1b}}}} run kill @s

execute as @e[type=minecraft:marker,tag=ajjgui.gui] at @s unless block ~ ~ ~ #ajjgui:guis run tellraw @a [{"text":"Removed "},{"text":"ajjgui","color":"gray"},{"text":" GUI"}]
execute as @e[type=minecraft:marker,tag=ajjgui.gui] at @s unless block ~ ~ ~ #ajjgui:guis run kill @s

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
data remove storage ajjgui:gui Temp5
data remove storage ajjgui:gui Temp6
data remove storage ajjgui:gui Temp7
data remove storage ajjgui:gui Temp8