tellraw @a [{text:""},{selector:"@s"},{text:" used Exit button"}]

execute as @a run function ajjgui:general/display_demo_message

execute at @s run playsound minecraft:ui.button.click master @s