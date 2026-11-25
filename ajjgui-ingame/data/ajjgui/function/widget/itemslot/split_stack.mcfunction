execute store result score #count ajjgui run data get storage ajjgui:data temp.itemslot.out.count

scoreboard players add #count ajjgui 1
scoreboard players operation #count ajjgui /= #2 ajjgui

execute store result storage ajjgui:data temp.itemslot.out.count int 1 run scoreboard players get #count ajjgui