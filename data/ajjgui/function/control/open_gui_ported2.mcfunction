$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run data remove storage ajjgui:data temp
$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run return fail

execute on vehicle if entity @s[type=minecraft:chest_boat,tag=ajjgui.gui_boat] run function ajjgui:control/close_gui_ported

data modify storage ajjgui:data temp.rotation set from entity @s Rotation
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ajjgui:control/create_gui_ported with storage ajjgui:data temp

scoreboard players set @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] ajjgui.page 0
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] run function ajjgui:control/load_gui_ported with storage ajjgui:data temp
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] at @s run function ajjgui:control/load_page_ported

ride @s mount @e[type=minecraft:chest_boat,tag=ajjgui.gui_boat,tag=ajjgui.gui_new,limit=1]

tag @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] remove ajjgui.gui_new
tag @e[type=minecraft:chest_boat,tag=ajjgui.gui_boat,tag=ajjgui.gui_new] remove ajjgui.gui_new