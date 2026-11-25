execute unless data storage ajjguil:event {gui:{id:"example:menu"}} run return 0

data modify storage example:state last_remove set from storage ajjguil:event out
tellraw @s [{text:"[Example] ",color:"gold"},{text:"Withdrew ",color:"gray"},{storage:"ajjguil:event",nbt:"out.count",color:"yellow"},{text:"x ",color:"gray"},{storage:"ajjguil:event",nbt:"out.id",color:"aqua"}]
