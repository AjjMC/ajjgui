execute if data entity @s {data:{meta:{is_double:1b}}} run data modify storage ajjguil:data temp.args.pair_dx set from entity @s data.meta.pair_dx
execute if data entity @s {data:{meta:{is_double:1b}}} run data modify storage ajjguil:data temp.args.pair_dz set from entity @s data.meta.pair_dz
execute if data entity @s {data:{meta:{is_double:1b}}} run function ajjguil:container/clear_lower with storage ajjguil:data temp.args

data remove storage ajjguil:data temp.event_player
function ajjguil:internal/build_event_from_marker
function #ajjguil:on_close
execute if data entity @s data.callbacks.on_close run function ajjguil:gui/run_on_close_cb with entity @s data.callbacks
function ajjguil:internal/clear_event
kill @s
