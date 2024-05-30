execute unless data storage ajjgui:data version run tellraw @s [{"text":"Unable to get version; ","color":"red"},{"text":"ajjgui","color":"gray"},{"text":" is not installed","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:__install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}}]
execute unless data storage ajjgui:data version run return fail

tellraw @s {"nbt":"version","storage":"ajjgui:data","color":"gray"}