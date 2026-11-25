# Re-syncs the open/target GUI container with its marker data
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return fail

execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/load_page
execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/load_page

tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
