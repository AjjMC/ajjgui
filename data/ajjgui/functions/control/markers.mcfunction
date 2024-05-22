execute if entity @s[tag=ajjgui.gui_origin] unless block ~ ~ ~ #ajjgui:containers run tellraw @a {"text":"Removed GUI"}
execute if entity @s[tag=ajjgui.gui_origin] unless block ~ ~ ~ #ajjgui:containers run kill @s

execute if entity @s[tag=ajjgui.box] run setblock ~ ~ ~ minecraft:yellow_shulker_box