scoreboard objectives add ajjguil dummy
scoreboard objectives add ajjguil.page dummy
scoreboard objectives add ajjguil.slot dummy
scoreboard objectives add ajjguil.slot_returned dummy
scoreboard objectives add ajjguil.cooldown dummy
scoreboard objectives add ajjguil.count dummy
scoreboard objectives add ajjguil.state dummy

data modify storage ajjguil:data version set value "26.3"
data modify storage ajjguil:data data_pack_format set value 121
data modify storage ajjguil:data api_ready set value 1b

execute unless data storage ajjguil:registry definitions run data modify storage ajjguil:registry definitions set value []
