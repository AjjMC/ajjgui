execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin] at @s run function ajjgui:gui/detect
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported] at @s run function ajjgui:gui/detect

execute as @e[type=minecraft:marker,tag=ajjgui.gui_active] run function ajjgui:gui/get_page

function ajjgui:gui/get_item
data modify storage ajjgui:data widget set from storage ajjgui:data temp1

scoreboard players add @s ajjgui.cooldown 0