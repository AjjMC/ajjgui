execute store result score #count ajjgui run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.page
execute store result score #length ajjgui run data get entity @s data.gui
execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{relative:1b}}}}} run scoreboard players operation #count ajjgui += @s ajjgui.page
scoreboard players operation #count ajjgui %= #length ajjgui
execute store result score @s ajjgui.page run scoreboard players get #count ajjgui

execute if score @s ajjgui.page matches 0 run data modify storage ajjgui:data temp set from entity @s data.gui[0]
execute if score @s ajjgui.page matches 1 run data modify storage ajjgui:data temp set from entity @s data.gui[1]
execute if score @s ajjgui.page matches 2 run data modify storage ajjgui:data temp set from entity @s data.gui[2]
execute if score @s ajjgui.page matches 3 run data modify storage ajjgui:data temp set from entity @s data.gui[3]
execute if score @s ajjgui.page matches 4 run data modify storage ajjgui:data temp set from entity @s data.gui[4]
execute if score @s ajjgui.page matches 5 run data modify storage ajjgui:data temp set from entity @s data.gui[5]
execute if score @s ajjgui.page matches 6 run data modify storage ajjgui:data temp set from entity @s data.gui[6]
execute if score @s ajjgui.page matches 7 run data modify storage ajjgui:data temp set from entity @s data.gui[7]
execute if score @s ajjgui.page matches 8 run data modify storage ajjgui:data temp set from entity @s data.gui[8]
execute if score @s ajjgui.page matches 9 run data modify storage ajjgui:data temp set from entity @s data.gui[9]
execute if score @s ajjgui.page matches 10 run data modify storage ajjgui:data temp set from entity @s data.gui[10]
execute if score @s ajjgui.page matches 11 run data modify storage ajjgui:data temp set from entity @s data.gui[11]
execute if score @s ajjgui.page matches 12 run data modify storage ajjgui:data temp set from entity @s data.gui[12]
execute if score @s ajjgui.page matches 13 run data modify storage ajjgui:data temp set from entity @s data.gui[13]
execute if score @s ajjgui.page matches 14 run data modify storage ajjgui:data temp set from entity @s data.gui[14]
execute if score @s ajjgui.page matches 15 run data modify storage ajjgui:data temp set from entity @s data.gui[15]
execute if score @s ajjgui.page matches 16 run data modify storage ajjgui:data temp set from entity @s data.gui[16]
execute if score @s ajjgui.page matches 17 run data modify storage ajjgui:data temp set from entity @s data.gui[17]
execute if score @s ajjgui.page matches 18 run data modify storage ajjgui:data temp set from entity @s data.gui[18]
execute if score @s ajjgui.page matches 19 run data modify storage ajjgui:data temp set from entity @s data.gui[19]
execute if score @s ajjgui.page matches 20 run data modify storage ajjgui:data temp set from entity @s data.gui[20]
execute if score @s ajjgui.page matches 21 run data modify storage ajjgui:data temp set from entity @s data.gui[21]
execute if score @s ajjgui.page matches 22 run data modify storage ajjgui:data temp set from entity @s data.gui[22]
execute if score @s ajjgui.page matches 23 run data modify storage ajjgui:data temp set from entity @s data.gui[23]
execute if score @s ajjgui.page matches 24 run data modify storage ajjgui:data temp set from entity @s data.gui[24]
execute if score @s ajjgui.page matches 25 run data modify storage ajjgui:data temp set from entity @s data.gui[25]
execute if score @s ajjgui.page matches 26 run data modify storage ajjgui:data temp set from entity @s data.gui[26]

