execute store result score #count ajjgui run data get storage ajjgui:gui Widget.tag.ajjgui.Page
execute store result score #length ajjgui run data get entity @s data.GUI
execute if data storage ajjgui:gui {Widget:{tag:{ajjgui:{Relative:1b}}}} run scoreboard players operation #count ajjgui += @s ajjgui.page
scoreboard players operation #count ajjgui %= #length ajjgui
execute store result score @s ajjgui.page run scoreboard players get #count ajjgui

execute if score @s ajjgui.page matches 0 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[0].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 1 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[1].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 2 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[2].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 3 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[3].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 4 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[4].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 5 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[5].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 6 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[6].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 7 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[7].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 8 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[8].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 9 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[9].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 10 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[10].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 11 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[11].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 12 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[12].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 13 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[13].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 14 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[14].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 15 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[15].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 16 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[16].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 17 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[17].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 18 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[18].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 19 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[19].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 20 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[20].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 21 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[21].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 22 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[22].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 23 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[23].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 24 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[24].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 25 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[25].tag.BlockEntityTag.Items
execute if score @s ajjgui.page matches 26 run data modify storage ajjgui:gui Temp set from entity @s data.GUI[26].tag.BlockEntityTag.Items

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:0b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:0b}] set from storage ajjgui:gui Page[{Slot:0b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:1b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:1b}] set from storage ajjgui:gui Page[{Slot:1b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:2b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:2b}] set from storage ajjgui:gui Page[{Slot:2b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:3b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:3b}] set from storage ajjgui:gui Page[{Slot:3b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:4b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:4b}] set from storage ajjgui:gui Page[{Slot:4b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:5b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:5b}] set from storage ajjgui:gui Page[{Slot:5b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:6b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:6b}] set from storage ajjgui:gui Page[{Slot:6b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:7b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:7b}] set from storage ajjgui:gui Page[{Slot:7b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:8b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:8b}] set from storage ajjgui:gui Page[{Slot:8b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:9b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:9b}] set from storage ajjgui:gui Page[{Slot:9b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:10b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:10b}] set from storage ajjgui:gui Page[{Slot:10b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:11b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:11b}] set from storage ajjgui:gui Page[{Slot:11b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:12b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:12b}] set from storage ajjgui:gui Page[{Slot:12b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:13b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:13b}] set from storage ajjgui:gui Page[{Slot:13b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:14b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:14b}] set from storage ajjgui:gui Page[{Slot:14b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:15b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:15b}] set from storage ajjgui:gui Page[{Slot:15b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:16b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:16b}] set from storage ajjgui:gui Page[{Slot:16b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:17b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:17b}] set from storage ajjgui:gui Page[{Slot:17b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:18b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:18b}] set from storage ajjgui:gui Page[{Slot:18b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:19b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:19b}] set from storage ajjgui:gui Page[{Slot:19b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:20b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:20b}] set from storage ajjgui:gui Page[{Slot:20b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:21b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:21b}] set from storage ajjgui:gui Page[{Slot:21b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:22b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:22b}] set from storage ajjgui:gui Page[{Slot:22b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:23b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:23b}] set from storage ajjgui:gui Page[{Slot:23b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:24b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:24b}] set from storage ajjgui:gui Page[{Slot:24b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:25b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:25b}] set from storage ajjgui:gui Page[{Slot:25b}]
data remove storage ajjgui:gui Temp1

data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Page[{Slot:26b}].tag.ajjgui.Fixed
execute if data storage ajjgui:gui {Temp1:1b} run data modify storage ajjgui:gui Temp[{Slot:26b}] set from storage ajjgui:gui Page[{Slot:26b}]
data remove storage ajjgui:gui Temp1

execute if score @s ajjgui.page matches 0 run data modify entity @s data.GUI[0].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 1 run data modify entity @s data.GUI[1].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 2 run data modify entity @s data.GUI[2].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 3 run data modify entity @s data.GUI[3].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 4 run data modify entity @s data.GUI[4].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 5 run data modify entity @s data.GUI[5].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 6 run data modify entity @s data.GUI[6].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 7 run data modify entity @s data.GUI[7].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 8 run data modify entity @s data.GUI[8].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 9 run data modify entity @s data.GUI[9].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 10 run data modify entity @s data.GUI[10].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 11 run data modify entity @s data.GUI[11].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 12 run data modify entity @s data.GUI[12].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 13 run data modify entity @s data.GUI[13].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 14 run data modify entity @s data.GUI[14].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 15 run data modify entity @s data.GUI[15].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 16 run data modify entity @s data.GUI[16].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 17 run data modify entity @s data.GUI[17].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 18 run data modify entity @s data.GUI[18].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 19 run data modify entity @s data.GUI[19].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 20 run data modify entity @s data.GUI[20].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 21 run data modify entity @s data.GUI[21].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 22 run data modify entity @s data.GUI[22].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 23 run data modify entity @s data.GUI[23].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 24 run data modify entity @s data.GUI[24].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 25 run data modify entity @s data.GUI[25].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp
execute if score @s ajjgui.page matches 26 run data modify entity @s data.GUI[26].tag.BlockEntityTag.Items set from storage ajjgui:gui Temp