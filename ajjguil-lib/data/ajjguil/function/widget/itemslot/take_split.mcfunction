scoreboard players set #old_c ajjguil 1
scoreboard players set #rem_c ajjguil 1
execute if data storage ajjguil:data temp.itemslot.out.count run execute store result score #old_c ajjguil run data get storage ajjguil:data temp.itemslot.out.count
execute if data storage ajjguil:data temp.itemslot.in.count run execute store result score #rem_c ajjguil run data get storage ajjguil:data temp.itemslot.in.count

scoreboard players operation #take_c ajjguil = #old_c ajjguil
scoreboard players operation #take_c ajjguil -= #rem_c ajjguil

execute if score #take_c ajjguil matches ..0 run return 0

data modify storage ajjguil:data temp.itemslot.return_src set from storage ajjguil:data temp.itemslot.out
execute store result storage ajjguil:data temp.itemslot.return_src.count int 1 run scoreboard players get #take_c ajjguil
function ajjguil:widget/itemslot/strip_to_return
data modify storage ajjguil:data temp.out set from storage ajjguil:data temp.return_item

execute store result storage ajjguil:data temp.widget.count int 1 run scoreboard players get #rem_c ajjguil
