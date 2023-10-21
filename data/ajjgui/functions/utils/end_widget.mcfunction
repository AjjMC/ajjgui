execute as @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] at @s run function ajjgui:gui/load_page
tag @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui] remove ajjgui.active_gui

scoreboard players set @s ajjgui.cooldown 8

scoreboard players reset @s ajjgui.page
scoreboard players reset @s ajjgui.slot
scoreboard players reset @s ajjgui.state
scoreboard players reset @s ajjgui.count

data remove storage ajjgui:gui In
data remove storage ajjgui:gui Out
data remove storage ajjgui:gui Page
data remove storage ajjgui:gui Widget