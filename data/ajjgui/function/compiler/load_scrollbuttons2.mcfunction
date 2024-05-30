execute store result score #length ajjgui run data get storage ajjgui:data temp5

data modify storage ajjgui:data temp6 set from storage ajjgui:data temp4[0]
data modify storage ajjgui:data temp7 set from storage ajjgui:data temp5[0]

function ajjgui:compiler/load_scrollbuttons3

data modify storage ajjgui:data temp4 append from storage ajjgui:data temp4[0]
data remove storage ajjgui:data temp4[0]

data modify storage ajjgui:data temp5 append from storage ajjgui:data temp5[0]
data remove storage ajjgui:data temp5[0]

scoreboard players add #count ajjgui 1
execute if score #count ajjgui < #length ajjgui run function ajjgui:compiler/load_scrollbuttons2
scoreboard players set #count ajjgui 0