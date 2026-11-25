# Runs at the primary origin block (~ ~ ~)
function ajjguil:container/inspect_block
execute unless data storage ajjguil:data {temp:{inspect:{valid:1b}}} run return fail

# Recompile raw_pages if block container size differs from registered size
execute store result score #blk_size ajjguil run data get storage ajjguil:data temp.inspect.size
execute store result score #def_size ajjguil run data get storage ajjguil:data temp.open_def.size
execute unless score #blk_size ajjguil = #def_size ajjguil run function ajjguil:api/open_block_recompile

# Ensure origin marker exists at center of block
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=ajjguil.gui_origin,distance=..0.6] run summon minecraft:marker ~ ~ ~ {Tags:["ajjguil.gui_origin"]}

# Record caller player context if executing as a player
data remove storage ajjguil:data temp.event_player
execute if entity @s[type=minecraft:player] run function ajjguil:internal/build_event_player

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:marker,tag=ajjguil.gui_origin,distance=..0.6] run function ajjguil:api/open_block_init_marker
