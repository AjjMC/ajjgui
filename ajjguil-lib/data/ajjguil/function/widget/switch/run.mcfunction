execute unless data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items[0] run return 0

data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items append from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items[0]
data remove storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items[0]

data modify storage ajjguil:data temp.switch.copy set from storage ajjguil:data temp.widget
data modify storage ajjguil:data temp.widget set from storage ajjguil:data temp.switch.copy.components.minecraft:custom_data.ajjguil.items[0]
execute unless data storage ajjguil:data temp.widget.count run data modify storage ajjguil:data temp.widget.count set value 1
data modify storage ajjguil:data temp.widget.Slot set from storage ajjguil:data temp.switch.copy.Slot
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.switch.copy.components.minecraft:custom_data.ajjguil

scoreboard players set #sw_state ajjguil 0
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state run execute store result score #sw_state ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state
execute store result score #sw_len ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items
scoreboard players add #sw_state ajjguil 1
scoreboard players operation #sw_state ajjguil %= #sw_len ajjguil
execute store result storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state int 1 run scoreboard players get #sw_state ajjguil

data modify storage ajjguil:data temp.widget_updated set value 1b
