data modify storage ajjgui:gui Temp2 set from storage ajjgui:gui Widget.tag.ajjgui.Group
execute store success score #bool ajjgui run data modify storage ajjgui:gui Temp2 set from storage ajjgui:gui Temp1.tag.ajjgui.Group
execute unless data storage ajjgui:gui Temp1.tag.ajjgui.Group run scoreboard players set #bool ajjgui 1

execute if score #bool ajjgui matches 0 run function ajjgui:widgets/radiobutton/disable