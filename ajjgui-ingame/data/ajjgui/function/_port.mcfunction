$data modify storage ajjgui:data temp.args.player set value $(player)
$data modify storage ajjgui:data temp.args.id set value $(id)

execute as @n[type=minecraft:marker,tag=ajjgui.gui_origin] run function ajjgui:gui/origin/port with storage ajjgui:data temp.args

execute unless entity @e[type=minecraft:marker,tag=ajjgui.gui_origin] run return fail