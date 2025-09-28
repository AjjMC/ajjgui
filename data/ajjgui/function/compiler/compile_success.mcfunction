kill @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=..0.1]

data modify storage ajjgui:data temp set from block ~ ~1 ~ Items
setblock ~ ~1 ~ minecraft:air

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[0].components.minecraft:container
execute if data storage ajjgui:data temp[0] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[1].components.minecraft:container
execute if data storage ajjgui:data temp[1] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[2].components.minecraft:container
execute if data storage ajjgui:data temp[2] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[3].components.minecraft:container
execute if data storage ajjgui:data temp[3] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[4].components.minecraft:container
execute if data storage ajjgui:data temp[4] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[5].components.minecraft:container
execute if data storage ajjgui:data temp[5] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[6].components.minecraft:container
execute if data storage ajjgui:data temp[6] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[7].components.minecraft:container
execute if data storage ajjgui:data temp[7] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[8].components.minecraft:container
execute if data storage ajjgui:data temp[8] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[9].components.minecraft:container
execute if data storage ajjgui:data temp[9] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[10].components.minecraft:container
execute if data storage ajjgui:data temp[10] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[11].components.minecraft:container
execute if data storage ajjgui:data temp[11] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[12].components.minecraft:container
execute if data storage ajjgui:data temp[12] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[13].components.minecraft:container
execute if data storage ajjgui:data temp[13] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[14].components.minecraft:container
execute if data storage ajjgui:data temp[14] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[15].components.minecraft:container
execute if data storage ajjgui:data temp[15] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[16].components.minecraft:container
execute if data storage ajjgui:data temp[16] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[17].components.minecraft:container
execute if data storage ajjgui:data temp[17] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[18].components.minecraft:container
execute if data storage ajjgui:data temp[18] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[19].components.minecraft:container
execute if data storage ajjgui:data temp[19] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[20].components.minecraft:container
execute if data storage ajjgui:data temp[20] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[21].components.minecraft:container
execute if data storage ajjgui:data temp[21] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[22].components.minecraft:container
execute if data storage ajjgui:data temp[22] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[23].components.minecraft:container
execute if data storage ajjgui:data temp[23] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[24].components.minecraft:container
execute if data storage ajjgui:data temp[24] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[25].components.minecraft:container
execute if data storage ajjgui:data temp[25] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp1 set from storage ajjgui:data temp[26].components.minecraft:container
execute if data storage ajjgui:data temp[26] run function ajjgui:compiler/compile_page

execute summon minecraft:marker run function ajjgui:compiler/compile_complete

tellraw @a {text:"Compiled GUI"}