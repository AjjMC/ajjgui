kill @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=..0.1]

data modify storage ajjgui:data temp.var set from block ~ ~1 ~ Items
setblock ~ ~1 ~ minecraft:air

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[0].components.minecraft:container
execute if data storage ajjgui:data temp.var[0] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[1].components.minecraft:container
execute if data storage ajjgui:data temp.var[1] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[2].components.minecraft:container
execute if data storage ajjgui:data temp.var[2] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[3].components.minecraft:container
execute if data storage ajjgui:data temp.var[3] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[4].components.minecraft:container
execute if data storage ajjgui:data temp.var[4] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[5].components.minecraft:container
execute if data storage ajjgui:data temp.var[5] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[6].components.minecraft:container
execute if data storage ajjgui:data temp.var[6] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[7].components.minecraft:container
execute if data storage ajjgui:data temp.var[7] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[8].components.minecraft:container
execute if data storage ajjgui:data temp.var[8] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[9].components.minecraft:container
execute if data storage ajjgui:data temp.var[9] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[10].components.minecraft:container
execute if data storage ajjgui:data temp.var[10] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[11].components.minecraft:container
execute if data storage ajjgui:data temp.var[11] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[12].components.minecraft:container
execute if data storage ajjgui:data temp.var[12] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[13].components.minecraft:container
execute if data storage ajjgui:data temp.var[13] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[14].components.minecraft:container
execute if data storage ajjgui:data temp.var[14] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[15].components.minecraft:container
execute if data storage ajjgui:data temp.var[15] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[16].components.minecraft:container
execute if data storage ajjgui:data temp.var[16] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[17].components.minecraft:container
execute if data storage ajjgui:data temp.var[17] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[18].components.minecraft:container
execute if data storage ajjgui:data temp.var[18] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[19].components.minecraft:container
execute if data storage ajjgui:data temp.var[19] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[20].components.minecraft:container
execute if data storage ajjgui:data temp.var[20] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[21].components.minecraft:container
execute if data storage ajjgui:data temp.var[21] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[22].components.minecraft:container
execute if data storage ajjgui:data temp.var[22] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[23].components.minecraft:container
execute if data storage ajjgui:data temp.var[23] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[24].components.minecraft:container
execute if data storage ajjgui:data temp.var[24] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[25].components.minecraft:container
execute if data storage ajjgui:data temp.var[25] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var[26].components.minecraft:container
execute if data storage ajjgui:data temp.var[26] run function ajjgui:compiler/compile_page

execute summon minecraft:marker run function ajjgui:compiler/compile_complete

tellraw @a {text:"Compiled GUI"}