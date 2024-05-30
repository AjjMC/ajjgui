data modify storage ajjgui:data temp2 set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.group
execute store success score #bool ajjgui run data modify storage ajjgui:data temp2 set from storage ajjgui:data temp1.components.minecraft:custom_data.ajjgui.group
execute unless data storage ajjgui:data temp1.components.minecraft:custom_data.ajjgui.group run scoreboard players set #bool ajjgui 1

execute if score #bool ajjgui matches 0 run function ajjgui:widgets/radiobutton/disable