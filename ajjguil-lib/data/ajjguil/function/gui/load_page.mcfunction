function ajjguil:gui/get_page
data remove storage ajjguil:data temp.custom_name
execute if data entity @s data.custom_name run data modify storage ajjguil:data temp.custom_name set from entity @s data.custom_name

scoreboard players set #size ajjguil 27
execute if data entity @s data.meta.size run execute store result score #size ajjguil run data get entity @s data.meta.size
execute if data entity @s data.size run execute store result score #size ajjguil run data get entity @s data.size
execute store result storage ajjguil:data temp.size int 1 run scoreboard players get #size ajjguil
