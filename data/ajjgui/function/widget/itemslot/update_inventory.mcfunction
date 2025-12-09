data remove storage ajjgui:data temp.var.components.minecraft:custom_data.ajjgui
data modify storage ajjgui:data temp.var.components.minecraft:custom_data.ajjgui set from storage ajjgui:data temp.var2

scoreboard players set #bool ajjgui 1
execute store result score #bool ajjgui run data get storage ajjgui:data temp.var.components.minecraft:custom_data
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:data temp.var.components.minecraft:custom_data

execute at @e[type=minecraft:marker,tag=ajjgui.box] run function ajjgui:gui/return_item