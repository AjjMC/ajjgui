# Expects @s = player, macro args: {id:"..."}
$execute unless data storage ajjguil:registry definitions[{id:"$(id)"}] run return fail

# If player already rides an open ported GUI, close it cleanly first
execute on vehicle if entity @s[tag=ajjguil.gui_vehicle] run function ajjguil:gui/ported/close

# Copy definition metadata to temp.open_def
$data modify storage ajjguil:data temp.open_def set from storage ajjguil:registry definitions[{id:"$(id)"}]
data modify storage ajjguil:data temp.args.id set from storage ajjguil:data temp.open_def.id
data modify storage ajjguil:data temp.args.rotation set from entity @s Rotation

# Resolve vehicle entity type (explicit vehicle, else oak_chest_boat so riding + E opens GUI)
data modify storage ajjguil:data temp.args.vehicle set value "minecraft:oak_chest_boat"
execute if data storage ajjguil:data temp.open_def.vehicle run data modify storage ajjguil:data temp.args.vehicle set from storage ajjguil:data temp.open_def.vehicle

# Clamp >27-slot definitions to 27 slots when opened in a 27-slot ported vehicle
execute store result score #def_size ajjguil run data get storage ajjguil:data temp.open_def.size
execute if score #def_size ajjguil matches 28.. if data storage ajjguil:data temp.open_def.raw_pages run function ajjguil:gui/ported/clamp_to_27

# Spawn base interaction + vehicle + ported marker at player location
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ajjguil:gui/ported/create with storage ajjguil:data temp.args

# Mount player onto the new vehicle
ride @s dismount
ride @s mount @e[tag=ajjguil.gui_vehicle,tag=ajjguil.selected,limit=1]
tag @e[tag=ajjguil.gui_vehicle,tag=ajjguil.selected] remove ajjguil.selected

# Record player info for on_open event
function ajjguil:internal/build_event_player

# Initialize marker data and load initial page
execute on vehicle on passengers if entity @s[type=minecraft:marker,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/init_marker
