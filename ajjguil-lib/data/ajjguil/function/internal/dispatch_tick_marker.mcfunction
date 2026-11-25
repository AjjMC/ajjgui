function ajjguil:internal/build_event_from_marker
function #ajjguil:on_tick
execute if data entity @s data.callbacks.on_tick run function ajjguil:gui/run_on_tick_cb with entity @s data.callbacks
