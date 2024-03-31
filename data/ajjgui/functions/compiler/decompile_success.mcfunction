setblock ~ ~1 ~ minecraft:chest
data modify block ~ ~1 ~ Items set from entity @e[type=minecraft:marker,tag=ajjgui.gui_origin,sort=nearest,limit=1] data.meta.boxes

tellraw @a {"text":"Decompiled GUI"}