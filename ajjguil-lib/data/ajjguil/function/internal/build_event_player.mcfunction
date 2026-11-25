data remove storage ajjguil:data temp.event_player
data modify storage ajjguil:data temp.event_player.uuid set from entity @s UUID
execute if score @s ajjguil.slot matches 0.. run execute store result storage ajjguil:data temp.event_player.slot int 1 run scoreboard players get @s ajjguil.slot
execute if score @s ajjguil.slot_returned matches -200.. run execute store result storage ajjguil:data temp.event_player.slot_returned int 1 run scoreboard players get @s ajjguil.slot_returned

data modify storage ajjguil:event player set from storage ajjguil:data temp.event_player
