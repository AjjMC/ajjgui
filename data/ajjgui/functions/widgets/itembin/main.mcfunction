function ajjgui:utils/begin_widget

execute if score @s ajjgui.cooldown matches 0 run function ajjgui:widgets/itembin/function

execute if score @s ajjgui.cooldown matches 1.. run function ajjgui:utils/recover_item
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:utils/update_page
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:utils/exit_gui
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:utils/export_data
execute if score @s ajjgui.cooldown matches 0 run function ajjgui:utils/set_command

function ajjgui:utils/end_widget