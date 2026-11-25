function ajjgui:_reload

tellraw @a {text:"Reloaded all GUIs"}

execute as @a run function ajjgui:general/display_feedback_message