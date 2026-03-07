# Multi-command support: if command is a list, iterate through each entry
execute if data storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command[0] run data modify storage ajjgui:data temp.commands set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command
execute if data storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command[0] run function ajjgui:gui/run_commands

# Single-command support: if command is a string, run it directly (backward compatible)
execute unless data storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command[0] run data modify storage ajjgui:data temp.args.command set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command
execute unless data storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.command[0] run function ajjgui:gui/run_command with storage ajjgui:data temp.args