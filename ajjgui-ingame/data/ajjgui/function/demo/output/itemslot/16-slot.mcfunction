tellraw @a [{text:""},{selector:"@s"},{text:" used 16-slot itemslot"}]

tellraw @a [{text:"Input Item: "},{storage:"ajjgui:data",nbt:"in.id",interpret:true,color:"gray"}]
tellraw @a [{text:"Output Item: "},{storage:"ajjgui:data",nbt:"out.id",interpret:true,color:"gray"}]

execute as @a run function ajjgui:general/display_demo_message

execute at @s run playsound minecraft:ui.button.click master @s