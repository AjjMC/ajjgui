tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target

# 1. Active callback marker takes priority
execute if entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run tag @n[type=minecraft:marker,tag=ajjguil.gui_active] add ajjguil.target
execute if entity @e[type=minecraft:marker,tag=ajjguil.target] run return 1

# 2. Executing directly as a GUI marker
execute if entity @s[type=minecraft:marker,tag=ajjguil.gui_origin] run tag @s add ajjguil.target
execute if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run tag @s add ajjguil.target
execute if entity @e[type=minecraft:marker,tag=ajjguil.target] run return 1

# 3. Executing as a player riding a ported GUI vehicle
execute on vehicle on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run tag @s add ajjguil.target
execute if entity @e[type=minecraft:marker,tag=ajjguil.target] run return 1

# 4. Executing positioned at a container block (including left half of double chest)
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:marker,tag=ajjguil.gui_origin,distance=..0.6] run tag @n[type=minecraft:marker,tag=ajjguil.gui_origin,distance=..0.6] add ajjguil.target
execute if entity @e[type=minecraft:marker,tag=ajjguil.target] run return 1

execute if block ~ ~ ~ #ajjguil:double_capable[type=left] run function ajjguil:internal/select_double_left_marker
execute if entity @e[type=minecraft:marker,tag=ajjguil.target] run return 1
return 0
