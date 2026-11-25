execute store result score #c_slot ajjguil run data get storage ajjguil:data temp.lower_target[0].Slot
scoreboard players add #c_slot ajjguil 27
execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #c_slot ajjguil

data modify storage ajjguil:data temp.lower_item set from storage ajjguil:data temp.lower_target[0]
function ajjguil:container/set_lower_slot with storage ajjguil:data temp.args
data modify storage ajjguil:data temp.page_target append from storage ajjguil:data temp.lower_item

data remove storage ajjguil:data temp.lower_target[0]
execute if data storage ajjguil:data temp.lower_target[0] run function ajjguil:container/merge_lower_step
