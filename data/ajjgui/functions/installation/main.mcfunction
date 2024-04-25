execute as @a run function ajjgui:control/run_gui

execute as @a if score @s ajjgui.cooldown matches 1.. run scoreboard players remove @s ajjgui.cooldown 1

execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{ajjgui:{meta:{compiled:1b}}}}}} as @e[type=minecraft:marker,tag=ajjgui.gui_origin] at @s run function ajjgui:control/load_page_origin
execute as @e[type=minecraft:item] if data entity @s {Item:{components:{"minecraft:custom_data":{ajjgui:{meta:{compiled:1b}}}}}} run kill @s

execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin] at @s unless block ~ ~ ~ #ajjgui:containers run tellraw @a {"text":"Removed GUI"}
execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin] at @s unless block ~ ~ ~ #ajjgui:containers run kill @s

execute as @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported] store result score @s ajjgui at @s positioned ~-0.75 ~-0.5 ~-0.75 if entity @a[dx=0.5,dy=0,dz=0.5]
execute as @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported] unless score @s ajjgui matches 1 run function ajjgui:control/close_gui_ported
execute as @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported] at @s unless entity @a[distance=..0.5] run function ajjgui:control/close_gui_ported
execute as @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported] at @s if block ~ ~ ~ minecraft:water run function ajjgui:control/close_gui_ported
execute as @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported] on controller run title @s actionbar {"text":"Open inventory to view menu | Dismount to cancel"}

execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:yellow_shulker_box

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