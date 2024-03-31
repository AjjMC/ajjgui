function ajjgui:demo/widgets/scrollbutton/buttons_fixed

tellraw @a [{"text":"Gave "},{"text":"ajjgui","color":"gray"},{"text":" demo widget to "},{"selector":"@s"}]
tellraw @s {"text":"Place this widget anywhere except in slots 11, 12, 13 and 14"}