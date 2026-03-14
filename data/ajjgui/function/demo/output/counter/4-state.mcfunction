tellraw @a [{text:""},{selector:"@s"},{text:" set 4-state counter to "},{score:{name:"@s",objective:"ajjgui.count"}}]

tellraw @a {text:"(For demo use only)",color:"yellow"}

execute at @s run playsound minecraft:ui.button.click master @s