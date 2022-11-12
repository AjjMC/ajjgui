function ajjgui:widgets/scrollbutton/scroll

execute store result score #count ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.State
execute store result score #length ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.Widgets[0]
scoreboard players add #count ajjgui 1
scoreboard players operation #count ajjgui %= #length ajjgui
execute store result storage ajjgui:gui Widget.tag.ajjgui.State byte 1 run scoreboard players get #count ajjgui