# Find neighbor (left) chest offset and safely close both halves atomically
scoreboard players set #dx ajjguil 0
scoreboard players set #dz ajjguil 0
execute if block ~ ~ ~ #ajjguil:double_capable[facing=north] run scoreboard players set #dx ajjguil -1
execute if block ~ ~ ~ #ajjguil:double_capable[facing=east] run scoreboard players set #dz ajjguil -1
execute if block ~ ~ ~ #ajjguil:double_capable[facing=south] run scoreboard players set #dx ajjguil 1
execute if block ~ ~ ~ #ajjguil:double_capable[facing=west] run scoreboard players set #dz ajjguil 1

execute store result storage ajjguil:data temp.args.dx int 1 run scoreboard players get #dx ajjguil
execute store result storage ajjguil:data temp.args.dz int 1 run scoreboard players get #dz ajjguil
function ajjguil:gui/origin/close_double_check with storage ajjguil:data temp.args
