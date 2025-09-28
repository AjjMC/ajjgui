$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run return run function ajjgui:gui/ported/fail_silent
execute at @s positioned ~-0.75 ~-0.5 ~-0.75 if entity @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat,dx=0.5,dy=0,dz=0.5] run return run function ajjgui:gui/ported/fail_silent

data modify storage ajjgui:data temp.rotation set from entity @s Rotation
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ajjgui:gui/ported/create with storage ajjgui:data temp

ride @s mount @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat,tag=ajjgui.gui_new,limit=1]
tag @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat,tag=ajjgui.gui_new] remove ajjgui.gui_new

execute on vehicle on passengers if entity @e[type=minecraft:marker,tag=ajjgui.gui_ported] run function ajjgui:gui/ported/init_marker