execute if score @s ajjgui.state matches 0 run tellraw @a [{"selector":"@s"},{"text":" set switch to Disabled"}]
execute if score @s ajjgui.state matches 1 run tellraw @a [{"selector":"@s"},{"text":" set switch to Enabled"}]
execute if score @s ajjgui.state matches 2 run tellraw @a [{"selector":"@s"},{"text":" set switch to Neutral"}]

execute at @s run playsound minecraft:ui.button.click master @s