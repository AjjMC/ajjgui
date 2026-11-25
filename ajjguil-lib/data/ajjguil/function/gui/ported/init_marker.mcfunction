# Expects @s = marker (ajjguil.gui_ported)
data modify entity @s data set from storage ajjguil:data temp.open_def
data remove entity @s data.raw_pages
data modify entity @s data.is_ported set value 1b
data modify entity @s data.owner_uuid set from storage ajjguil:data temp.event_player.uuid
data modify entity @s data.owner_name set from storage ajjguil:data temp.event_player.name

scoreboard players set @s ajjguil.page 0
execute if data storage ajjguil:data temp.open_init_page run execute store result score @s ajjguil.page run data get storage ajjguil:data temp.open_init_page
execute store result score #page_len ajjguil run data get entity @s data.gui
execute if score #page_len ajjguil matches 1.. run scoreboard players operation @s ajjguil.page %= #page_len ajjguil

function ajjguil:gui/ported/load_page

# Fire on_open event
function ajjguil:internal/build_event_from_marker
function #ajjguil:on_open
execute if data entity @s data.callbacks.on_open run function ajjguil:gui/run_on_open_cb with entity @s data.callbacks
