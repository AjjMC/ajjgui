kill @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=..0.1]
summon minecraft:marker ~ ~ ~ {Tags:["ajjgui.gui_origin"]}
scoreboard players set @n[type=minecraft:marker,tag=ajjgui.gui_origin] ajjgui.page 0

data modify storage ajjgui:data temp set from block ~ ~1 ~ Items
setblock ~ ~1 ~ minecraft:air

data modify entity @n[type=minecraft:marker,tag=ajjgui.gui_origin] data.meta.boxes set from storage ajjgui:data temp

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[0].components.minecraft:container
execute if data storage ajjgui:data temp[0] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[0] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[1].components.minecraft:container
execute if data storage ajjgui:data temp[1] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[1] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[2].components.minecraft:container
execute if data storage ajjgui:data temp[2] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[2] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[3].components.minecraft:container
execute if data storage ajjgui:data temp[3] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[3] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[4].components.minecraft:container
execute if data storage ajjgui:data temp[4] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[4] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[5].components.minecraft:container
execute if data storage ajjgui:data temp[5] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[5] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[6].components.minecraft:container
execute if data storage ajjgui:data temp[6] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[6] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[7].components.minecraft:container
execute if data storage ajjgui:data temp[7] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[7] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[8].components.minecraft:container
execute if data storage ajjgui:data temp[8] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[8] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[9].components.minecraft:container
execute if data storage ajjgui:data temp[9] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[9] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[10].components.minecraft:container
execute if data storage ajjgui:data temp[10] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[10] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[11].components.minecraft:container
execute if data storage ajjgui:data temp[11] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[11] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[12].components.minecraft:container
execute if data storage ajjgui:data temp[12] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[12] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[13].components.minecraft:container
execute if data storage ajjgui:data temp[13] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[13] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[14].components.minecraft:container
execute if data storage ajjgui:data temp[14] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[14] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[15].components.minecraft:container
execute if data storage ajjgui:data temp[15] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[15] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[16].components.minecraft:container
execute if data storage ajjgui:data temp[16] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[16] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[17].components.minecraft:container
execute if data storage ajjgui:data temp[17] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[17] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[18].components.minecraft:container
execute if data storage ajjgui:data temp[18] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[18] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[19].components.minecraft:container
execute if data storage ajjgui:data temp[19] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[19] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[20].components.minecraft:container
execute if data storage ajjgui:data temp[20] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[20] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[21].components.minecraft:container
execute if data storage ajjgui:data temp[21] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[21] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[22].components.minecraft:container
execute if data storage ajjgui:data temp[22] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[22] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[23].components.minecraft:container
execute if data storage ajjgui:data temp[23] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[23] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[24].components.minecraft:container
execute if data storage ajjgui:data temp[24] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[24] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[25].components.minecraft:container
execute if data storage ajjgui:data temp[25] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[25] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[26].components.minecraft:container
execute if data storage ajjgui:data temp[26] run function ajjgui:compiler/compile_page
execute if data storage ajjgui:data temp[26] run data modify storage ajjgui:data temp2 append from storage ajjgui:data temp1

data modify entity @n[type=minecraft:marker,tag=ajjgui.gui_origin] data.gui set from storage ajjgui:data temp2
data modify entity @n[type=minecraft:marker,tag=ajjgui.gui_origin] data.custom_name set from block ~ ~ ~ CustomName

execute as @n[type=minecraft:marker,tag=ajjgui.gui_origin] run function ajjgui:control/load_page_origin

tellraw @a {"text":"Compiled GUI"}