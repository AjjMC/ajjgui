# Apply updated widget state unless api/set_slot or api/clear_slot already overrode this slot
execute if data storage ajjguil:data {temp:{widget_updated:1b}} unless data storage ajjguil:data {temp:{slot_overridden:1b}} run function ajjguil:util/set_current_slot

# Handle deferred page switch (if not already switched by callback)
execute if data storage ajjguil:data {temp:{page_req:{has_req:1b}}} unless data storage ajjguil:data {temp:{page_changed:1b}} as @n[type=minecraft:marker,tag=ajjguil.gui_active] run function ajjguil:gui/change_page

# Otherwise save current page and refresh container
execute unless data storage ajjguil:data {temp:{page_changed:1b}} run function ajjguil:util/update_page

# Check exit flag (when not locked)
execute unless entity @s[tag=ajjguil.locked] if data storage ajjguil:data {temp:{widget:{components:{"minecraft:custom_data":{ajjguil:{exit:1b}}}}}} run data modify storage ajjguil:data temp.exit_gui set value 1b
execute unless entity @s[tag=ajjguil.locked] if data storage ajjguil:data {temp:{exit_gui:1b}} run function ajjguil:util/handle_exit

tag @s remove ajjguil.locked
tag @e[type=minecraft:marker,tag=ajjguil.gui_active] remove ajjguil.gui_active
scoreboard players set @s ajjguil.cooldown 8
function ajjguil:internal/clear_event
