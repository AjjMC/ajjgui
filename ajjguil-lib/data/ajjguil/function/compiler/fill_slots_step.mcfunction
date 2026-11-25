execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #comp_slot ajjguil
function ajjguil:compiler/fill_slot_check with storage ajjguil:data temp.args

scoreboard players add #comp_slot ajjguil 1
execute if score #comp_slot ajjguil < #size ajjguil run function ajjguil:compiler/fill_slots_step
