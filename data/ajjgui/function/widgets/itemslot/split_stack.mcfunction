execute store result score #count ajjgui run data get storage ajjgui:data temp.count
execute store result score #count1 ajjgui run data get storage ajjgui:data temp.count
scoreboard players operation #count ajjgui /= #two ajjgui
scoreboard players operation #count1 ajjgui %= #two ajjgui
execute if score #count1 ajjgui matches 1 run scoreboard players add #count ajjgui 1
execute store result storage ajjgui:data temp.count int 1 run scoreboard players get #count ajjgui