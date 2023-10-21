execute store result score @s ajjgui.count run data get storage ajjgui:gui Widget.Count
execute store result score @s ajjgui.page run scoreboard players get @e[type=minecraft:marker,tag=ajjgui.gui,tag=ajjgui.active_gui,limit=1] ajjgui.page
execute store result score @s ajjgui.state run data get storage ajjgui:gui Widget.tag.ajjgui.State