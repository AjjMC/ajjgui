data modify storage ajjgui:data temp.args.command set from storage ajjgui:data temp.commands[0]
data remove storage ajjgui:data temp.commands[0]
function ajjgui:gui/run_command with storage ajjgui:data temp.args
execute if data storage ajjgui:data temp.commands[0] run function ajjgui:gui/run_commands
