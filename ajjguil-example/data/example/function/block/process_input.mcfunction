# Demonstrates reading one slot (Slot 0) and updating another slot (Slot 4) in a Block GUI
function ajjguil:api/get_slot {slot:0}
execute unless data storage ajjguil:data {result:{state:1}} run return run tellraw @s [{text:"[Station] ",color:"gold"},{text:"Insert an item into Slot 0 first!",color:"red"}]

data modify storage example:state processed_item set from storage ajjguil:data result.item.id
function ajjguil:api/clear_slot {slot:0}
function ajjguil:api/set_slot {slot:4,item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":{text:"Processed Output!",color:"green"},"minecraft:custom_data":{ajjguil:{widget:"button",id:"claim_output",callback:"example:block/claim_output"}}}}}
tellraw @s [{text:"[Station] ",color:"gold"},{text:"Processed ",color:"gray"},{storage:"example:state",nbt:"processed_item",color:"aqua"},{text:" -> Click Slot 4 to claim an Emerald!",color:"green"}]
