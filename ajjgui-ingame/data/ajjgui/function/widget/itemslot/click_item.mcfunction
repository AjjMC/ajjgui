data modify storage ajjgui:data temp.itemslot.out_copy set from storage ajjgui:data temp.itemslot.out
data modify storage ajjgui:data temp.itemslot.in_copy set from storage ajjgui:data temp.itemslot.in

data remove storage ajjgui:data temp.itemslot.out_copy.count
data remove storage ajjgui:data temp.itemslot.in_copy.count

execute store success score #bool ajjgui run data modify storage ajjgui:data temp.itemslot.out_copy set from storage ajjgui:data temp.itemslot.in_copy
execute if data storage ajjgui:data temp.itemslot.in if score #bool ajjgui matches 0 run function ajjgui:widget/itemslot/split_stack

function ajjgui:widget/itemslot/update_inventory