data modify storage ajjguil:data temp.upper_target set from block ~ ~ ~ Items
data modify storage ajjguil:data temp.page_target set from storage ajjguil:data temp.upper_target

data modify storage ajjguil:data temp.args.pair_dx set from entity @s data.meta.pair_dx
data modify storage ajjguil:data temp.args.pair_dz set from entity @s data.meta.pair_dz
function ajjguil:container/read_lower with storage ajjguil:data temp.args

execute if data storage ajjguil:data temp.lower_target[0] run function ajjguil:container/merge_lower_step
