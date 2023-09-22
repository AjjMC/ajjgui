function ajjgui:gui/begin_widget

execute if score @s ajjgui.cooldown matches 0 run function ajjgui:widgets/itembin/function

execute if score @s ajjgui.cooldown matches 1.. run function ajjgui:gui/recover_item
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:gui/run_command
function ajjgui:gui/update_page
function ajjgui:gui/exit_gui

function ajjgui:gui/end_widget