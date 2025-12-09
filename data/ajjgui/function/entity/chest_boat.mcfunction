data modify storage ajjgui:data temp.args.prompt set from storage ajjgui:data prompt
execute on controller run function ajjgui:gui/ported/display_prompt with storage ajjgui:data temp.args

execute store result score @s ajjgui at @s positioned ~-0.75 ~-0.5 ~-0.75 if entity @a[dx=0.5,dy=0,dz=0.5]
execute unless score @s ajjgui matches 1 run function ajjgui:gui/ported/close

execute on passengers if entity @s[type=minecraft:player] on vehicle run scoreboard players set @s ajjgui 1
execute unless score @s ajjgui matches 1 run function ajjgui:gui/ported/close

execute at @s if block ~ ~ ~ minecraft:water run function ajjgui:gui/ported/close