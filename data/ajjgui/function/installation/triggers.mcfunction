# Executed commands
execute as @a[scores={ajjgui.compile=1}] run function ajjgui:__compile
execute as @a[scores={ajjgui.decompile=1}] run function ajjgui:__decompile
execute as @a[scores={ajjgui.kit=1}] run function ajjgui:__kit
execute as @a[scores={ajjgui.setup=1}] run function ajjgui:__install
execute as @a[scores={ajjgui.disable=1}] run function ajjgui:__uninstall
execute as @a[scores={ajjgui.reload=1}] run function ajjgui:__reload
execute as @a[scores={ajjgui.crediting=1}] run function ajjgui:__crediting
execute as @a[scores={ajjgui.help=1}] run function ajjgui:__help
execute as @a[scores={ajjgui.version=1}] run function ajjgui:__version
execute as @a[scores={ajjgui.open=1}] run execute if data entity @s SelectedItem{id:"minecraft:name_tag"} run function ajjgui:__openself with entity @s SelectedItem.components."minecraft:custom_data".ajjgui.open
execute as @a[scores={ajjgui.port=1}] run execute if data entity @s SelectedItem{id:"minecraft:name_tag"} run function ajjgui:__portself with entity @s SelectedItem.components."minecraft:custom_data".ajjgui.port

# Resetting Points (Clear) and Re-enabling Triggers
execute as @a[scores={ajjgui.compile=1..}] run scoreboard players set @s ajjgui.compile 0
execute as @a[scores={ajjgui.decompile=1..}] run scoreboard players set @s ajjgui.decompile 0
execute as @a[scores={ajjgui.kit=1..}] run scoreboard players set @s ajjgui.kit 0
execute as @a[scores={ajjgui.setup=1..}] run scoreboard players set @s ajjgui.setup 0
execute as @a[scores={ajjgui.disable=1..}] run scoreboard players set @s ajjgui.disable 0
execute as @a[scores={ajjgui.reload=1..}] run scoreboard players set @s ajjgui.reload 0
execute as @a[scores={ajjgui.crediting=1..}] run scoreboard players set @s ajjgui.crediting 0
execute as @a[scores={ajjgui.help=1..}] run scoreboard players set @s ajjgui.help 0
execute as @a[scores={ajjgui.version=1..}] run scoreboard players set @s ajjgui.version 0
execute as @a[scores={ajjgui.open=1..}] run scoreboard players set @s ajjgui.open 0
execute as @a[scores={ajjgui.port=1..}] run scoreboard players set @s ajjgui.port 0

# Enable Triggers for Editors Only
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.compile
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.decompile
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.kit
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.setup
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.disable
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.reload
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.crediting
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.help
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.version
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.open
execute as @a[tag=ajjgui.editor] run scoreboard players enable @s ajjgui.port
