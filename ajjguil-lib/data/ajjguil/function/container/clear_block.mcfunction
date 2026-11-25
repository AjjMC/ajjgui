data remove block ~ ~ ~ Items
execute if data entity @s {data:{meta:{is_double:1b}}} run data modify storage ajjguil:data temp.args.pair_dx set from entity @s data.meta.pair_dx
execute if data entity @s {data:{meta:{is_double:1b}}} run data modify storage ajjguil:data temp.args.pair_dz set from entity @s data.meta.pair_dz
execute if data entity @s {data:{meta:{is_double:1b}}} run function ajjguil:container/clear_lower with storage ajjguil:data temp.args
