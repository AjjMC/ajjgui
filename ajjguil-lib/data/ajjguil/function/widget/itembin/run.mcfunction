execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_origin] at @s run function ajjguil:container/read_block
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_ported] on vehicle run data modify storage ajjguil:data temp.page_target set from entity @s Items

execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #slot ajjguil
function ajjguil:widget/itembin/read_slot_macro with storage ajjguil:data temp.args

execute if data storage ajjguil:data temp.itembin.in.id unless data storage ajjguil:data {temp:{itembin:{in:{components:{"minecraft:custom_data":{ajjguil:{meta:{compiled:1b}}}}}}}} run function ajjguil:widget/itembin/accept_in
