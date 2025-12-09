data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var
data modify storage ajjgui:data temp.var3 set from storage ajjgui:data temp.var1

data remove storage ajjgui:data temp.var2.count
data remove storage ajjgui:data temp.var3.count

execute store success score #bool ajjgui run data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var3
execute if data storage ajjgui:data temp.var1 if score #bool ajjgui matches 0 run function ajjgui:widget/itemslot/split_stack

data remove storage ajjgui:data temp.var2
data remove storage ajjgui:data temp.var3

function ajjgui:widget/itemslot/update_inventory