tp @s ~ ~1 ~

execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:air
kill @e[type=minecraft:marker,tag=ajjgui.box]

execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["ajjgui.box"]}
execute at @e[type=minecraft:marker,tag=ajjgui.box] run setblock ~ ~ ~ minecraft:yellow_shulker_box

scoreboard objectives add ajjgui dummy
scoreboard objectives add ajjgui.cooldown dummy
scoreboard objectives add ajjgui.count dummy
scoreboard objectives add ajjgui.page dummy
scoreboard objectives add ajjgui.slot dummy
scoreboard objectives add ajjgui.slot_returned dummy
scoreboard objectives add ajjgui.state dummy

scoreboard players set #two ajjgui 2

execute store result score #x ajjgui run data get block ~ ~ ~ x
execute store result score #y ajjgui run data get block ~ ~ ~ y
execute store result score #z ajjgui run data get block ~ ~ ~ z

execute unless data storage ajjgui:data version run data modify storage ajjgui:data prompt set value '{"text":"Open Inventory to View Menu | Dismount to Cancel"}'

function ajjgui:installation/set_version
data modify storage ajjgui:data version set from storage ajjgui:data temp

tellraw @a [{"text":"Installed "},{"text":"ajjgui","color":"gray"},{"text":" at "},{"score":{"name":"#x","objective":"ajjgui"}},{"text":", "},{"score":{"name":"#y","objective":"ajjgui"}},{"text":", "},{"score":{"name":"#z","objective":"ajjgui"}}]
tellraw @a [{"text":"Version: "},{"nbt":"version","storage":"ajjgui:data","color":"gray"},{"text":"\n"}]

execute as @a run function ajjgui:__copyright

tellraw @a [{"text":"\nType "},{"text":"/function ajjgui:__help","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:__help"},"hoverEvent":{"action":"show_text","contents":"Click Here"}},{"text":" for help\n"}]
tellraw @a {"text":"A shulker box was generated; this needs to be located in a loaded chunk for the datapack to be fully functional and cannot be destroyed\n"}
tellraw @a [{"text":"If you would like to change the shulker box's position, "},{"text":"reinstall at a different location","color":"green","clickEvent":{"action":"suggest_command","value":"/function ajjgui:__install"},"hoverEvent":{"action":"show_text","contents":"Click Here"}}]