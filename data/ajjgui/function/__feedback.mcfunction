execute if data storage ajjgui:data settings.feedback{enabled:1b} run tellraw @s [{"text":"Feedback: "},{"text":"enabled","color":"green"}]
execute if data storage ajjgui:data settings.feedback{enabled:0b} run tellraw @s [{"text":"Feedback: "},{"text":"disabled","color":"red"}]
tellraw @s [{"text":"Target: "},{"nbt":"settings.feedback.target","storage":"ajjgui:data","color":"gray"}]
tellraw @s ""
tellraw @s [{"text":"/function ajjgui:__feedback/enable","color":"green","click_event":{"action":"run_command","command":"/function ajjgui:__feedback/enable"},"hover_event":{"action":"show_text","value":"Enable feedback"}}]
tellraw @s [{"text":"/function ajjgui:__feedback/disable","color":"green","click_event":{"action":"run_command","command":"/function ajjgui:__feedback/disable"},"hover_event":{"action":"show_text","value":"Disable feedback"}}]
tellraw @s [{"text":"/function ajjgui:__feedback/target_self","color":"green","click_event":{"action":"run_command","command":"/function ajjgui:__feedback/target_self"},"hover_event":{"action":"show_text","value":"Send feedback only to executor (@s)"}}]
tellraw @s [{"text":"/function ajjgui:__feedback/target_all","color":"green","click_event":{"action":"run_command","command":"/function ajjgui:__feedback/target_all"},"hover_event":{"action":"show_text","value":"Send feedback to all players (@a)"}}]
