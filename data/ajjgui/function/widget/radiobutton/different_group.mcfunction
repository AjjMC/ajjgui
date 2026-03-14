execute unless data storage ajjgui:data {temp:{radiobutton:{candidate:{components:{"minecraft:custom_data":{ajjgui:{widget:"radiobutton"}}}}}}} run return fail

data modify storage ajjgui:data temp.radiobutton.group set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.group
execute store success score #bool ajjgui run data modify storage ajjgui:data temp.radiobutton.group set from storage ajjgui:data temp.radiobutton.candidate.components.minecraft:custom_data.ajjgui.group

execute if score #bool ajjgui matches 0 run function ajjgui:widget/radiobutton/disable