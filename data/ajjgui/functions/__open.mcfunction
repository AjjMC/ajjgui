data remove storage ajjgui:data temp

$data modify storage ajjgui:data temp.player set value $(player)
$data modify storage ajjgui:data temp.id set value $(id)

function ajjgui:control/open_gui_ported with storage ajjgui:data temp

execute unless data storage ajjgui:data temp run return fail