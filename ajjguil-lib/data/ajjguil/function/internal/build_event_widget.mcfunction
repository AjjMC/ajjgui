data remove storage ajjguil:event widget

execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.id run data modify storage ajjguil:event widget.id set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.id
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.action run data modify storage ajjguil:event widget.action set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.action
data modify storage ajjguil:event widget.type set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.widget
execute if score @s ajjguil.state matches -2147483648..2147483647 run execute store result storage ajjguil:event widget.state int 1 run scoreboard players get @s ajjguil.state
execute if score @s ajjguil.count matches -2147483648..2147483647 run execute store result storage ajjguil:event widget.count int 1 run scoreboard players get @s ajjguil.count
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.group run data modify storage ajjguil:event widget.group set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.group
data modify storage ajjguil:event widget.slot set from storage ajjguil:data temp.widget.Slot
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.data run data modify storage ajjguil:event widget.data set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.data
data modify storage ajjguil:event widget.item set from storage ajjguil:data temp.widget

data remove storage ajjguil:event in
data remove storage ajjguil:event out
execute if data storage ajjguil:data temp.in run data modify storage ajjguil:event in set from storage ajjguil:data temp.in
execute if data storage ajjguil:data temp.out run data modify storage ajjguil:event out set from storage ajjguil:data temp.out
