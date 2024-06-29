execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] at @s run function ajjgui:control/load_page_origin
tag @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] remove ajjgui.gui_active

execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] at @s run function ajjgui:control/load_page_ported
tag @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] remove ajjgui.gui_active

scoreboard players set @s ajjgui.cooldown 8

scoreboard players reset @s ajjgui.count
scoreboard players reset @s ajjgui.page
scoreboard players reset @s ajjgui.slot
scoreboard players reset @s ajjgui.state

data remove storage ajjgui:data in
data remove storage ajjgui:data out
data remove storage ajjgui:data page
data remove storage ajjgui:data widget