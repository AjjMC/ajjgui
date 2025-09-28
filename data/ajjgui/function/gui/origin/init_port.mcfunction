execute unless entity @e[type=minecraft:marker,tag=ajjgui.gui_origin] run return run function ajjgui:gui/origin/fail

tellraw @a {text:"Ported GUI\n"}
tellraw @a [{text:"Player UUID:\n"},{text:"[",color:"gray"},{nbt:"temp.player[0]",storage:"ajjgui:data",color:"gray"},{text:", ",color:"gray"},{nbt:"temp.player[1]",storage:"ajjgui:data",color:"gray"},{text:", ",color:"gray"},{nbt:"temp.player[2]",storage:"ajjgui:data",color:"gray"},{text:", ",color:"gray"},{nbt:"temp.player[3]",storage:"ajjgui:data",color:"gray"},{text:"]",color:"gray"},{text:"\n"}]
tellraw @a [{text:"GUI ID:\n"},{nbt:"temp.id",storage:"ajjgui:data",color:"gray"},{text:"\n"}]

function ajjgui:_port with storage ajjgui:data temp

tellraw @a {text:"(Use a single underscore to hide feedback)",color:"yellow"}