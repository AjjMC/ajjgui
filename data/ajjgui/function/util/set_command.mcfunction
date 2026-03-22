execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{widget:"itembin"}}}}} if score @s ajjgui.cooldown matches 1.. run return fail
execute if data storage ajjgui:data {widget:{components:{"minecraft:custom_data":{ajjgui:{widget:"itemslot"}}}}} if score @s ajjgui.cooldown matches 1.. run return fail

execute store result score @s ajjgui.count run data get storage ajjgui:data widget.count
execute store result score @s ajjgui.page run scoreboard players get @e[type=minecraft:marker,tag=ajjgui.gui_active,limit=1] ajjgui.page
execute store result score @s ajjgui.state run data get storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.state

data remove storage ajjgui:data in.Slot
data remove storage ajjgui:data out.Slot

data modify storage ajjgui:data temp.args.command set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command

function ajjgui:gui/run_command with storage ajjgui:data temp.args