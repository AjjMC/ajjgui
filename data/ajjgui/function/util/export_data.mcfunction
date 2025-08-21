execute store result score @s ajjgui.count run data get storage ajjgui:data widget.count
execute at @e[type=minecraft:marker,tag=ajjgui.gui_origin,tag=ajjgui.gui_active] store result score @s ajjgui.page run scoreboard players get @n ajjgui.page
execute at @e[type=minecraft:marker,tag=ajjgui.gui_ported,tag=ajjgui.gui_active] store result score @s ajjgui.page run scoreboard players get @n ajjgui.page
execute store result score @s ajjgui.state run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.state