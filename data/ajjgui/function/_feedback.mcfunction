execute if data storage ajjgui:data settings.feedback{enabled:1b} run tellraw @s [{"text":"Feedback: "},{"text":"enabled","color":"green"}]
execute if data storage ajjgui:data settings.feedback{enabled:0b} run tellraw @s [{"text":"Feedback: "},{"text":"disabled","color":"red"}]
tellraw @s [{"text":"Target: "},{"nbt":"settings.feedback.target","storage":"ajjgui:data","color":"gray"}]
