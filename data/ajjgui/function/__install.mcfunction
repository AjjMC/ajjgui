execute unless block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run tellraw @s {text:"Unable to install the datapack; there is not enough space",color:"red"}
execute unless block ~ ~ ~ minecraft:air run return fail

function ajjgui:installation/install_success