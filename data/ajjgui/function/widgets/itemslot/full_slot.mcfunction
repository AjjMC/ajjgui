execute store result score #count ajjgui run data get storage ajjgui:data widget.count
execute store result score #size ajjgui run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.size

execute if score #count ajjgui > #size ajjgui run data modify storage ajjgui:data widget.count set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.size
data modify storage ajjgui:data temp set from storage ajjgui:data widget

execute if score #count ajjgui <= #size ajjgui run scoreboard players set #count ajjgui 0
execute if score #count ajjgui > #size ajjgui run scoreboard players operation #count ajjgui -= #size ajjgui
execute store result storage ajjgui:data temp.count int 1 run scoreboard players get #count ajjgui

execute unless score #count ajjgui matches 0 run function ajjgui:widgets/itemslot/update_inventory