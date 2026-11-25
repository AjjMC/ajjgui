execute unless data storage ajjguil:event {gui:{id:"example:menu"}} run return 0

scoreboard players add #page_changes example 1
data modify storage example:state last_page set from storage ajjguil:event page
execute at @s run tellraw @a[distance=..6] [{text:"[Example] ",color:"gold"},{text:"Switched from page ",color:"gray"},{storage:"ajjguil:event",nbt:"previous_page",color:"yellow"},{text:" to page ",color:"gray"},{storage:"ajjguil:event",nbt:"page",color:"green"}]
