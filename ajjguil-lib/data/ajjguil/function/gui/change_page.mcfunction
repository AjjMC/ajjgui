# Expects @s = active marker
# Reads page target from temp.page_req (or fallback temp.widget...ajjguil.page)
data modify storage ajjguil:data temp.prev_page set from storage ajjguil:data temp.page
function ajjguil:gui/save_page

scoreboard players set #old_page ajjguil 0
execute store result score #old_page ajjguil run scoreboard players get @s ajjguil.page
scoreboard players operation #new_page ajjguil = #old_page ajjguil

execute if data storage ajjguil:data temp.page_req.page run execute store result score #new_page ajjguil run data get storage ajjguil:data temp.page_req.page
execute unless data storage ajjguil:data temp.page_req.page if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.page run execute store result score #new_page ajjguil run data get storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.page

execute if data storage ajjguil:data {temp:{page_req:{relative:1b}}} run scoreboard players operation #new_page ajjguil += #old_page ajjguil
execute unless data storage ajjguil:data temp.page_req.page if data storage ajjguil:data {temp:{widget:{components:{"minecraft:custom_data":{ajjguil:{relative:1b}}}}}} run scoreboard players operation #new_page ajjguil += #old_page ajjguil

execute store result score #page_count ajjguil run data get entity @s data.gui
execute if score #page_count ajjguil matches ..0 run return 0
scoreboard players operation #new_page ajjguil %= #page_count ajjguil
execute store result score @s ajjguil.page run scoreboard players get #new_page ajjguil

function ajjguil:gui/load_page

# Preserve fixed:1b widgets across page changes
scoreboard players set #fix_slot ajjguil 0
execute if score #fix_slot ajjguil < #size ajjguil run function ajjguil:gui/copy_fixed_step

function ajjguil:gui/save_page

execute if entity @s[tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/load_page
execute if entity @s[tag=ajjguil.gui_ported] run function ajjguil:gui/ported/load_page

data modify storage ajjguil:data temp.page_changed set value 1b
data remove storage ajjguil:data temp.page_req

# Emit on_page_change event
function ajjguil:internal/build_event_from_marker
execute store result storage ajjguil:event page int 1 run scoreboard players get #new_page ajjguil
execute store result storage ajjguil:event previous_page int 1 run scoreboard players get #old_page ajjguil
function #ajjguil:on_page_change
execute if data entity @s data.callbacks.on_page_change run function ajjguil:gui/run_on_page_change_cb with entity @s data.callbacks
