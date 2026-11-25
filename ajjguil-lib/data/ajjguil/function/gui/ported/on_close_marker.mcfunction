# Expects @s = marker (ajjguil.gui_ported)
data remove storage ajjguil:data temp.event_player
execute if data entity @s data.owner_name run data modify storage ajjguil:data temp.event_player.name set from entity @s data.owner_name
execute if data entity @s data.owner_uuid run data modify storage ajjguil:data temp.event_player.uuid set from entity @s data.owner_uuid

function ajjguil:internal/build_event_from_marker
function #ajjguil:on_close
execute if data entity @s data.callbacks.on_close run function ajjguil:gui/run_on_close_cb with entity @s data.callbacks
