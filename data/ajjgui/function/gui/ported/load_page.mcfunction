function ajjgui:gui/load_page

execute on vehicle run data modify entity @s Items set from storage ajjgui:data temp.page
execute on vehicle run data modify entity @s CustomName set from entity @s data.custom_name