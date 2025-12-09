data modify storage ajjgui:data temp.args.player set from entity @s UUID
$data modify storage ajjgui:data temp.args.id set value $(id)

function ajjgui:gui/origin/init_port with storage ajjgui:data temp.args

execute unless entity @e[type=minecraft:marker,tag=ajjgui.gui_origin] run return fail