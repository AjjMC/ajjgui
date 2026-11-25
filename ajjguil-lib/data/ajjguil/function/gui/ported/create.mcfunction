$summon minecraft:interaction ~ ~ ~ {height:0.0f,Tags:["ajjguil.gui_base"],Passengers:[{id:"$(vehicle)",Silent:1b,Invulnerable:1b,NoGravity:1b,Tags:["ajjguil.gui_vehicle","ajjguil.selected"],Rotation:$(rotation),Passengers:[{id:"minecraft:marker",Tags:["ajjguil.gui_ported"]}]}]}
execute if entity @e[type=minecraft:hopper_minecart,tag=ajjguil.selected] run data modify entity @n[type=minecraft:hopper_minecart,tag=ajjguil.selected] Enabled set value 0b
summon minecraft:interaction ~ ~-0.1 ~ {width:2.0f,Tags:["ajjguil.gui_barrier"]}
