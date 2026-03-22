data modify storage ajjgui:data temp.args.lock set from storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.lock

function ajjgui:gui/check_lock with storage ajjgui:data temp.args

execute if entity @s[tag=ajjgui.locked] run return run tag @s remove ajjgui.locked

function ajjgui:widget/radiobutton/enable

function ajjgui:widget/radiobutton/disable_group