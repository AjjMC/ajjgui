data modify storage ajjgui:gui Temp set from storage ajjgui:gui Widget
execute at @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] run data modify storage ajjgui:gui Page set from block ~ ~ ~ Items
function ajjgui:gui/search_item

execute unless data storage ajjgui:gui {Widget:{tag:{ajjgui:{State:1b}}}} run function ajjgui:widgets/itemslot/click_placeholder
execute if data storage ajjgui:gui {Widget:{tag:{ajjgui:{State:1b}}}} run function ajjgui:widgets/itemslot/click_item

data modify storage ajjgui:gui In set from storage ajjgui:gui Temp1
execute unless data storage ajjgui:gui Temp1 run data modify storage ajjgui:gui In set value {}
data modify storage ajjgui:gui Out set from storage ajjgui:gui Temp
execute unless data storage ajjgui:gui {Widget:{tag:{ajjgui:{State:1b}}}} run data modify storage ajjgui:gui Out set value {}

function ajjgui:widgets/itemslot/add_item
function ajjgui:widgets/itemslot/full_slot

execute unless data storage ajjgui:gui Temp1 run function ajjgui:widgets/itemslot/remove_item
execute unless data storage ajjgui:gui Temp1 run data modify storage ajjgui:gui Page append from storage ajjgui:gui Widget