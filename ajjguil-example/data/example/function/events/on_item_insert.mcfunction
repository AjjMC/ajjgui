execute unless data storage ajjguil:event {gui:{id:"example:menu"}} run return 0

data modify storage example:state last_insert set from storage ajjguil:event in

# Grant 15 XP when items are dropped into the recycle_bin itembin
execute if data storage ajjguil:event {widget:{id:"recycle_bin"}} run xp add @s 15 points
execute if data storage ajjguil:event {widget:{id:"recycle_bin"}} run tellraw @s [{text:"[Example] ",color:"gold"},{text:"Recycled ",color:"gray"},{storage:"ajjguil:event",nbt:"in.id",color:"aqua"},{text:" (+15 XP)",color:"green"}]

# Acknowledge items stored in offer_slot
execute if data storage ajjguil:event {widget:{id:"offer_slot"}} run tellraw @s [{text:"[Example] ",color:"gold"},{text:"Stored ",color:"gray"},{storage:"ajjguil:event",nbt:"in.count",color:"yellow"},{text:"x ",color:"gray"},{storage:"ajjguil:event",nbt:"in.id",color:"aqua"}]
