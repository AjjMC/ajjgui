# Removes an origin GUI from the container block at ~ ~ ~ (or double chest left half)
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] run return fail

execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] at @s run function ajjguil:api/unport_marker
tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
