execute if score @s ajjgui.state matches 0 run tellraw @a [{text:""},{selector:"@s"},{text:" set 2-state switch to State 0"}]
execute if score @s ajjgui.state matches 1 run tellraw @a [{text:""},{selector:"@s"},{text:" set 2-state switch to State 1"}]

tellraw @a {text:"(For demo use only)",color:"yellow"}

execute at @s run playsound minecraft:ui.button.click master @s