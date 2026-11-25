# Places 4 live Block GUI containers 3 blocks south (+Z) of the executing player and binds each GUI
execute positioned ~-1 ~ ~3 run setblock ~ ~ ~ minecraft:chest[facing=south,type=right]
execute positioned ~ ~ ~3 run setblock ~ ~ ~ minecraft:chest[facing=south,type=left]
execute positioned ~-1 ~ ~3 run function ajjguil:api/port {id:"example:block_vault"}

execute positioned ~2 ~ ~3 run setblock ~ ~ ~ minecraft:copper_chest[facing=south,type=single]
execute positioned ~2 ~ ~3 run function ajjguil:api/port {id:"example:menu"}

execute positioned ~4 ~ ~3 run setblock ~ ~ ~ minecraft:crafter
execute positioned ~4 ~ ~3 run function ajjguil:api/port {id:"example:block_station"}

execute positioned ~6 ~ ~3 run setblock ~ ~ ~ minecraft:hopper
execute positioned ~6 ~ ~3 run function ajjguil:api/port {id:"example:block_hopper"}

tellraw @s [{text:"[Block Example] ",color:"gold"},{text:"Spawned Double Chest (54), Copper Chest (27), Crafter (9), and Hopper (5) at ~ ~ ~3!",color:"green"}]
