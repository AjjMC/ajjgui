# Expects @s = marker (ajjguil.gui_origin), at = block coordinates
execute unless block ~ ~ ~ #ajjguil:containers run return run function ajjguil:entity/marker_broken
execute if data entity @s {data:{meta:{is_double:1b}}} unless block ~ ~ ~ #ajjguil:double_capable[type=right] run return run function ajjguil:entity/marker_half_broken

# Dispatch tick event for origin GUI marker
function ajjguil:internal/clear_event
data modify storage ajjguil:event type set value "tick"
data remove storage ajjguil:data temp.event_player
function ajjguil:internal/dispatch_tick_marker
function ajjguil:internal/clear_event
