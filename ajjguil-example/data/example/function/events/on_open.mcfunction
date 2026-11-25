execute unless data storage ajjguil:event {gui:{id:"example:menu"}} run return 0

scoreboard players add #open_count example 1
data modify storage example:state last_event set value "open"
