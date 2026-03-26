tellraw @a [{text:""},{selector:"@s"},{text:" used 99-slot itemslot"}]

tellraw @a [{text:"Input Item: "},{storage:"ajjgui:data",nbt:"in.id",interpret:true,color:"gray"}]
tellraw @a [{text:"Output Item: "},{storage:"ajjgui:data",nbt:"out.id",interpret:true,color:"gray"}]

tellraw @a {text:"(For demo use only)",color:"yellow"}

execute at @s run playsound minecraft:ui.button.click master @s