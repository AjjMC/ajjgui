data modify entity @s data set from storage ajjguil:data temp.open_def
data remove entity @s data.raw_pages
data modify entity @s data.is_ported set value 0b
data modify entity @s data.meta.container set from storage ajjguil:data temp.inspect.container
data modify entity @s data.meta.size set from storage ajjguil:data temp.inspect.size
data modify entity @s data.meta.is_double set from storage ajjguil:data temp.inspect.is_double
data modify entity @s data.meta.pair_dx set from storage ajjguil:data temp.inspect.pair_dx
data modify entity @s data.meta.pair_dz set from storage ajjguil:data temp.inspect.pair_dz

scoreboard players set @s ajjguil.page 0
execute if data storage ajjguil:data temp.open_init_page run execute store result score @s ajjguil.page run data get storage ajjguil:data temp.open_init_page
execute store result score #page_len ajjguil run data get entity @s data.gui
execute if score #page_len ajjguil matches 1.. run scoreboard players operation @s ajjguil.page %= #page_len ajjguil

execute at @s run function ajjguil:gui/origin/load_page

# Fire on_open event
function ajjguil:internal/build_event_from_marker
function #ajjguil:on_open
execute if data entity @s data.callbacks.on_open run function ajjguil:gui/run_on_open_cb with entity @s data.callbacks
