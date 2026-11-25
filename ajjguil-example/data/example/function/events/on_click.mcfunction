execute unless data storage ajjguil:event {gui:{id:"example:menu"}} run return 0

scoreboard players add #click_count example 1
data modify storage example:state last_widget set from storage ajjguil:event widget.id

# Inform player if they clicked a locked widget without the required tag
execute if data storage ajjguil:event {gui:{locked:1b}} run tellraw @s [{text:"[Example] ",color:"red"},{text:"This button is locked! Run ",color:"gray"},{text:"/function example:toggle_vip",color:"yellow"},{text:" to unlock.",color:"gray"}]
