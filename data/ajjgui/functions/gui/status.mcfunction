execute unless entity @e[type=minecraft:marker,tag=ajjgui.box] run tellraw @a [{"text":"ajjgui","color":"gray"},{"text":" is not installed","color":"red"}]
execute unless entity @e[type=minecraft:marker,tag=ajjgui.box] run tellraw @a [{"text":"Type "},{"text":"/function ajjgui:_install","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:_install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}},{"text":" to install"}]

function ajjgui:gui/set_version

scoreboard objectives add ajjgui.temp dummy

execute store success score #temp ajjgui.temp run data modify storage ajjgui:gui Temp set from storage ajjgui:gui Version
execute if entity @e[type=minecraft:marker,tag=ajjgui.box] if score #temp ajjgui.temp matches 1 at @e[type=minecraft:marker,tag=ajjgui.box] run function ajjgui:gui/install_success
execute if entity @e[type=minecraft:marker,tag=ajjgui.box] if score #temp ajjgui.temp matches 1 run tellraw @a [{"text":"\nUpdated "},{"text":"ajjgui","color":"gray"},{"text":" to version "},{"nbt":"Version","storage":"ajjgui:gui","color":"gray"}]

scoreboard players reset #temp ajjgui.temp
scoreboard objectives remove ajjgui.temp