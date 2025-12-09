execute store result score #length ajjgui run data get storage ajjgui:data temp.var5

data modify storage ajjgui:data temp.var6 set from storage ajjgui:data temp.var4[0]
data modify storage ajjgui:data temp.var7 set from storage ajjgui:data temp.var5[0]

function ajjgui:compiler/scrollbutton/end

data modify storage ajjgui:data temp.var4 append from storage ajjgui:data temp.var4[0]
data remove storage ajjgui:data temp.var4[0]

data modify storage ajjgui:data temp.var5 append from storage ajjgui:data temp.var5[0]
data remove storage ajjgui:data temp.var5[0]

scoreboard players add #count ajjgui 1
execute if score #count ajjgui < #length ajjgui run function ajjgui:compiler/scrollbutton/loop
scoreboard players set #count ajjgui 0