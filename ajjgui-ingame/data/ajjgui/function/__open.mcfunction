$data modify storage ajjgui:data temp.args.player set value $(player)
$data modify storage ajjgui:data temp.args.id set value $(id)

function ajjgui:gui/ported/init_open with storage ajjgui:data temp.args

execute unless data storage ajjgui:data temp.args run return fail