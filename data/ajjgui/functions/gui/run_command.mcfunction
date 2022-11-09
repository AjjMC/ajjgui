tag @s add ajjgui.user

execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run data remove block ~ ~ ~ Command

execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run data modify block ~ ~ ~ Command set from storage ajjgui:gui Widget.tag.ajjgui.Command
execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run data modify block ~ ~ ~ auto set value 1b
execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run data modify block ~ ~ ~ auto set value 0b

execute at @e[type=minecraft:marker,tag=ajjgui.cmd2] run data modify block ~ ~ ~ auto set value 1b
execute at @e[type=minecraft:marker,tag=ajjgui.cmd2] run data modify block ~ ~ ~ auto set value 0b