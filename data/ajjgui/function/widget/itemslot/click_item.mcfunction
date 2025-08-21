data modify storage ajjgui:data temp2 set from storage ajjgui:data temp
data modify storage ajjgui:data temp3 set from storage ajjgui:data temp1

data remove storage ajjgui:data temp2.count
data remove storage ajjgui:data temp3.count

execute store success score #bool ajjgui run data modify storage ajjgui:data temp2 set from storage ajjgui:data temp3
execute if data storage ajjgui:data temp1 if score #bool ajjgui matches 0 run function ajjgui:widget/itemslot/split_stack

data remove storage ajjgui:data temp2
data remove storage ajjgui:data temp3

function ajjgui:widget/itemslot/update_inventory