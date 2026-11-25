execute as @e[type=#ajjguil:ported_containers,tag=ajjguil.gui_vehicle] run function ajjguil:entity/vehicle
execute as @e[type=minecraft:marker,tag=ajjguil.gui_origin] at @s run function ajjguil:entity/marker
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{ajjguil:{meta:{compiled:1b}}}}}}] run function ajjguil:entity/item
execute as @a run function ajjguil:entity/player
execute as @e[type=minecraft:marker,tag=ajjguil.gui_ported] on vehicle on passengers if entity @s[type=minecraft:player] run function ajjguil:internal/dispatch_tick
