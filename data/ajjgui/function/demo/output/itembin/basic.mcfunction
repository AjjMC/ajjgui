tellraw @a [{text:""},{selector:"@s"},{text:" used itembin"}]

tellraw @a [{text:"Input Item: "},{nbt:"in",storage:"ajjgui:data"}]

tellraw @a {text:"(For demo use only)",color:"yellow"}

execute at @s run playsound minecraft:ui.button.click master @s