# Expects @s = gui_vehicle
# Fire on_close event from marker before destroying entities
execute on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/on_close_marker

execute on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/save

execute on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run kill @s
execute on vehicle run kill @s
execute at @s run kill @n[type=minecraft:interaction,tag=ajjguil.gui_barrier,distance=..2]

data remove entity @s Items
kill @s
