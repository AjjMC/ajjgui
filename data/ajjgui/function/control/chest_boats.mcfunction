data remove storage ajjgui:data temp
data modify storage ajjgui:data temp.prompt set from storage ajjgui:data prompt
execute on controller run function ajjgui:control/display_prompt_ported with storage ajjgui:data temp

scoreboard players set @s ajjgui 0

execute on passengers if entity @s[type=minecraft:player] on vehicle run scoreboard players set @s ajjgui 1
execute unless score @s ajjgui matches 1 run function ajjgui:control/close_gui_ported

execute store result score @s ajjgui at @s positioned ~-0.75 ~-0.5 ~-0.75 if entity @a[dx=0.5,dy=0,dz=0.5]
execute unless score @s ajjgui matches 1 run function ajjgui:control/close_gui_ported

execute at @s if block ~ ~ ~ minecraft:water run function ajjgui:control/close_gui_ported