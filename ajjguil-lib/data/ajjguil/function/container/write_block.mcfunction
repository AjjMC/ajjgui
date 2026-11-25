execute unless data entity @s {data:{meta:{is_double:1b}}} run data modify block ~ ~ ~ Items set from storage ajjguil:data temp.page
execute unless data entity @s {data:{meta:{is_double:1b}}} if data storage ajjguil:data temp.custom_name run data modify block ~ ~ ~ CustomName set from storage ajjguil:data temp.custom_name

execute if data entity @s {data:{meta:{is_double:1b}}} run function ajjguil:container/write_double
