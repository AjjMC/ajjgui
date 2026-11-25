execute on passengers if entity @s[type=minecraft:marker,tag=ajjgui.gui_ported] run function ajjgui:gui/ported/save

execute on vehicle run kill @s

execute at @s run kill @n[type=minecraft:interaction,tag=ajjgui.gui_barrier]

data remove entity @s Items

kill @s