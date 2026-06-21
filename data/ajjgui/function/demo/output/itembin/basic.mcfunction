tellraw @a [{text:""},{selector:"@s"},{text:" used itembin"}]

tellraw @a [{text:"Input Item: "},{storage:"ajjgui:data",nbt:"in.id",interpret:true,color:"gray"}]

execute as @a run function ajjgui:general/display_demo_message

execute at @s run playsound minecraft:ui.button.click master @s