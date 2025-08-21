data modify storage ajjgui:data temp4 set from storage ajjgui:data temp2
data modify storage ajjgui:data temp4.Slot set from storage ajjgui:data temp3

execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}} run data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.fixed set value 1b

execute unless data storage ajjgui:data {temp4:{components:{"minecraft:custom_data":{ajjgui:{widget:"placeholder"}}}}} unless data storage ajjgui:data {temp4:{components:{"minecraft:custom_data":{ajjgui:{widget:"button"}}}}} unless data storage ajjgui:data {temp4:{components:{"minecraft:custom_data":{ajjgui:{widget:"itembin"}}}}} run data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.widget set value "placeholder"
execute unless data storage ajjgui:data {temp4:{components:{"minecraft:custom_data":{ajjgui:{widget:"placeholder"}}}}} if data storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.page unless data storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.relative run data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.relative set value 0b
execute unless data storage ajjgui:data {temp4:{components:{"minecraft:custom_data":{ajjgui:{widget:"placeholder"}}}}} unless data storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.exit run data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.exit set value 0b
execute unless data storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.fixed run data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.fixed set value 0b

data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.meta.slot set from storage ajjgui:data temp3
data modify storage ajjgui:data temp4.components.minecraft:custom_data.ajjgui.meta.compiled set value 1b

execute if data storage ajjgui:data {temp3:0b} run data modify storage ajjgui:data page[{Slot:0b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:1b} run data modify storage ajjgui:data page[{Slot:1b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:2b} run data modify storage ajjgui:data page[{Slot:2b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:3b} run data modify storage ajjgui:data page[{Slot:3b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:4b} run data modify storage ajjgui:data page[{Slot:4b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:5b} run data modify storage ajjgui:data page[{Slot:5b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:6b} run data modify storage ajjgui:data page[{Slot:6b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:7b} run data modify storage ajjgui:data page[{Slot:7b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:8b} run data modify storage ajjgui:data page[{Slot:8b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:9b} run data modify storage ajjgui:data page[{Slot:9b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:10b} run data modify storage ajjgui:data page[{Slot:10b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:11b} run data modify storage ajjgui:data page[{Slot:11b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:12b} run data modify storage ajjgui:data page[{Slot:12b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:13b} run data modify storage ajjgui:data page[{Slot:13b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:14b} run data modify storage ajjgui:data page[{Slot:14b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:15b} run data modify storage ajjgui:data page[{Slot:15b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:16b} run data modify storage ajjgui:data page[{Slot:16b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:17b} run data modify storage ajjgui:data page[{Slot:17b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:18b} run data modify storage ajjgui:data page[{Slot:18b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:19b} run data modify storage ajjgui:data page[{Slot:19b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:20b} run data modify storage ajjgui:data page[{Slot:20b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:21b} run data modify storage ajjgui:data page[{Slot:21b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:22b} run data modify storage ajjgui:data page[{Slot:22b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:23b} run data modify storage ajjgui:data page[{Slot:23b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:24b} run data modify storage ajjgui:data page[{Slot:24b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:25b} run data modify storage ajjgui:data page[{Slot:25b}] set from storage ajjgui:data temp4
execute if data storage ajjgui:data {temp3:26b} run data modify storage ajjgui:data page[{Slot:26b}] set from storage ajjgui:data temp4