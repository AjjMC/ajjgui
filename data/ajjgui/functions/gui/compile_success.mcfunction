kill @e[type=minecraft:armor_stand,tag=ajjgui.gui,distance=..0.1]
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{id:"minecraft:stone",Count:1b},{},{},{}],Tags:["ajjgui.gui"]}
scoreboard players set @e[type=minecraft:armor_stand,tag=ajjgui.gui,sort=nearest,limit=1] ajjgui.page 0

data modify storage ajjgui:gui Temp set from block ~ ~1 ~ Items
setblock ~ ~1 ~ minecraft:air

data modify entity @e[type=minecraft:armor_stand,tag=ajjgui.gui,sort=nearest,limit=1] ArmorItems[0].tag.Boxes set from storage ajjgui:gui Temp

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[0]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[0] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[1]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[1] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[2]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[2] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[3]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[3] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[4]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[4] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[5]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[5] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[6]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[6] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[7]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[7] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[8]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[8] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[9]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[9] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[10]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[10] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[11]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[11] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[12]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[12] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[13]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[13] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[14]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[14] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[15]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[15] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[16]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[16] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[17]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[17] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[18]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[18] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[19]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[19] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[20]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[20] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[21]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[21] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[22]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[22] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[23]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[23] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[24]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[24] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[25]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[25] set from storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp[26]
function ajjgui:gui/compile_page
data modify storage ajjgui:gui Temp[26] set from storage ajjgui:gui Temp1

data modify entity @e[type=minecraft:armor_stand,tag=ajjgui.gui,sort=nearest,limit=1] ArmorItems[0].tag.GUI set from storage ajjgui:gui Temp

tellraw @a [{"text":"Compiled "},{"text":"ajjgui","color":"gray"},{"text":" GUI"}]