data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items append from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items[0]
data remove storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items[0]

data modify storage ajjguil:data temp.scroll.copy set from storage ajjguil:data temp.widget
data modify storage ajjguil:data temp.widget set from storage ajjguil:data temp.scroll.copy.components.minecraft:custom_data.ajjguil.items[0]
execute unless data storage ajjguil:data temp.widget.count run data modify storage ajjguil:data temp.widget.count set value 1
data modify storage ajjguil:data temp.widget.Slot set from storage ajjguil:data temp.scroll.copy.Slot
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.scroll.copy.components.minecraft:custom_data.ajjguil

scoreboard players set #sc_state ajjguil 0
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state run execute store result score #sc_state ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state
execute store result score #sc_len ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items
scoreboard players add #sc_state ajjguil 1
scoreboard players operation #sc_state ajjguil %= #sc_len ajjguil
execute store result storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state int 1 run scoreboard players get #sc_state ajjguil
