execute as @n[type=minecraft:marker,tag=ajjguil.gui_active] run function ajjguil:gui/save_page
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/load_page
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/load_page
