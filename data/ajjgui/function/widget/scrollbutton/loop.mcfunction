execute store result score #length ajjgui run data get storage ajjgui:data temp.scrollbutton.slots

data modify storage ajjgui:data temp.scrollbutton.widget set from storage ajjgui:data temp.scrollbutton.widgets[0]
data modify storage ajjgui:data temp.scrollbutton.slot set from storage ajjgui:data temp.scrollbutton.slots[0]

function ajjgui:widget/scrollbutton/update_widgets

data modify storage ajjgui:data temp.scrollbutton.widgets append from storage ajjgui:data temp.scrollbutton.widgets[0]
data remove storage ajjgui:data temp.scrollbutton.widgets[0]

data modify storage ajjgui:data temp.scrollbutton.slots append from storage ajjgui:data temp.scrollbutton.slots[0]
data remove storage ajjgui:data temp.scrollbutton.slots[0]

scoreboard players add #count ajjgui 1

execute if score #count ajjgui < #length ajjgui run function ajjgui:widget/scrollbutton/loop

return run scoreboard players set #count ajjgui 0