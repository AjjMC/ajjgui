data modify storage ajjgui:data temp.args.lock set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.lock

function ajjgui:gui/check_lock with storage ajjgui:data temp.args

execute if entity @s[tag=ajjgui.locked] run return run tag @s remove ajjgui.locked

execute if score @s ajjgui.cooldown matches 1.. run return fail

data modify storage ajjgui:data temp.itemslot.out set from storage ajjgui:data widget

execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] run data modify storage ajjgui:data page set from block ~ ~ ~ Items
execute as @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] on vehicle run data modify storage ajjgui:data page set from entity @s Items

function ajjgui:gui/get_item
data modify storage ajjgui:data temp.itemslot.in set from storage ajjgui:data temp.item

execute unless data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{state:1}}}}} run function ajjgui:widget/itemslot/click_placeholder
execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{state:1}}}}} run function ajjgui:widget/itemslot/click_item

data modify storage ajjgui:data in set from storage ajjgui:data temp.itemslot.in
execute unless data storage ajjgui:data temp.itemslot.in run data modify storage ajjgui:data in set value {}

data modify storage ajjgui:data out set from storage ajjgui:data temp.itemslot.out
execute unless data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{state:1}}}}} run data modify storage ajjgui:data out set value {}

function ajjgui:widget/itemslot/add_item
function ajjgui:widget/itemslot/full_slot

execute unless data storage ajjgui:data temp.itemslot.in run function ajjgui:widget/itemslot/remove_item
execute unless data storage ajjgui:data temp.itemslot.in run data modify storage ajjgui:data page append from storage ajjgui:data widget