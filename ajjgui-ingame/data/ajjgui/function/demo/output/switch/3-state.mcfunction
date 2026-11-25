execute if score @s ajjgui.state matches 0 run tellraw @a [{text:""},{selector:"@s"},{text:" set 3-state switch to State 0"}]
execute if score @s ajjgui.state matches 1 run tellraw @a [{text:""},{selector:"@s"},{text:" set 3-state switch to State 1"}]
execute if score @s ajjgui.state matches 2 run tellraw @a [{text:""},{selector:"@s"},{text:" set 3-state switch to State 2"}]

execute as @a run function ajjgui:general/display_demo_message

execute at @s run playsound minecraft:ui.button.click master @s