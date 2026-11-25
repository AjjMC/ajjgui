kill @e[type=minecraft:marker,tag=ajjgui.gui_origin,distance=..0.1]

data modify storage ajjgui:data temp.boxes set from block ~ ~1 ~ Items
setblock ~ ~1 ~ minecraft:air

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[0].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[0] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[1].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[1] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[2].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[2] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[3].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[3] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[4].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[4] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[5].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[5] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[6].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[6] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[7].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[7] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[8].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[8] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[9].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[9] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[10].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[10] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[11].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[11] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[12].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[12] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[13].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[13] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[14].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[14] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[15].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[15] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[16].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[16] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[17].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[17] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[18].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[18] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[19].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[19] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[20].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[20] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[21].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[21] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[22].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[22] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[23].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[23] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[24].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[24] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[25].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[25] run function ajjgui:compiler/compile_page

data modify storage ajjgui:data temp.page set from storage ajjgui:data temp.boxes[26].components.minecraft:container
execute if data storage ajjgui:data temp.boxes[26] run function ajjgui:compiler/compile_page

execute summon minecraft:marker run function ajjgui:compiler/compile_complete

tellraw @a {text:"Compiled GUI"}