# Toggles the example.vip tag on @s for testing locked widgets
execute if entity @s[tag=example.vip] run return run function example:actions/remove_vip
tag @s add example.vip
tellraw @s [{text:"[Example] ",color:"gold"},{text:"Added tag ",color:"gray"},{text:"example.vip",color:"green"}]
