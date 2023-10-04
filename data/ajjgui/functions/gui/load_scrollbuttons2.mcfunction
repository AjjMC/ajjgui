execute store result score #length ajjgui run data get storage ajjgui:gui Temp5

data modify storage ajjgui:gui Temp6 set from storage ajjgui:gui Temp4[0]
data modify storage ajjgui:gui Temp7 set from storage ajjgui:gui Temp5[0]

function ajjgui:gui/load_scrollbuttons3

data modify storage ajjgui:gui Temp4 append from storage ajjgui:gui Temp4[0]
data remove storage ajjgui:gui Temp4[0]

data modify storage ajjgui:gui Temp5 append from storage ajjgui:gui Temp5[0]
data remove storage ajjgui:gui Temp5[0]

scoreboard players add #count ajjgui 1
execute if score #count ajjgui < #length ajjgui run function ajjgui:gui/load_scrollbuttons2
scoreboard players set #count ajjgui 0