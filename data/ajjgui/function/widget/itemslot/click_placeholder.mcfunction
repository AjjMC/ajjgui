data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var
data modify storage ajjgui:data temp.var3 set from storage ajjgui:data temp.var1

data remove storage ajjgui:data temp.var2.count
data remove storage ajjgui:data temp.var3.count

execute store success score #bool ajjgui run data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var3
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:data temp.var1

data remove storage ajjgui:data temp.var2
data remove storage ajjgui:data temp.var3