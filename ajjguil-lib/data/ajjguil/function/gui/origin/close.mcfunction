# Expects @s = origin marker, at = block coordinates
function ajjguil:internal/build_event_from_marker
function #ajjguil:on_close
execute if data entity @s data.callbacks.on_close run function ajjguil:gui/run_on_close_cb with entity @s data.callbacks

execute if block ~ ~ ~ #ajjguil:double_capable[type=right] run return run function ajjguil:gui/origin/close_double
function ajjguil:gui/origin/close_single
