execute as @a run function ajjgui:entities/player
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{ajjgui:{meta:{compiled:1b}}}}}} run function ajjgui:entities/item
execute as @e[type=minecraft:marker] at @s run function ajjgui:entities/marker
execute as @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat] run function ajjgui:entities/chest_boat

scoreboard players reset #bool ajjgui
scoreboard players reset #count ajjgui
scoreboard players reset #count1 ajjgui
scoreboard players reset #length ajjgui
scoreboard players reset #size ajjgui

data remove storage ajjgui:data temp
data remove storage ajjgui:data temp1
data remove storage ajjgui:data temp2
data remove storage ajjgui:data temp3
data remove storage ajjgui:data temp4
data remove storage ajjgui:data temp5
data remove storage ajjgui:data temp6
data remove storage ajjgui:data temp7
data remove storage ajjgui:data temp8