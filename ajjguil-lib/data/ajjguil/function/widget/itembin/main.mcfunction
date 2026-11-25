function ajjguil:util/begin_widget
execute unless entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return 0

function ajjguil:util/recover_item
execute if entity @s[tag=ajjguil.locked] run return run function ajjguil:util/end_widget
execute if score @s ajjguil.cooldown matches 1.. run return run function ajjguil:util/end_widget

function ajjguil:widget/itembin/run
function ajjguil:util/dispatch_click_events
function ajjguil:util/end_widget
