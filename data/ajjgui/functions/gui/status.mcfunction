execute unless entity @e[type=minecraft:marker,tag=ajjgui.cmd1] run tellraw @a [{"text":"ajjgui","color":"gray"},{"text":" has not been installed","color":"red"}]
execute unless entity @e[type=minecraft:marker,tag=ajjgui.cmd1] run tellraw @a [{"text":"Type "},{"text":"/function ajjgui:_install","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:_install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}},{"text":" to install"}]

function ajjgui:gui/set_version

scoreboard objectives add ajjgui.temp dummy

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp
execute store success score #temp ajjgui.temp run data modify storage ajjgui:gui Temp set from storage ajjgui:gui Version
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] if score #temp ajjgui.temp matches 1 run tellraw @a [{"text":"ajjgui","color":"gray"},{"text":" has not been updated","color":"red"}]
execute if entity @e[type=minecraft:marker,tag=ajjgui.cmd1] if score #temp ajjgui.temp matches 1 run tellraw @a [{"text":"Type "},{"text":"/function ajjgui:_install","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:_install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}},{"text":" to update to version "},{"nbt":"Temp1","storage":"ajjgui:gui","color":"gray"}]

scoreboard players reset #temp ajjgui.temp
scoreboard objectives remove ajjgui.temp