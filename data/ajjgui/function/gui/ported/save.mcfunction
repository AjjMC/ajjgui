data modify storage ajjgui:data temp.args.player set from entity @s data.meta.player
data modify storage ajjgui:data temp.args.id set from entity @s data.meta.id

function ajjgui:gui/origin/port with storage ajjgui:data temp.args

kill @s