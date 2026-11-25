data modify storage ajjgui:data temp.page set from storage ajjgui:data page
function ajjgui:gui/save_page

execute unless data storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.page run return fail

execute store result score #count ajjgui run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.page
execute store result score #length ajjgui run data get entity @s data.gui

execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{relative:1b}}}}} run scoreboard players operation #count ajjgui += @s ajjgui.page
scoreboard players operation #count ajjgui %= #length ajjgui

execute store result score @s ajjgui.page run scoreboard players get #count ajjgui

function ajjgui:gui/load_page

data modify storage ajjgui:data temp.page[{Slot:0b}] set from storage ajjgui:data page[{Slot:0b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:1b}] set from storage ajjgui:data page[{Slot:1b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:2b}] set from storage ajjgui:data page[{Slot:2b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:3b}] set from storage ajjgui:data page[{Slot:3b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:4b}] set from storage ajjgui:data page[{Slot:4b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:5b}] set from storage ajjgui:data page[{Slot:5b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:6b}] set from storage ajjgui:data page[{Slot:6b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:7b}] set from storage ajjgui:data page[{Slot:7b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:8b}] set from storage ajjgui:data page[{Slot:8b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:9b}] set from storage ajjgui:data page[{Slot:9b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:10b}] set from storage ajjgui:data page[{Slot:10b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:11b}] set from storage ajjgui:data page[{Slot:11b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:12b}] set from storage ajjgui:data page[{Slot:12b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:13b}] set from storage ajjgui:data page[{Slot:13b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:14b}] set from storage ajjgui:data page[{Slot:14b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:15b}] set from storage ajjgui:data page[{Slot:15b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:16b}] set from storage ajjgui:data page[{Slot:16b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:17b}] set from storage ajjgui:data page[{Slot:17b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:18b}] set from storage ajjgui:data page[{Slot:18b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:19b}] set from storage ajjgui:data page[{Slot:19b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:20b}] set from storage ajjgui:data page[{Slot:20b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:21b}] set from storage ajjgui:data page[{Slot:21b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:22b}] set from storage ajjgui:data page[{Slot:22b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:23b}] set from storage ajjgui:data page[{Slot:23b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:24b}] set from storage ajjgui:data page[{Slot:24b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:25b}] set from storage ajjgui:data page[{Slot:25b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]
data modify storage ajjgui:data temp.page[{Slot:26b}] set from storage ajjgui:data page[{Slot:26b,components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}]

function ajjgui:gui/save_page