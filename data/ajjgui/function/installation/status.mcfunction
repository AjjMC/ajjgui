execute unless data storage ajjgui:data version run tellraw @a [{text:"ajjgui",color:"gray"},{text:" is not installed",color:"red"}]
execute unless data storage ajjgui:data version run tellraw @a [{text:"Type "},{text:"/function ajjgui:__install",color:"green",click_event:{action:"suggest_command",command:"/function ajjgui:__install"},hover_event:{action:"show_text",value:"Click Here"}},{text:" to install"}]

function ajjgui:installation/set_version

scoreboard objectives add ajjgui.temp dummy

execute store success score #temp ajjgui.temp run data modify storage ajjgui:data temp set from storage ajjgui:data version
execute if data storage ajjgui:data version if score #temp ajjgui.temp matches 1 at @e[type=minecraft:marker,tag=ajjgui.box] run function ajjgui:installation/install_success
execute if data storage ajjgui:data version if score #temp ajjgui.temp matches 1 run tellraw @a [{text:"\nUpdated "},{text:"ajjgui",color:"gray"},{text:" to version "},{nbt:"version",storage:"ajjgui:data",color:"gray"}]

scoreboard players reset #temp ajjgui.temp
scoreboard objectives remove ajjgui.temp