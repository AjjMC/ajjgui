tellraw @a [{text:""},{selector:"@s"},{text:" set 4-state counter to "},{score:{name:"@s",objective:"ajjgui.count"}}]

execute as @a run function ajjgui:general/display_demo_message

execute at @s run playsound minecraft:ui.button.click master @s