execute if data storage ajjgui:data page[{Slot:0b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:0b}] set from storage ajjgui:data page[{Slot:0b}]
execute if data storage ajjgui:data page[{Slot:1b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:1b}] set from storage ajjgui:data page[{Slot:1b}]
execute if data storage ajjgui:data page[{Slot:2b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:2b}] set from storage ajjgui:data page[{Slot:2b}]
execute if data storage ajjgui:data page[{Slot:3b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:3b}] set from storage ajjgui:data page[{Slot:3b}]
execute if data storage ajjgui:data page[{Slot:4b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:4b}] set from storage ajjgui:data page[{Slot:4b}]
execute if data storage ajjgui:data page[{Slot:5b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:5b}] set from storage ajjgui:data page[{Slot:5b}]
execute if data storage ajjgui:data page[{Slot:6b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:6b}] set from storage ajjgui:data page[{Slot:6b}]
execute if data storage ajjgui:data page[{Slot:7b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:7b}] set from storage ajjgui:data page[{Slot:7b}]
execute if data storage ajjgui:data page[{Slot:8b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:8b}] set from storage ajjgui:data page[{Slot:8b}]
execute if data storage ajjgui:data page[{Slot:9b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:9b}] set from storage ajjgui:data page[{Slot:9b}]
execute if data storage ajjgui:data page[{Slot:10b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:10b}] set from storage ajjgui:data page[{Slot:10b}]
execute if data storage ajjgui:data page[{Slot:11b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:11b}] set from storage ajjgui:data page[{Slot:11b}]
execute if data storage ajjgui:data page[{Slot:12b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:12b}] set from storage ajjgui:data page[{Slot:12b}]
execute if data storage ajjgui:data page[{Slot:13b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:13b}] set from storage ajjgui:data page[{Slot:13b}]
execute if data storage ajjgui:data page[{Slot:14b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:14b}] set from storage ajjgui:data page[{Slot:14b}]
execute if data storage ajjgui:data page[{Slot:15b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:15b}] set from storage ajjgui:data page[{Slot:15b}]
execute if data storage ajjgui:data page[{Slot:16b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:16b}] set from storage ajjgui:data page[{Slot:16b}]
execute if data storage ajjgui:data page[{Slot:17b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:17b}] set from storage ajjgui:data page[{Slot:17b}]
execute if data storage ajjgui:data page[{Slot:18b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:18b}] set from storage ajjgui:data page[{Slot:18b}]
execute if data storage ajjgui:data page[{Slot:19b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:19b}] set from storage ajjgui:data page[{Slot:19b}]
execute if data storage ajjgui:data page[{Slot:20b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:20b}] set from storage ajjgui:data page[{Slot:20b}]
execute if data storage ajjgui:data page[{Slot:21b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:21b}] set from storage ajjgui:data page[{Slot:21b}]
execute if data storage ajjgui:data page[{Slot:22b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:22b}] set from storage ajjgui:data page[{Slot:22b}]
execute if data storage ajjgui:data page[{Slot:23b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:23b}] set from storage ajjgui:data page[{Slot:23b}]
execute if data storage ajjgui:data page[{Slot:24b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:24b}] set from storage ajjgui:data page[{Slot:24b}]
execute if data storage ajjgui:data page[{Slot:25b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:25b}] set from storage ajjgui:data page[{Slot:25b}]
execute if data storage ajjgui:data page[{Slot:26b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}] run data modify storage ajjgui:data temp[{Slot:26b}] set from storage ajjgui:data page[{Slot:26b}]

execute if score @s ajjgui.page matches 0 run data modify entity @s data.gui[0] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 1 run data modify entity @s data.gui[1] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 2 run data modify entity @s data.gui[2] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 3 run data modify entity @s data.gui[3] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 4 run data modify entity @s data.gui[4] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 5 run data modify entity @s data.gui[5] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 6 run data modify entity @s data.gui[6] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 7 run data modify entity @s data.gui[7] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 8 run data modify entity @s data.gui[8] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 9 run data modify entity @s data.gui[9] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 10 run data modify entity @s data.gui[10] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 11 run data modify entity @s data.gui[11] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 12 run data modify entity @s data.gui[12] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 13 run data modify entity @s data.gui[13] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 14 run data modify entity @s data.gui[14] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 15 run data modify entity @s data.gui[15] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 16 run data modify entity @s data.gui[16] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 17 run data modify entity @s data.gui[17] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 18 run data modify entity @s data.gui[18] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 19 run data modify entity @s data.gui[19] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 20 run data modify entity @s data.gui[20] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 21 run data modify entity @s data.gui[21] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 22 run data modify entity @s data.gui[22] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 23 run data modify entity @s data.gui[23] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 24 run data modify entity @s data.gui[24] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 25 run data modify entity @s data.gui[25] set from storage ajjgui:data temp
execute if score @s ajjgui.page matches 26 run data modify entity @s data.gui[26] set from storage ajjgui:data temp