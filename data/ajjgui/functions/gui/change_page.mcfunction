execute store result score #count ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.Page
execute store result score #length ajjgui run data get entity @s data.GUI
execute if data storage ajjgui:gui {Widget:{tag:{ajjgui:{Relative:1b}}}} run scoreboard players operation #count ajjgui += @s ajjgui.page
scoreboard players operation #count ajjgui %= #length ajjgui
execute store result score @s ajjgui.page run scoreboard players get #count ajjgui

execute if score @s ajjgui.page matches 0 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[0]
execute if score @s ajjgui.page matches 1 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[1]
execute if score @s ajjgui.page matches 2 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[2]
execute if score @s ajjgui.page matches 3 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[3]
execute if score @s ajjgui.page matches 4 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[4]
execute if score @s ajjgui.page matches 5 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[5]
execute if score @s ajjgui.page matches 6 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[6]
execute if score @s ajjgui.page matches 7 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[7]
execute if score @s ajjgui.page matches 8 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[8]
execute if score @s ajjgui.page matches 9 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[9]
execute if score @s ajjgui.page matches 10 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[10]
execute if score @s ajjgui.page matches 11 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[11]
execute if score @s ajjgui.page matches 12 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[12]
execute if score @s ajjgui.page matches 13 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[13]
execute if score @s ajjgui.page matches 14 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[14]
execute if score @s ajjgui.page matches 15 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[15]
execute if score @s ajjgui.page matches 16 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[16]
execute if score @s ajjgui.page matches 17 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[17]
execute if score @s ajjgui.page matches 18 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[18]
execute if score @s ajjgui.page matches 19 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[19]
execute if score @s ajjgui.page matches 20 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[20]
execute if score @s ajjgui.page matches 21 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[21]
execute if score @s ajjgui.page matches 22 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[22]
execute if score @s ajjgui.page matches 23 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[23]
execute if score @s ajjgui.page matches 24 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[24]
execute if score @s ajjgui.page matches 25 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[25]
execute if score @s ajjgui.page matches 26 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[26]

execute if data storage ajjgui:gui Page[{Slot:0b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:0b}] set from storage ajjgui:gui Page[{Slot:0b}]
execute if data storage ajjgui:gui Page[{Slot:1b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:1b}] set from storage ajjgui:gui Page[{Slot:1b}]
execute if data storage ajjgui:gui Page[{Slot:2b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:2b}] set from storage ajjgui:gui Page[{Slot:2b}]
execute if data storage ajjgui:gui Page[{Slot:3b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:3b}] set from storage ajjgui:gui Page[{Slot:3b}]
execute if data storage ajjgui:gui Page[{Slot:4b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:4b}] set from storage ajjgui:gui Page[{Slot:4b}]
execute if data storage ajjgui:gui Page[{Slot:5b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:5b}] set from storage ajjgui:gui Page[{Slot:5b}]
execute if data storage ajjgui:gui Page[{Slot:6b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:6b}] set from storage ajjgui:gui Page[{Slot:6b}]
execute if data storage ajjgui:gui Page[{Slot:7b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:7b}] set from storage ajjgui:gui Page[{Slot:7b}]
execute if data storage ajjgui:gui Page[{Slot:8b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:8b}] set from storage ajjgui:gui Page[{Slot:8b}]
execute if data storage ajjgui:gui Page[{Slot:9b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:9b}] set from storage ajjgui:gui Page[{Slot:9b}]
execute if data storage ajjgui:gui Page[{Slot:10b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:10b}] set from storage ajjgui:gui Page[{Slot:10b}]
execute if data storage ajjgui:gui Page[{Slot:11b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:11b}] set from storage ajjgui:gui Page[{Slot:11b}]
execute if data storage ajjgui:gui Page[{Slot:12b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:12b}] set from storage ajjgui:gui Page[{Slot:12b}]
execute if data storage ajjgui:gui Page[{Slot:13b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:13b}] set from storage ajjgui:gui Page[{Slot:13b}]
execute if data storage ajjgui:gui Page[{Slot:14b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:14b}] set from storage ajjgui:gui Page[{Slot:14b}]
execute if data storage ajjgui:gui Page[{Slot:15b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:15b}] set from storage ajjgui:gui Page[{Slot:15b}]
execute if data storage ajjgui:gui Page[{Slot:16b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:16b}] set from storage ajjgui:gui Page[{Slot:16b}]
execute if data storage ajjgui:gui Page[{Slot:17b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:17b}] set from storage ajjgui:gui Page[{Slot:17b}]
execute if data storage ajjgui:gui Page[{Slot:18b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:18b}] set from storage ajjgui:gui Page[{Slot:18b}]
execute if data storage ajjgui:gui Page[{Slot:19b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:19b}] set from storage ajjgui:gui Page[{Slot:19b}]
execute if data storage ajjgui:gui Page[{Slot:20b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:20b}] set from storage ajjgui:gui Page[{Slot:20b}]
execute if data storage ajjgui:gui Page[{Slot:21b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:21b}] set from storage ajjgui:gui Page[{Slot:21b}]
execute if data storage ajjgui:gui Page[{Slot:22b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:22b}] set from storage ajjgui:gui Page[{Slot:22b}]
execute if data storage ajjgui:gui Page[{Slot:23b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:23b}] set from storage ajjgui:gui Page[{Slot:23b}]
execute if data storage ajjgui:gui Page[{Slot:24b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:24b}] set from storage ajjgui:gui Page[{Slot:24b}]
execute if data storage ajjgui:gui Page[{Slot:25b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:25b}] set from storage ajjgui:gui Page[{Slot:25b}]
execute if data storage ajjgui:gui Page[{Slot:26b,tag:{ajjgui:{Fixed:1b}}}] run data modify storage ajjgui:gui Temp[{Slot:26b}] set from storage ajjgui:gui Page[{Slot:26b}]

execute if score @s ajjgui.page matches 0 run data modify entity @s data.GUI[0] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 1 run data modify entity @s data.GUI[1] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 2 run data modify entity @s data.GUI[2] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 3 run data modify entity @s data.GUI[3] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 4 run data modify entity @s data.GUI[4] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 5 run data modify entity @s data.GUI[5] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 6 run data modify entity @s data.GUI[6] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 7 run data modify entity @s data.GUI[7] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 8 run data modify entity @s data.GUI[8] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 9 run data modify entity @s data.GUI[9] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 10 run data modify entity @s data.GUI[10] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 11 run data modify entity @s data.GUI[11] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 12 run data modify entity @s data.GUI[12] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 13 run data modify entity @s data.GUI[13] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 14 run data modify entity @s data.GUI[14] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 15 run data modify entity @s data.GUI[15] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 16 run data modify entity @s data.GUI[16] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 17 run data modify entity @s data.GUI[17] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 18 run data modify entity @s data.GUI[18] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 19 run data modify entity @s data.GUI[19] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 20 run data modify entity @s data.GUI[20] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 21 run data modify entity @s data.GUI[21] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 22 run data modify entity @s data.GUI[22] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 23 run data modify entity @s data.GUI[23] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 24 run data modify entity @s data.GUI[24] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 25 run data modify entity @s data.GUI[25] set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 26 run data modify entity @s data.GUI[26] set from storage ajjgui:gui Temp