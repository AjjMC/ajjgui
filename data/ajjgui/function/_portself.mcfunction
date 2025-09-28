data remove storage ajjgui:data temp

data modify storage ajjgui:data temp.player set from entity @s UUID
$data modify storage ajjgui:data temp.id set value $(id)

execute as @n[type=minecraft:marker,tag=ajjgui.gui_origin] run function ajjgui:gui/origin/port with storage ajjgui:data temp

execute unless entity @e[type=minecraft:marker,tag=ajjgui.gui_origin] run return fail