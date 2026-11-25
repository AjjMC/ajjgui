# Checks lock and recovers any non-compiled item dropped into the clicked GUI slot
tag @s remove ajjguil.locked
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.lock run function ajjguil:util/check_lock_dispatch

# For unlocked itembin/itemslot with cooldown == 0 (or unset), their own handlers consume temp.page_target[slot]
execute if data storage ajjguil:data {temp:{widget:{components:{"minecraft:custom_data":{ajjguil:{widget:"itembin"}}}}}} unless score @s[tag=!ajjguil.locked] ajjguil.cooldown matches 1.. if entity @s[tag=!ajjguil.locked] run return 0
execute if data storage ajjguil:data {temp:{widget:{components:{"minecraft:custom_data":{ajjguil:{widget:"itemslot"}}}}}} unless score @s[tag=!ajjguil.locked] ajjguil.cooldown matches 1.. if entity @s[tag=!ajjguil.locked] run return 0

# Read current container items into temp.page_target
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_origin] at @s run function ajjguil:container/read_block
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_ported] on vehicle run data modify storage ajjguil:data temp.page_target set from entity @s Items

# If clicked slot now holds a non-compiled player item, capture it into temp.return_item
execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #slot ajjguil
function ajjguil:util/recover_slot_macro with storage ajjguil:data temp.args
