# Switches the target/open GUI to a specific page (0-indexed, modulo page_count)
# Args: {page:0}
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return fail

# If inside callback and widget was modified, persist that slot before changing pages
execute if entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] if data storage ajjguil:data {temp:{widget_updated:1b}} unless data storage ajjguil:data {temp:{slot_overridden:1b}} run function ajjguil:util/set_current_slot
execute if entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] run data modify storage ajjguil:data temp.slot_overridden set value 1b

execute unless entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/get_page

$data modify storage ajjguil:data temp.page_req.page set value $(page)
data modify storage ajjguil:data temp.page_req.relative set value 0b
data modify storage ajjguil:data temp.page_req.has_req set value 1b

execute as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/change_page
tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
