data modify storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.values append from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.values[0]
data remove storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.values[0]

execute store result storage ajjgui:data widget.count int 1 run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.values[0]

execute store result score #count ajjgui run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.state
execute store result score #length ajjgui run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.values
scoreboard players add #count ajjgui 1
scoreboard players operation #count ajjgui %= #length ajjgui
execute store result storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.state int 1 run scoreboard players get #count ajjgui