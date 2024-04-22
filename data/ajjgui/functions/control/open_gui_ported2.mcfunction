$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run data remove storage ajjgui:data temp
$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run return fail

execute on vehicle if entity @s[type=minecraft:chest_boat,tag=ajjgui.gui_ported] run function ajjgui:control/close_gui_ported

execute at @s run summon minecraft:interaction ~ ~0.5 ~ {width:2.0f,Tags:["ajjgui.gui_ported"],Passengers:[{id:"minecraft:chest_boat",Invulnerable:1b,Silent:1b,Tags:["ajjgui.gui_ported","ajjgui.gui_new"],Passengers:[{id:"minecraft:marker",Tags:["ajjgui.gui_ported","ajjgui.gui_new"]}]}]}
scoreboard players set @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] ajjgui.page 0

execute as @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] on passengers run function ajjgui:control/load_gui_ported with storage ajjgui:data temp

ride @s mount @e[type=minecraft:chest_boat,tag=ajjgui.gui_ported,tag=ajjgui.gui_new,limit=1]

execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] at @s run function ajjgui:control/load_page_ported

tag @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_new] remove ajjgui.gui_new