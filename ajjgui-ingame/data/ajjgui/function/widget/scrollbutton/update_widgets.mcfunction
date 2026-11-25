execute if entity @e[type=minecraft:marker,tag=ajjgui.gui_active] run function ajjgui:widget/scrollbutton/init_update_widgets

execute unless data storage ajjgui:data {temp:{scrollbutton:{widget:{components:{"minecraft:custom_data":{ajjgui:{widget:"placeholder"}}}}}}} unless data storage ajjgui:data {temp:{scrollbutton:{widget:{components:{"minecraft:custom_data":{ajjgui:{widget:"button"}}}}}}} unless data storage ajjgui:data {temp:{scrollbutton:{widget:{components:{"minecraft:custom_data":{ajjgui:{widget:"itembin"}}}}}}} run data modify storage ajjgui:data temp.scrollbutton.widget.components.minecraft:custom_data.ajjgui.widget set value "placeholder"
execute if data storage ajjgui:data {temp:{scrollbutton:{copy:{components:{"minecraft:custom_data":{ajjgui:{fixed:1b}}}}}}} run data modify storage ajjgui:data temp.scrollbutton.widget.components.minecraft:custom_data.ajjgui.fixed set value 1b

data modify storage ajjgui:data temp.scrollbutton.widget.Slot set from storage ajjgui:data temp.scrollbutton.slot

execute if data storage ajjgui:data {temp:{scrollbutton:{slot:0b}}} run data modify storage ajjgui:data temp.page[{Slot:0b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:1b}}} run data modify storage ajjgui:data temp.page[{Slot:1b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:2b}}} run data modify storage ajjgui:data temp.page[{Slot:2b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:3b}}} run data modify storage ajjgui:data temp.page[{Slot:3b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:4b}}} run data modify storage ajjgui:data temp.page[{Slot:4b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:5b}}} run data modify storage ajjgui:data temp.page[{Slot:5b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:6b}}} run data modify storage ajjgui:data temp.page[{Slot:6b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:7b}}} run data modify storage ajjgui:data temp.page[{Slot:7b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:8b}}} run data modify storage ajjgui:data temp.page[{Slot:8b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:9b}}} run data modify storage ajjgui:data temp.page[{Slot:9b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:10b}}} run data modify storage ajjgui:data temp.page[{Slot:10b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:11b}}} run data modify storage ajjgui:data temp.page[{Slot:11b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:12b}}} run data modify storage ajjgui:data temp.page[{Slot:12b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:13b}}} run data modify storage ajjgui:data temp.page[{Slot:13b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:14b}}} run data modify storage ajjgui:data temp.page[{Slot:14b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:15b}}} run data modify storage ajjgui:data temp.page[{Slot:15b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:16b}}} run data modify storage ajjgui:data temp.page[{Slot:16b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:17b}}} run data modify storage ajjgui:data temp.page[{Slot:17b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:18b}}} run data modify storage ajjgui:data temp.page[{Slot:18b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:19b}}} run data modify storage ajjgui:data temp.page[{Slot:19b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:20b}}} run data modify storage ajjgui:data temp.page[{Slot:20b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:21b}}} run data modify storage ajjgui:data temp.page[{Slot:21b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:22b}}} run data modify storage ajjgui:data temp.page[{Slot:22b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:23b}}} run data modify storage ajjgui:data temp.page[{Slot:23b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:24b}}} run data modify storage ajjgui:data temp.page[{Slot:24b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:25b}}} run data modify storage ajjgui:data temp.page[{Slot:25b}] set from storage ajjgui:data temp.scrollbutton.widget
execute if data storage ajjgui:data {temp:{scrollbutton:{slot:26b}}} run data modify storage ajjgui:data temp.page[{Slot:26b}] set from storage ajjgui:data temp.scrollbutton.widget