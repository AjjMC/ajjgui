function ajjgui:demo/widgets/slider/buttons_fixed

tellraw @a [{"text":"Gave "},{"text":"ajjgui ","color":"gray"},{"text":"demo widget to "},{"selector":"@s"}]
tellraw @s {"text":"Place this widget anywhere except in slots 0, 1 and 2"}