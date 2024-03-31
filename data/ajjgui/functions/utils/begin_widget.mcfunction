execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin] at @s run function ajjgui:control/detect_gui
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported] at @s run function ajjgui:control/detect_gui

execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] run function ajjgui:control/get_page
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] run function ajjgui:control/get_page

function ajjgui:control/get_item
data modify storage ajjgui:data widget set from storage ajjgui:data temp1

scoreboard players add @s ajjgui.cooldown 0