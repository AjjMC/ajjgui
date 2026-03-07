execute unless data storage ajjgui:data settings.feedback{enabled:1b} run return 0

execute if data storage ajjgui:data settings.feedback{target:"@s"} run tellraw @s {"text":"Opened GUI\n"}
execute if data storage ajjgui:data settings.feedback{target:"@a"} run tellraw @a {"text":"Opened GUI\n"}

execute if data storage ajjgui:data settings.feedback{target:"@s"} run tellraw @s [{"text":"Player UUID:\n"},{"text":"[","color":"gray"},{"nbt":"temp.args.player[0]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.args.player[1]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.args.player[2]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.args.player[3]","storage":"ajjgui:data","color":"gray"},{"text":"]","color":"gray"},{"text":"\n"}]
execute if data storage ajjgui:data settings.feedback{target:"@a"} run tellraw @a [{"text":"Player UUID:\n"},{"text":"[","color":"gray"},{"nbt":"temp.args.player[0]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.args.player[1]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.args.player[2]","storage":"ajjgui:data","color":"gray"},{"text":", ","color":"gray"},{"nbt":"temp.args.player[3]","storage":"ajjgui:data","color":"gray"},{"text":"]","color":"gray"},{"text":"\n"}]

execute if data storage ajjgui:data settings.feedback{target:"@s"} run tellraw @s [{"text":"GUI ID:\n"},{"nbt":"temp.args.id","storage":"ajjgui:data","color":"gray"},{"text":"\n"}]
execute if data storage ajjgui:data settings.feedback{target:"@a"} run tellraw @a [{"text":"GUI ID:\n"},{"nbt":"temp.args.id","storage":"ajjgui:data","color":"gray"},{"text":"\n"}]

execute if data storage ajjgui:data settings.feedback{target:"@s"} run tellraw @s {"text":"(Use /function ajjgui:__feedback to configure feedback)","color":"yellow"}
execute if data storage ajjgui:data settings.feedback{target:"@a"} run tellraw @a {"text":"(Use /function ajjgui:__feedback to configure feedback)","color":"yellow"}
