data remove storage ajjgui:gui Temp.tag.ajjgui
data modify storage ajjgui:gui Temp.tag.ajjgui set from storage ajjgui:gui Temp2

scoreboard players set #bool ajjgui 1
execute store result score #bool ajjgui run data get storage ajjgui:gui Temp.tag
execute if score #bool ajjgui matches 0 run data remove storage ajjgui:gui Temp.tag

execute at @e[type=minecraft:marker,tag=ajjgui.box] run function ajjgui:gui/give_item