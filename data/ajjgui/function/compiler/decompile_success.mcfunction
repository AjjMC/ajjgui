setblock ~ ~1 ~ minecraft:chest
data modify block ~ ~1 ~ Items set from entity @n[type=minecraft:marker,tag=ajjgui.gui_origin] data.meta.boxes

tellraw @a {"text":"Decompiled GUI"}