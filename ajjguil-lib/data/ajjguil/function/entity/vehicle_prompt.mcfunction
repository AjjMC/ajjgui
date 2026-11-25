execute unless data entity @s data.prompt run return 0
data modify storage ajjguil:data temp.args.prompt set from entity @s data.prompt
execute on vehicle on controller run function ajjguil:gui/ported/display_prompt with storage ajjguil:data temp.args
