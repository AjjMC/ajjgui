execute unless data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.size run return 0

execute store result score #cur_c ajjguil run data get storage ajjguil:data temp.widget.count
execute store result score #max_c ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.size
execute if score #cur_c ajjguil <= #max_c ajjguil run return 0

scoreboard players operation #extra_c ajjguil = #cur_c ajjguil
scoreboard players operation #extra_c ajjguil -= #max_c ajjguil

execute store result storage ajjguil:data temp.widget.count int 1 run scoreboard players get #max_c ajjguil
execute store result storage ajjguil:data temp.in.count int 1 run scoreboard players get #max_c ajjguil

# Return excess items (merged with any existing temp.return_item via give if swap happened, otherwise set directly)
execute unless data storage ajjguil:data temp.return_item.id run return run function ajjguil:widget/itemslot/return_excess_direct
function ajjguil:widget/itemslot/return_excess_extra
