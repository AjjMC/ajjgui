$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run tellraw @s {"text":"Unable to open GUI; the specified GUI was not found","color":"red"}
$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run tellraw @s {"text":"(Use a single underscore to hide feedback)","color":"yellow"}
$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run data remove storage ajjgui:data temp
$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run return fail

tellraw @a {"text":"Opened GUI\n"}
tellraw @a [{"text":"Player UUID:\n"},{"text":"[","color":"gray"},{"nbt":"temp.player[0]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.player[1]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.player[2]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.player[3]","storage":"ajjgui:data","color":"gray"},{"text":"]","color":"gray"},{"text":"\n"}]
tellraw @a [{"text":"GUI ID:\n"},{"nbt":"temp.id","storage":"ajjgui:data","color":"gray"},{"text":"\n"}]
function ajjgui:_open with storage ajjgui:data temp

tellraw @a {"text":"(Use a single underscore to hide feedback)","color":"yellow"}