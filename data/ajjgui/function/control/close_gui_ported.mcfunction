execute on passengers if entity @s[type=minecraft:marker,tag=ajjgui.gui_ported] run function ajjgui:control/save_gui_ported
execute on passengers if entity @s[type=minecraft:marker,tag=ajjgui.gui_ported] run kill @s
execute on vehicle run kill @s
execute at @s positioned ~ ~-0.1 ~ run kill @n[type=minecraft:interaction,tag=ajjgui.gui_barrier]
data remove entity @s Items
kill @s