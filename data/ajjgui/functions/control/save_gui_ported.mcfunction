data remove storage ajjgui:data temp1

data modify storage ajjgui:data temp1.player set from entity @s data.meta.player
data modify storage ajjgui:data temp1.id set from entity @s data.meta.id

function ajjgui:control/port_gui2 with storage ajjgui:data temp1