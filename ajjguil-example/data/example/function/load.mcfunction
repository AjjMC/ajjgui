scoreboard objectives add example dummy
scoreboard players set #open_count example 0
scoreboard players set #title_toggle example 0
scoreboard players set #offer_level example 0

# Register immediately if ajjguil-lib has already loaded, otherwise wait 1 tick
execute if data storage ajjguil:data {api_ready:1b} run function example:register_all
execute unless data storage ajjguil:data {api_ready:1b} run schedule function example:register_all 1t
