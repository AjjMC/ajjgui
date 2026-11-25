execute unless data storage ajjguil:data temp.return_item.id run return 0
data modify storage ajjguil:data temp.give_work set from storage ajjguil:data temp.return_item
data remove storage ajjguil:data temp.give_work.Slot
execute unless data storage ajjguil:data temp.give_work.count run data modify storage ajjguil:data temp.give_work.count set value 1

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["ajjguil.proxy"],Marker:1b,Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b}
data modify entity @n[type=minecraft:armor_stand,tag=ajjguil.proxy] equipment.mainhand set from storage ajjguil:data temp.give_work
item replace entity @s player.cursor from entity @n[type=minecraft:armor_stand,tag=ajjguil.proxy] weapon.mainhand
data remove entity @n[type=minecraft:armor_stand,tag=ajjguil.proxy] equipment.mainhand
kill @e[type=minecraft:armor_stand,tag=ajjguil.proxy]
