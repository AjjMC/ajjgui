data modify storage ajjgui:data temp8 set from storage ajjgui:data temp6
data modify storage ajjgui:data temp8.Slot set from storage ajjgui:data temp7

execute if data storage ajjgui:data {temp3:{components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}} run data modify storage ajjgui:data temp8.components.minecraft:custom_data.ajjgui.fixed set value 1b

execute unless data storage ajjgui:data {temp8:{components:{"minecraft:custom_data":{ajjgui:{widget:"placeholder"}}}}} unless data storage ajjgui:data {temp8:{components:{"minecraft:custom_data":{ajjgui:{widget:"button"}}}}} unless data storage ajjgui:data {temp8:{components:{"minecraft:custom_data":{ajjgui:{widget:"itembin"}}}}} run data modify storage ajjgui:data temp8.components.minecraft:custom_data.ajjgui.widget set value "placeholder"

execute if data storage ajjgui:data {temp7:0b} run data modify storage ajjgui:data temp1[{Slot:0b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:1b} run data modify storage ajjgui:data temp1[{Slot:1b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:2b} run data modify storage ajjgui:data temp1[{Slot:2b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:3b} run data modify storage ajjgui:data temp1[{Slot:3b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:4b} run data modify storage ajjgui:data temp1[{Slot:4b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:5b} run data modify storage ajjgui:data temp1[{Slot:5b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:6b} run data modify storage ajjgui:data temp1[{Slot:6b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:7b} run data modify storage ajjgui:data temp1[{Slot:7b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:8b} run data modify storage ajjgui:data temp1[{Slot:8b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:9b} run data modify storage ajjgui:data temp1[{Slot:9b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:10b} run data modify storage ajjgui:data temp1[{Slot:10b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:11b} run data modify storage ajjgui:data temp1[{Slot:11b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:12b} run data modify storage ajjgui:data temp1[{Slot:12b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:13b} run data modify storage ajjgui:data temp1[{Slot:13b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:14b} run data modify storage ajjgui:data temp1[{Slot:14b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:15b} run data modify storage ajjgui:data temp1[{Slot:15b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:16b} run data modify storage ajjgui:data temp1[{Slot:16b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:17b} run data modify storage ajjgui:data temp1[{Slot:17b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:18b} run data modify storage ajjgui:data temp1[{Slot:18b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:19b} run data modify storage ajjgui:data temp1[{Slot:19b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:20b} run data modify storage ajjgui:data temp1[{Slot:20b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:21b} run data modify storage ajjgui:data temp1[{Slot:21b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:22b} run data modify storage ajjgui:data temp1[{Slot:22b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:23b} run data modify storage ajjgui:data temp1[{Slot:23b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:24b} run data modify storage ajjgui:data temp1[{Slot:24b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:25b} run data modify storage ajjgui:data temp1[{Slot:25b}] set from storage ajjgui:data temp8
execute if data storage ajjgui:data {temp7:26b} run data modify storage ajjgui:data temp1[{Slot:26b}] set from storage ajjgui:data temp8