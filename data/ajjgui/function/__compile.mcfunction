execute unless data storage ajjgui:data version run tellraw @s [{"text":"Unable to compile GUI; ","color":"red"},{"text":"ajjgui","color":"gray"},{"text":" is not installed","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:__install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}}]
execute unless data storage ajjgui:data version run return fail

execute unless block ~ ~ ~ minecraft:chest run tellraw @s {"text":"Unable to compile GUI; you must be standing on top of a chest and are not flying","color":"red"}
execute unless block ~ ~ ~ minecraft:chest run return fail

execute unless items block ~ ~ ~ container.* * run tellraw @s {"text":"Unable to compile GUI; the chest is empty","color":"red"}
execute unless items block ~ ~ ~ container.* * run return fail

execute unless block ~ ~-1 ~ #ajjgui:containers run tellraw @s {"text":"Unable to compile GUI; there must be a container below the chest","color":"red"}
execute unless block ~ ~-1 ~ #ajjgui:containers run return fail

execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=0.1..1.25] run tellraw @s {"text":"Unable to compile GUI; GUIs need to be at least one block apart","color":"red"}
execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=0.1..1.25] run return fail

execute align xyz positioned ~0.5 ~-1 ~0.5 run function ajjgui:compiler/compile_success