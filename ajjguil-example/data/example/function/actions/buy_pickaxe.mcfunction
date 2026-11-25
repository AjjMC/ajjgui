# Requires 3 diamonds in @s's inventory to purchase a diamond pickaxe
execute store result score #diamonds example run clear @s minecraft:diamond 0
execute if score #diamonds example matches ..2 run return run tellraw @s [{text:"[Example] ",color:"gold"},{text:"Need 3 Diamonds to buy a Diamond Pickaxe!",color:"red"}]

clear @s minecraft:diamond 3
give @s minecraft:diamond_pickaxe 1
scoreboard players add #purchases example 1
tellraw @s [{text:"[Example] ",color:"gold"},{text:"Purchased Diamond Pickaxe!",color:"aqua"}]
