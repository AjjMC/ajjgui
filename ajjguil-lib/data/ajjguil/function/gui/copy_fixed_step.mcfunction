execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #fix_slot ajjguil
function ajjguil:gui/copy_fixed_slot with storage ajjguil:data temp.args
scoreboard players add #fix_slot ajjguil 1
execute if score #fix_slot ajjguil < #size ajjguil run function ajjguil:gui/copy_fixed_step
