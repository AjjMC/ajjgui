# Closes an active GUI for the executing player (ported) or block at ~ ~ ~ (origin)
# If called inside a click callback, defer actual close to end_widget so slot updates complete safely
execute if entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return run data modify storage ajjguil:data temp.exit_gui set value 1b

execute on vehicle if entity @s[tag=ajjguil.gui_vehicle] run return run function ajjguil:gui/ported/close

function ajjguil:internal/select_target_marker
execute if entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/close
execute if entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] on vehicle run function ajjguil:gui/ported/close
tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
