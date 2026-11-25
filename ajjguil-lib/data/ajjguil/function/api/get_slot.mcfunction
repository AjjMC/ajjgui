# Reads a slot item from the active/target GUI into ajjguil:data result
# Args: {slot:0}
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return fail

data remove storage ajjguil:data result
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/get_page

$data modify storage ajjguil:data temp.args.slot set value $(slot)
function ajjguil:api/get_slot_read with storage ajjguil:data temp.args

tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
