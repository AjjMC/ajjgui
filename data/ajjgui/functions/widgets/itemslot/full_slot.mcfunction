execute store result score #count ajjgui run data get storage ajjgui:gui Widget.Count
execute store result score #size ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.Size

execute if score #count ajjgui > #size ajjgui run data modify storage ajjgui:gui Widget.Count set from storage ajjgui:gui Widget.tag.ajjgui.Size
data modify storage ajjgui:gui Temp set from storage ajjgui:gui Widget

execute if score #count ajjgui <= #size ajjgui run scoreboard players set #count ajjgui 0
execute if score #count ajjgui > #size ajjgui run scoreboard players operation #count ajjgui -= #size ajjgui
execute store result storage ajjgui:gui Temp.Count byte 1 run scoreboard players get #count ajjgui

function ajjgui:widgets/itemslot/update_inventory