execute as @a[scores={ajjgui.compile=1}] run function ajjgui:__compile
execute as @a[scores={ajjgui.decompile=1}] run function ajjgui:__decompile
execute as @a[scores={ajjgui.kit=1}] run function ajjgui:__kit
execute as @a[scores={ajjgui.setup=1}] run function ajjgui:__install
execute as @a[scores={ajjgui.disable=1}] run function ajjgui:__uninstall
execute as @a[scores={ajjgui.reload=1}] run function ajjgui:__reload
execute as @a[scores={ajjgui.crediting=1}] run function ajjgui:__crediting
execute as @a[scores={ajjgui.help=1}] run function ajjgui:__help
execute as @a[scores={ajjgui.version=1}] run function ajjgui:__version

# Puanları Sıfırlama (Clear) ve Tetikleyicileri Yeniden Açma (Enable)
execute as @a[scores={ajjgui.compile=1..}] run scoreboard players set @s ajjgui.compile 0
execute as @a[scores={ajjgui.decompile=1..}] run scoreboard players set @s ajjgui.decompile 0
execute as @a[scores={ajjgui.kit=1..}] run scoreboard players set @s ajjgui.kit 0
execute as @a[scores={ajjgui.setup=1..}] run scoreboard players set @s ajjgui.setup 0
execute as @a[scores={ajjgui.disable=1..}] run scoreboard players set @s ajjgui.disable 0
execute as @a[scores={ajjgui.reload=1..}] run scoreboard players set @s ajjgui.reload 0
execute as @a[scores={ajjgui.crediting=1..}] run scoreboard players set @s ajjgui.crediting 0
execute as @a[scores={ajjgui.help=1..}] run scoreboard players set @s ajjgui.help 0
execute as @a[scores={ajjgui.version=1..}] run scoreboard players set @s ajjgui.version 0
