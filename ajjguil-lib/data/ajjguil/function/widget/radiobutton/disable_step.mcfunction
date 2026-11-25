execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #rb_idx ajjguil
function ajjguil:widget/radiobutton/check_slot_macro with storage ajjguil:data temp.args

scoreboard players add #rb_idx ajjguil 1
execute if score #rb_idx ajjguil < #size ajjguil run function ajjguil:widget/radiobutton/disable_step
