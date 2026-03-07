execute if score @s ajjgui.state matches 0 run tellraw @a [{"text":""},{"selector":"@s"},{"text":" switched Off","color":"gray"}]
execute if score @s ajjgui.state matches 1 run tellraw @a [{"text":""},{"selector":"@s"},{"text":" switched On","color":"green"}]
