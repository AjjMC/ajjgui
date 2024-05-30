execute store result score #length ajjgui run data get storage ajjgui:data temp1

data modify storage ajjgui:data temp2 set from storage ajjgui:data temp[0]
data modify storage ajjgui:data temp3 set from storage ajjgui:data temp1[0]

function ajjgui:widgets/scrollbutton/add_entry

data modify storage ajjgui:data temp append from storage ajjgui:data temp[0]
data remove storage ajjgui:data temp[0]

data modify storage ajjgui:data temp1 append from storage ajjgui:data temp1[0]
data remove storage ajjgui:data temp1[0]

scoreboard players add #count ajjgui 1
execute if score #count ajjgui < #length ajjgui run function ajjgui:widgets/scrollbutton/update_list
scoreboard players set #count ajjgui 0