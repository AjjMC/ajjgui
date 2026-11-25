execute at @s as @e[type=minecraft:marker,tag=ajjguil.gui_origin,distance=..10] at @s run function ajjguil:gui/origin/load_page
execute at @s as @e[type=minecraft:marker,tag=ajjguil.gui_ported,distance=..10] run function ajjguil:gui/ported/load_page
kill @s
