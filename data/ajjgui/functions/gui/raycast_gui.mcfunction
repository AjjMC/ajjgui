scoreboard players add #count ajjgui 1
tag @e[type=minecraft:armor_stand,tag=ajjgui.gui,distance=..2] add ajjgui.active_gui
execute if score #count ajjgui matches ..50 unless entity @e[type=minecraft:armor_stand,tag=ajjgui.gui,tag=ajjgui.active_gui] positioned ^ ^ ^0.1 run function ajjgui:gui/raycast_gui
scoreboard players set #count ajjgui 0