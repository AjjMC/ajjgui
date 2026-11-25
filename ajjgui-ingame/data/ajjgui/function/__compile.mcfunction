execute unless data storage ajjgui:data version run tellraw @s [{text:""},{text:"Unable to compile the GUI; ",color:"red"},{text:"ajjgui",color:"gray"},{text:" is not ",color:"red"},{text:"installed",color:"green",click_event:{action:"suggest_command",command:"/function ajjgui:__install"},hover_event:{action:"show_text",value:"Click Here"}}]
execute unless data storage ajjgui:data version run return fail

execute unless block ~ ~ ~ minecraft:chest run tellraw @s {text:"Unable to compile the GUI; you are not standing above a chest",color:"red"}
execute unless block ~ ~ ~ minecraft:chest run return fail

execute unless items block ~ ~ ~ container.* * run tellraw @s {text:"Unable to compile the GUI; the chest is empty",color:"red"}
execute unless items block ~ ~ ~ container.* * run return fail

execute unless block ~ ~-1 ~ #ajjgui:containers run tellraw @s {text:"Unable to compile the GUI; there is no container below the chest",color:"red"}
execute unless block ~ ~-1 ~ #ajjgui:containers run return fail

execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=0.1..1.25] run tellraw @s {text:"Unable to compile the GUI; there is not enough space",color:"red"}
execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=0.1..1.25] run return fail

execute align xyz positioned ~0.5 ~-1 ~0.5 run function ajjgui:compiler/compile_success