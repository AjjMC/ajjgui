data remove storage ajjgui:data temp

data modify storage ajjgui:data temp.player set from entity @s UUID
$data modify storage ajjgui:data temp.id set value $(id)

execute unless entity @e[type=minecraft:marker,tag=ajjgui.gui_origin] run return fail

execute as @e[type=minecraft:marker,tag=ajjgui.gui_origin,sort=nearest,limit=1] run function ajjgui:control/port_gui2 with storage ajjgui:data temp