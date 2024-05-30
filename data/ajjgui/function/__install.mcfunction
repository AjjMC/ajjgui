execute unless block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run tellraw @s [{"text":"Unable to install; ensure that there is a block of space available and ","color":"red"},{"text":"reinstall at a different location","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:__install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}}]
execute unless block ~ ~ ~ minecraft:air run return fail

function ajjgui:installation/install_success