tellraw @a [{text:""},{selector:"@s"},{text:" used 16-slot itemslot"}]

tellraw @a [{text:"Input Item: "},{storage:"ajjgui:data",nbt:"in",interpret:true,color:"gray"}]
tellraw @a [{text:"Output Item: "},{storage:"ajjgui:data",nbt:"out",interpret:true,color:"gray"}]

tellraw @a {text:"(For demo use only)",color:"yellow"}

execute at @s run playsound minecraft:ui.button.click master @s