function ajjgui:gui/load_page

data remove storage ajjgui:data temp.custom_name
execute if data entity @s data.custom_name run data modify storage ajjgui:data temp.custom_name set from entity @s data.custom_name
execute on vehicle run data modify entity @s Items set from storage ajjgui:data temp.page
execute if data storage ajjgui:data temp.custom_name on vehicle run data modify entity @s CustomName set from storage ajjgui:data temp.custom_name
