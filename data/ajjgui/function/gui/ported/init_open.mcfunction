$execute unless data storage ajjgui:data database[{player:$(player),id:$(id)}] run return run function ajjgui:gui/ported/fail_not_found
execute at @s positioned ~-0.75 ~-0.5 ~-0.75 if entity @e[type=minecraft:oak_chest_boat,tag=ajjgui.gui_boat,dx=0.5,dy=0,dz=0.5] run return run function ajjgui:gui/ported/fail_no_space

tellraw @a {text:"Opened GUI\n"}
tellraw @a [{text:"Player UUID:\n"},{text:"[",color:"gray"},{nbt:"temp.player[0]",storage:"ajjgui:data",color:"gray"},{text:", ",color:"gray"},{nbt:"temp.player[1]",storage:"ajjgui:data",color:"gray"},{text:", ",color:"gray"},{nbt:"temp.player[2]",storage:"ajjgui:data",color:"gray"},{text:", ",color:"gray"},{nbt:"temp.player[3]",storage:"ajjgui:data",color:"gray"},{text:"]",color:"gray"},{text:"\n"}]
tellraw @a [{text:"GUI ID:\n"},{nbt:"temp.id",storage:"ajjgui:data",color:"gray"},{text:"\n"}]

function ajjgui:_open with storage ajjgui:data temp

tellraw @a {text:"(Use a single underscore to hide feedback)",color:"yellow"}