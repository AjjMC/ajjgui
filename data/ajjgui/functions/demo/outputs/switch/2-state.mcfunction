execute if score @s ajjgui.state matches 0 run tellraw @a [{"selector":"@s"},{"text":" set switch to State 0"}]
execute if score @s ajjgui.state matches 1 run tellraw @a [{"selector":"@s"},{"text":" set switch to State 1"}]

execute at @s run playsound minecraft:ui.button.click master @s