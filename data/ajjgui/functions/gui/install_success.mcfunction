tp @s ~ ~3 ~

execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ajjgui.cmd2] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:air

kill @e[type=minecraft:marker,tag=ajjgui.cmd1]
kill @e[type=minecraft:marker,tag=ajjgui.cmd2]
kill @e[type=minecraft:marker,tag=ajjgui.box]

execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["ajjgui.cmd1"]}
execute align xyz run summon minecraft:marker ~0.5 ~1 ~0.5 {Tags:["ajjgui.cmd2"]}
execute align xyz run summon minecraft:marker ~0.5 ~2 ~0.5 {Tags:["ajjgui.box"]}

execute at @e[type=minecraft:marker,tag=ajjgui.cmd1] run setblock ~ ~ ~ minecraft:command_block[facing=up]
execute at @e[type=minecraft:marker,tag=ajjgui.cmd2] run setblock ~ ~ ~ minecraft:command_block[facing=up]{Command:"tag @a[tag=ajjgui.user] remove ajjgui.user"}
execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:yellow_shulker_box

scoreboard objectives add ajjgui dummy
scoreboard objectives add ajjgui.page dummy
scoreboard objectives add ajjgui.slot dummy
scoreboard objectives add ajjgui.state dummy
scoreboard objectives add ajjgui.count dummy

scoreboard players set #two ajjgui 2

execute store result score #x ajjgui run data get block ~ ~ ~ x
execute store result score #y ajjgui run data get block ~ ~ ~ y
execute store result score #z ajjgui run data get block ~ ~ ~ z

function ajjgui:gui/set_version

tellraw @a [{"text":"Installed "},{"text":"ajjgui","color":"gray"},{"text":" at "},{"score":{"name":"#x","objective":"ajjgui"}},{"text":", "},{"score":{"name":"#y","objective":"ajjgui"}},{"text":", "},{"score":{"name":"#z","objective":"ajjgui"}}]
tellraw @a [{"text":"Version: "},{"nbt":"Version","storage":"ajjgui:gui","color":"gray"},{"text":"\n"}]

execute as @a run function ajjgui:_copyright

tellraw @a [{"text":"\nType "},{"text":"/function ajjgui:_help","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:_help"},"hoverEvent":{"action":"show_text","contents":"Click Here"}},{"text":" for help\n"}]
tellraw @a {"text":"Three block entities were generated; these are needed for the datapack to be fully functional and, as such, cannot be destroyed\n"}
tellraw @a [{"text":"If you would like to change the tower's position, "},{"text":"reinstall at a different location","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:_install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}}]