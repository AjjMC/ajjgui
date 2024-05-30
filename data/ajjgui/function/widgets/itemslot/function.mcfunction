data modify storage ajjgui:data temp set from storage ajjgui:data widget

execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] run data modify storage ajjgui:data page set from block ~ ~ ~ Items
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] on vehicle run data modify storage ajjgui:data page set from entity @s Items

function ajjgui:control/get_item

execute unless data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{state:1}}}}} run function ajjgui:widgets/itemslot/click_placeholder
execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{state:1}}}}} run function ajjgui:widgets/itemslot/click_item

data modify storage ajjgui:data in set from storage ajjgui:data temp1
execute unless data storage ajjgui:data temp1 run data modify storage ajjgui:data in set value {}
data modify storage ajjgui:data out set from storage ajjgui:data temp
execute unless data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{state:1}}}}} run data modify storage ajjgui:data out set value {}

function ajjgui:widgets/itemslot/add_item
function ajjgui:widgets/itemslot/full_slot

execute unless data storage ajjgui:data temp1 run function ajjgui:widgets/itemslot/remove_item
execute unless data storage ajjgui:data temp1 run data modify storage ajjgui:data page append from storage ajjgui:data widget