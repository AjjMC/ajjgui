function ajjguil:util/begin_widget
execute unless entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return 0

function ajjguil:util/recover_item
execute unless entity @s[tag=ajjguil.locked] run function ajjguil:widget/counter/run
function ajjguil:util/dispatch_click_events
function ajjguil:util/end_widget
