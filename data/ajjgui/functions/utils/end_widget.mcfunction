execute as @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] at @s run function ajjgui:gui/load_page

scoreboard players set @s ajjgui.cooldown 8