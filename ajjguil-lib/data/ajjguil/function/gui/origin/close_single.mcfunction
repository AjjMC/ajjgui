# Find a safe adjacent air block to clone without overwriting existing world blocks
scoreboard players set #bx ajjguil 0
scoreboard players set #by ajjguil 0
scoreboard players set #bz ajjguil 0
scoreboard players set #found ajjguil 0

execute if block ~ ~1 ~ minecraft:air run scoreboard players set #by ajjguil 1
execute if block ~ ~1 ~ minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 if block ~ ~-1 ~ minecraft:air run scoreboard players set #by ajjguil -1
execute if score #found ajjguil matches 0 if block ~ ~-1 ~ minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 if block ~1 ~ ~ minecraft:air run scoreboard players set #bx ajjguil 1
execute if score #found ajjguil matches 0 if block ~1 ~ ~ minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 if block ~-1 ~ ~ minecraft:air run scoreboard players set #bx ajjguil -1
execute if score #found ajjguil matches 0 if block ~-1 ~ ~ minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 if block ~ ~ ~1 minecraft:air run scoreboard players set #bz ajjguil 1
execute if score #found ajjguil matches 0 if block ~ ~ ~1 minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 if block ~ ~ ~-1 minecraft:air run scoreboard players set #bz ajjguil -1
execute if score #found ajjguil matches 0 if block ~ ~ ~-1 minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 if block ~ ~2 ~ minecraft:air run scoreboard players set #by ajjguil 2
execute if score #found ajjguil matches 0 if block ~ ~2 ~ minecraft:air run scoreboard players set #found ajjguil 1

execute if score #found ajjguil matches 0 run return 0

execute store result storage ajjguil:data temp.args.bx int 1 run scoreboard players get #bx ajjguil
execute store result storage ajjguil:data temp.args.by int 1 run scoreboard players get #by ajjguil
execute store result storage ajjguil:data temp.args.bz int 1 run scoreboard players get #bz ajjguil
function ajjguil:gui/origin/close_single_macro with storage ajjguil:data temp.args
