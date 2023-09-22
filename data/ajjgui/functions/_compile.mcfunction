execute unless entity @e[type=minecraft:marker,tag=ajjgui.cmd1] run tellraw @s [{"text":"Unable to compile; ensure that ","color":"red"},{"text":"ajjgui is installed","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:_install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}}]
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] unless block ~ ~ ~ minecraft:chest run tellraw @s {"text":"Unable to compile; ensure that you are standing on top of a chest and are not flying","color":"red"}
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] if block ~ ~ ~ minecraft:chest unless data block ~ ~ ~ Items[0] run tellraw @s {"text":"Unable to compile; chest is empty","color":"red"}
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] if block ~ ~ ~ minecraft:chest if data block ~ ~ ~ Items[0] unless block ~ ~-1 ~ #ajjgui:guis run tellraw @s {"text":"Unable to compile; ensure that there is a container below the chest","color":"red"}
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] if block ~ ~ ~ minecraft:chest if data block ~ ~ ~ Items[0] if block ~ ~-1 ~ #ajjgui:guis align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=minecraft:marker,tag=ajjgui.gui,distance=0.1..1.5] run tellraw @s {"text":"Unable to compile; GUIs need to be at least one block apart","color":"red"}
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] if block ~ ~ ~ minecraft:chest if data block ~ ~ ~ Items[0] if block ~ ~-1 ~ #ajjgui:guis align xyz positioned ~0.5 ~-1 ~0.5 unless entity @e[type=minecraft:marker,tag=ajjgui.gui,distance=0.1..1.5] run function ajjgui:gui/compile_success