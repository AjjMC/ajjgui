tag @s add ajjgui.gui_origin

scoreboard players set @s ajjgui.page 0

data modify entity @s data.gui set from storage ajjgui:data temp.var2
data modify entity @s data.custom_name set from block ~ ~ ~ CustomName
data modify entity @s data.meta.boxes set from storage ajjgui:data temp.var

function ajjgui:gui/origin/load_page