execute as @a run function ajjgui:entity/player
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{ajjgui:{meta:{compiled:1b}}}}}} run function ajjgui:entity/item
execute as @e[type=minecraft:marker] at @s run function ajjgui:entity/marker
execute as @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat] run function ajjgui:entity/chest_boat

scoreboard players reset #bool ajjgui
scoreboard players reset #count ajjgui
scoreboard players reset #count1 ajjgui
scoreboard players reset #length ajjgui
scoreboard players reset #size ajjgui

data remove storage ajjgui:data temp

execute as @a[tag=ajjgui.editor] at @s run function ajjgui:installation/triggers
