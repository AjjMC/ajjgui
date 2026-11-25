data modify storage ajjguil:data temp.return_item set from storage ajjguil:data temp.itemslot.return_src
data remove storage ajjguil:data temp.return_item.Slot
data remove storage ajjguil:data temp.return_item.components.minecraft:custom_data.ajjguil

scoreboard players set #cd_keys ajjguil 0
execute store result score #cd_keys ajjguil run data get storage ajjguil:data temp.return_item.components.minecraft:custom_data
execute if score #cd_keys ajjguil matches 0 run data remove storage ajjguil:data temp.return_item.components.minecraft:custom_data

scoreboard players set #comp_keys ajjguil 0
execute store result score #comp_keys ajjguil run data get storage ajjguil:data temp.return_item.components
execute if score #comp_keys ajjguil matches 0 run data remove storage ajjguil:data temp.return_item.components
