# Expects @s = marker (ajjguil.gui_ported)
execute unless data entity @s data.persistent run return 0
execute unless data entity @s {data:{persistent:1b}} run return 0
data modify storage ajjguil:data temp.args.id set from entity @s data.id
function ajjguil:gui/ported/save_macro with storage ajjguil:data temp.args
