$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run return run function ajjgui:gui/ported/fail_not_found
execute at @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat] positioned ~-0.75 ~-0.5 ~-0.75 if entity @s[dx=0.5,dy=0,dz=0.5] run return run function ajjgui:gui/ported/fail_no_space

function ajjgui:util/feedback/open

function ajjgui:_open with storage ajjgui:data temp.args
