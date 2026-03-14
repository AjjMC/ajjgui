data remove storage ajjgui:data temp.itemslot.out.components.minecraft:custom_data.ajjgui

scoreboard players set #bool ajjgui 1
execute store result score #bool ajjgui run data get storage ajjgui:data temp.itemslot.out.components.minecraft:custom_data
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:data temp.itemslot.out.components.minecraft:custom_data

scoreboard players set #bool ajjgui 1
execute store result score #bool ajjgui run data get storage ajjgui:data temp.itemslot.out.components
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:data temp.itemslot.out.components

data modify storage ajjgui:data temp.returned set from storage ajjgui:data temp.itemslot.out
execute at @e[type=minecraft:marker,tag=ajjgui.box] run function ajjgui:gui/return_item