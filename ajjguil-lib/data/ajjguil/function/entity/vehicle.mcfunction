execute on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run function ajjguil:entity/vehicle_prompt

scoreboard players set @s ajjguil 0
execute at @s positioned ~-0.75 ~-0.5 ~-0.75 if entity @a[gamemode=!spectator,dx=0.5,dy=0,dz=0.5] run scoreboard players set @s ajjguil 1
execute unless score @s ajjguil matches 1 run return run function ajjguil:gui/ported/close

scoreboard players set @s ajjguil 0
execute on passengers if entity @s[type=minecraft:player] on vehicle run scoreboard players set @s ajjguil 1
execute unless score @s ajjguil matches 1 run return run function ajjguil:gui/ported/close

execute at @s if block ~ ~ ~ minecraft:water run return run function ajjguil:gui/ported/close
