execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #scan ajjguil
function ajjguil:entity/scan_cursor_macro with storage ajjguil:data temp.args
execute if score @s ajjguil.slot matches 0..53 run return 0

scoreboard players add #scan ajjguil 1
execute if score #scan ajjguil matches ..53 run function ajjguil:entity/scan_cursor_step
