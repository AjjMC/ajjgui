function ajjgui:gui/begin_widget

execute if score @s ajjgui.cooldown matches 0 run function ajjgui:widgets/itembin/function

execute if score @s ajjgui.cooldown matches 1.. run function ajjgui:gui/recover_item
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:gui/export_data
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:gui/set_command
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:gui/exit_gui

function ajjgui:gui/end_widget