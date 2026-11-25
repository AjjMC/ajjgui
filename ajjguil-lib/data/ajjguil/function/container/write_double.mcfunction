data modify storage ajjguil:data temp.upper_page set value []
data modify storage ajjguil:data temp.lower_page set value []
data modify storage ajjguil:data temp.split_list set from storage ajjguil:data temp.page
execute if data storage ajjguil:data temp.split_list[0] run function ajjguil:container/split_double_step

data modify block ~ ~ ~ Items set from storage ajjguil:data temp.upper_page
execute if data storage ajjguil:data temp.custom_name run data modify block ~ ~ ~ CustomName set from storage ajjguil:data temp.custom_name

data modify storage ajjguil:data temp.args.pair_dx set from entity @s data.meta.pair_dx
data modify storage ajjguil:data temp.args.pair_dz set from entity @s data.meta.pair_dz
function ajjguil:container/write_lower with storage ajjguil:data temp.args
