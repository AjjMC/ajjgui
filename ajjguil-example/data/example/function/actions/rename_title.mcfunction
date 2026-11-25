execute if score #title_toggle example matches 0 run return run function example:actions/set_title_live
scoreboard players set #title_toggle example 0
function ajjguil:api/set_title {title:{text:"Example GUI Menu",color:"gold"}}
tellraw @s [{text:"[Example] ",color:"gold"},{text:"Restored default GUI title.",color:"yellow"}]
