execute store result score #length ajjgui run data get storage ajjgui:data temp.var1

data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var[0]
data modify storage ajjgui:data temp.var3 set from storage ajjgui:data temp.var1[0]

function ajjgui:widget/scrollbutton/add_entry

data modify storage ajjgui:data temp.var append from storage ajjgui:data temp.var[0]
data remove storage ajjgui:data temp.var[0]

data modify storage ajjgui:data temp.var1 append from storage ajjgui:data temp.var1[0]
data remove storage ajjgui:data temp.var1[0]

scoreboard players add #count ajjgui 1
execute if score #count ajjgui < #length ajjgui run function ajjgui:widget/scrollbutton/update_list
scoreboard players set #count ajjgui 0