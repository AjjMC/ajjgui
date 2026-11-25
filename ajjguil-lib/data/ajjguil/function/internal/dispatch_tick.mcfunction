function ajjguil:internal/clear_event
data modify storage ajjguil:event type set value "tick"
data remove storage ajjguil:data temp.event_player
data modify storage ajjguil:data temp.event_player.uuid set from entity @s UUID
execute on vehicle on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run function ajjguil:internal/dispatch_tick_marker
function ajjguil:internal/clear_event
