execute on passengers if entity @s[type=minecraft:marker,tag=ajjgui.gui_ported] run function ajjgui:control/save_gui_ported
execute on passengers if entity @s[type=minecraft:marker,tag=ajjgui.gui_ported] run kill @s
execute on vehicle run kill @s
data remove entity @s Items
kill @s