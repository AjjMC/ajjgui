data modify storage ajjgui:data temp.itemslot.out_copy set from storage ajjgui:data temp.itemslot.out
data modify storage ajjgui:data temp.itemslot.in_copy set from storage ajjgui:data temp.itemslot.in

data remove storage ajjgui:data temp.itemslot.out_copy.count
data remove storage ajjgui:data temp.itemslot.in_copy.count

execute store success score #bool ajjgui run data modify storage ajjgui:data temp.itemslot.out_copy set from storage ajjgui:data temp.itemslot.in_copy
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:data temp.itemslot.in