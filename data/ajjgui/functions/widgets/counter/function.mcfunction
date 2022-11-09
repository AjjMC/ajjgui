data modify storage ajjgui:gui Widget.tag.ajjgui.Values append from storage ajjgui:gui Widget.tag.ajjgui.Values[0]
data remove storage ajjgui:gui Widget.tag.ajjgui.Values[0]

data modify storage ajjgui:gui Widget.Count set from storage ajjgui:gui Widget.tag.ajjgui.Values[0]

execute store result score #count ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.State
execute store result score #length ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.Values
scoreboard players add #count ajjgui 1
scoreboard players operation #count ajjgui %= #length ajjgui
execute store result storage ajjgui:gui Widget.tag.ajjgui.State byte 1 run scoreboard players get #count ajjgui