execute unless entity @e[type=minecraft:marker,tag=ajjgui.gui_origin] run return run function ajjgui:gui/origin/fail

tellraw @a {text:"Ported GUI\n"}
tellraw @a [{text:"Player UUID:\n"},{text:"[",color:"gray"},{storage:"ajjgui:data",nbt:"temp.args.player[0]",interpret:true,color:"gray"},{text:", ",color:"gray"},{storage:"ajjgui:data",nbt:"temp.args.player[1]",interpret:true,color:"gray"},{text:", ",color:"gray"},{storage:"ajjgui:data",nbt:"temp.args.player[2]",interpret:true,color:"gray"},{text:", ",color:"gray"},{storage:"ajjgui:data",nbt:"temp.args.player[3]",interpret:true,color:"gray"},{text:"]",color:"gray"},{text:"\n"}]
tellraw @a [{text:"GUI ID:\n"},{storage:"ajjgui:data",nbt:"temp.args.id",interpret:true,color:"gray"},{text:"\n"}]

function ajjgui:_port with storage ajjgui:data temp.args

tellraw @a {text:"(Use a single underscore to hide feedback)",color:"yellow"}