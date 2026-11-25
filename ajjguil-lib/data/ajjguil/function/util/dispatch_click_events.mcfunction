# Builds ajjguil:event and dispatches tag callbacks, GUI callbacks, widget callbacks, and item insert/remove events
# Expects @s = player, active marker tagged ajjguil.gui_active
function ajjguil:internal/clear_event
data modify storage ajjguil:event type set value "click"

# Populate player & widget scores so build_event_widget captures exact state/count
scoreboard players set @s ajjguil.state 0
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state run execute store result score @s ajjguil.state run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state
scoreboard players set @s ajjguil.count 1
execute if data storage ajjguil:data temp.widget.count run execute store result score @s ajjguil.count run data get storage ajjguil:data temp.widget.count

function ajjguil:internal/build_event_player
function ajjguil:internal/build_event_widget
execute as @n[type=minecraft:marker,tag=ajjguil.gui_active] run function ajjguil:internal/build_event_from_marker
execute if entity @s[tag=ajjguil.locked] run data modify storage ajjguil:event gui.locked set value 1b

# 1. Dispatch global #ajjguil:on_click tag listeners
function #ajjguil:on_click

# 2. Dispatch per-GUI on_click callback if registered
execute if data entity @n[type=minecraft:marker,tag=ajjguil.gui_active] data.callbacks.on_click run function ajjguil:util/run_gui_on_click_cb

# Only run widget-level callback / command / insert / remove when NOT locked and cooldown == 0
execute if entity @s[tag=ajjguil.locked] run return 0

# 3. Dispatch per-widget callback (ajjguil.callback)
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.callback run function ajjguil:util/run_widget_cb

# 4. Run legacy inline command if present
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.command run function ajjguil:util/run_widget_command

# 5. Dispatch item_insert / item_remove if present
execute if data storage ajjguil:data temp.in.id run function ajjguil:util/dispatch_item_insert
execute if data storage ajjguil:data temp.out.id run function ajjguil:util/dispatch_item_remove
