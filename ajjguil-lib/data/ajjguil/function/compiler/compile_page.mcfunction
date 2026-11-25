data modify storage ajjguil:data temp.compile.normalized_page set value []
data modify storage ajjguil:data temp.compile.out_page set value []

execute if data storage ajjguil:data temp.compile.raw_page[0] run function ajjguil:compiler/normalize_item_step

scoreboard players set #comp_slot ajjguil 0
execute if score #comp_slot ajjguil < #size ajjguil run function ajjguil:compiler/fill_slots_step
