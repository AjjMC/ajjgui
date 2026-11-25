execute unless data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.values[0] run return 0

data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.values append from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.values[0]
data remove storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.values[0]

execute store result storage ajjguil:data temp.widget.count int 1 run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.values[0]

scoreboard players set #cnt_state ajjguil 0
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state run execute store result score #cnt_state ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state
execute store result score #cnt_len ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.values
scoreboard players add #cnt_state ajjguil 1
scoreboard players operation #cnt_state ajjguil %= #cnt_len ajjguil
execute store result storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state int 1 run scoreboard players get #cnt_state ajjguil

data modify storage ajjguil:data temp.widget_updated set value 1b
