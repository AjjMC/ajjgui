# Returns 1 if player @s has an open ported GUI (or an active target marker is selected), else 0
scoreboard players set #has_open ajjguil 0
execute on vehicle on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run scoreboard players set #has_open ajjguil 1
execute if score #has_open ajjguil matches 1 run return 1
execute if entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return 1
return 0
