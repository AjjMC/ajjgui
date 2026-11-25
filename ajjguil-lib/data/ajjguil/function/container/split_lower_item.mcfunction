scoreboard players remove #c_slot ajjguil 27
execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #c_slot ajjguil
data modify storage ajjguil:data temp.lower_item set from storage ajjguil:data temp.split_list[0]
function ajjguil:container/set_lower_slot with storage ajjguil:data temp.args
data modify storage ajjguil:data temp.lower_page append from storage ajjguil:data temp.lower_item
