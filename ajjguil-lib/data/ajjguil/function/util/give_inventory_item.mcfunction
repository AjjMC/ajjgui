execute unless data storage ajjguil:data temp.return_item.id run return 0
data modify storage ajjguil:data temp.give_work set from storage ajjguil:data temp.return_item
data remove storage ajjguil:data temp.give_work.Slot
execute unless data storage ajjguil:data temp.give_work.count run data modify storage ajjguil:data temp.give_work.count set value 1

execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["ajjguil.give"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[type=minecraft:item,tag=ajjguil.give] Item set from storage ajjguil:data temp.give_work
tag @e[type=minecraft:item,tag=ajjguil.give] remove ajjguil.give
