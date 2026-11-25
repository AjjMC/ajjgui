# Updates the title using a plain text string argument: {title:"My Title"}
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return fail

$data modify storage ajjguil:data temp.new_title set value "$(title)"
data modify entity @n[type=minecraft:marker,tag=ajjguil.target] data.custom_name set from storage ajjguil:data temp.new_title

execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/load_page
execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/load_page

tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
