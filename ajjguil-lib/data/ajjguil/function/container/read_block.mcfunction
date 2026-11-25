data modify storage ajjguil:data temp.page_target set value []
data remove storage ajjguil:data temp.upper_target
data remove storage ajjguil:data temp.lower_target

execute unless data entity @s {data:{meta:{is_double:1b}}} run data modify storage ajjguil:data temp.page_target set from block ~ ~ ~ Items
execute if data entity @s {data:{meta:{is_double:1b}}} run function ajjguil:container/read_double
