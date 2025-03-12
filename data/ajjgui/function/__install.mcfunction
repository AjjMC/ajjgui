execute unless block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run tellraw @s [{text:"Unable to install; ensure that there is a block of space available and ",color:"red"},{text:"reinstall at a different location",color:"green",click_event:{action:"suggest_command",command:"/function ajjgui:__install"},hover_event:{action:"show_text",value:"Click Here"}}]
execute unless block ~ ~ ~ minecraft:air run return fail

function ajjgui:installation/install_success