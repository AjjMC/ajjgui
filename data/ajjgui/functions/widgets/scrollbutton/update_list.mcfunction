execute store result score #length ajjgui run data get storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp2 set from storage ajjgui:gui Temp[0]
execute store result storage ajjgui:gui Temp3 byte 1 run data get storage ajjgui:gui Temp1[0]

function ajjgui:widgets/scrollbutton/add_entry

data modify storage ajjgui:gui Temp append from storage ajjgui:gui Temp[0]
data remove storage ajjgui:gui Temp[0]

data modify storage ajjgui:gui Temp1 append from storage ajjgui:gui Temp1[0]
data remove storage ajjgui:gui Temp1[0]

scoreboard players add #count ajjgui 1
execute if score #count ajjgui < #length ajjgui run function ajjgui:widgets/scrollbutton/update_list
scoreboard players set #count ajjgui 0