data modify storage ajjgui:data temp2 set from storage ajjgui:data temp
data modify storage ajjgui:data temp3 set from storage ajjgui:data temp1

data remove storage ajjgui:data temp2.count
data remove storage ajjgui:data temp3.count

execute store success score #bool ajjgui run data modify storage ajjgui:data temp2 set from storage ajjgui:data temp3
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:data temp1

data remove storage ajjgui:data temp2
data remove storage ajjgui:data temp3