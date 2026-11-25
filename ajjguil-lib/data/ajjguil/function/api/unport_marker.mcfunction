data remove storage ajjguil:data temp.event_player
function ajjguil:internal/build_event_from_marker
function #ajjguil:on_close
execute if data entity @s data.callbacks.on_close run function ajjguil:gui/run_on_close_cb with entity @s data.callbacks
function ajjguil:container/clear_block
kill @s
