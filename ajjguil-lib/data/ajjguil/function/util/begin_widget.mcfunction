tag @e[type=minecraft:marker,tag=ajjguil.gui_active] remove ajjguil.gui_active
tag @s remove ajjguil.locked

data remove storage ajjguil:data temp.in
data remove storage ajjguil:data temp.out
data remove storage ajjguil:data temp.page_req
data modify storage ajjguil:data temp.widget_updated set value 0b
data modify storage ajjguil:data temp.exit_gui set value 0b
data modify storage ajjguil:data temp.page_changed set value 0b
data modify storage ajjguil:data temp.slot_overridden set value 0b

# Populate #slot and initialize cooldown before gui/detect inspects the clicked slot
scoreboard players add @s ajjguil.cooldown 0
scoreboard players set #slot ajjguil 0
execute store result score #slot ajjguil run scoreboard players get @s ajjguil.slot

# 1. If riding a ported vehicle with a ported GUI marker, that marker is directly active
execute on vehicle on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run tag @s add ajjguil.gui_active

# 2. Otherwise inspect nearby origin markers within interaction range (nearest first)
execute unless entity @e[type=minecraft:marker,tag=ajjguil.gui_active] at @s as @e[type=minecraft:marker,tag=ajjguil.gui_origin,distance=..9,sort=nearest] run function ajjguil:gui/detect

# Abort cleanly if no matching active marker was found
execute unless entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return fail

# Read current page and clicked slot item
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active] run function ajjguil:gui/load_page
execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #slot ajjguil
function ajjguil:gui/get_item with storage ajjguil:data temp.args

data modify storage ajjguil:data temp.origin_widget set from storage ajjguil:data temp.item
data modify storage ajjguil:data temp.widget set from storage ajjguil:data temp.item
