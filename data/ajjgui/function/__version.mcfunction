execute unless data storage ajjgui:data version run tellraw @s [{text:"Unable to get version; ",color:"red"},{text:"ajjgui",color:"gray"},{text:" is not installed",color:"green",click_event:{action:"suggest_command",command:"/function ajjgui:__install"},hover_event:{action:"show_text",value:"Click Here"}}]
execute unless data storage ajjgui:data version run return fail

tellraw @s {nbt:"version",storage:"ajjgui:data",color:"gray"}