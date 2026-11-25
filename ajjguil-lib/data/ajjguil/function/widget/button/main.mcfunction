function ajjguil:util/begin_widget
execute unless entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return 0

function ajjguil:util/recover_item

# Schedule page switch if button carries ajjguil.page and is unlocked
execute unless entity @s[tag=ajjguil.locked] if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.page run function ajjguil:widget/button/queue_page

function ajjguil:util/dispatch_click_events
function ajjguil:util/end_widget
