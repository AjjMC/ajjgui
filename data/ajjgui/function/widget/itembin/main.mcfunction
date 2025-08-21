function ajjgui:util/begin_widget

execute if score @s ajjgui.cooldown matches 0 run function ajjgui:widget/itembin/function

execute if score @s ajjgui.cooldown matches 1.. run function ajjgui:util/recover_item
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:util/update_page
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:util/exit_gui
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:util/export_data
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:util/set_command

function ajjgui:util/end_widget