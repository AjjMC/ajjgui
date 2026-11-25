data remove storage ajjguil:data temp.itemslot
data modify storage ajjguil:data temp.itemslot.out set from storage ajjguil:data temp.widget

execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_origin] at @s run function ajjguil:container/read_block
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_ported] on vehicle run data modify storage ajjguil:data temp.page_target set from entity @s Items

execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #slot ajjguil
function ajjguil:widget/itemslot/read_slot_macro with storage ajjguil:data temp.args

scoreboard players set #is_filled ajjguil 0
execute if data storage ajjguil:data {temp:{widget:{components:{"minecraft:custom_data":{ajjguil:{state:1}}}}}} run scoreboard players set #is_filled ajjguil 1
execute if score #is_filled ajjguil matches 0 run function ajjguil:widget/itemslot/click_empty
execute if score #is_filled ajjguil matches 1 run function ajjguil:widget/itemslot/click_filled

data modify storage ajjguil:data temp.widget_updated set value 1b
