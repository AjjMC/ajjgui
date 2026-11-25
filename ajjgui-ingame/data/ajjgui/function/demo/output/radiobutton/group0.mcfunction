tellraw @a [{text:""},{selector:"@s"},{text:" set radiobutton in group 0 to Enabled"}]

execute as @a run function ajjgui:general/display_demo_message

execute at @s run playsound minecraft:ui.button.click master @s