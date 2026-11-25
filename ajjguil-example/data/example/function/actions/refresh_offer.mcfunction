scoreboard players add #offer_level example 1
execute if score #offer_level example matches 2.. run scoreboard players set #offer_level example 0

execute if score #offer_level example matches 1 run return run function ajjguil:api/set_slot {slot:14,item:{id:"minecraft:emerald_block",count:1,components:{"minecraft:custom_name":{text:"Bonus Claim Ready!",color:"green"},"minecraft:custom_data":{ajjguil:{widget:"button",id:"bonus_reward"}}}}}
function ajjguil:api/clear_slot {slot:14}
