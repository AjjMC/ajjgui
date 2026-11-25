# Sets and compiles an item in a GUI slot at runtime
# Args: {slot:0, item:{id:"minecraft:diamond", count:1, ...}}
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return fail

$data modify storage ajjguil:data temp.compile.item set value $(item)
$data modify storage ajjguil:data temp.compile.item.Slot set value $(slot)b
$data modify storage ajjguil:data temp.args.slot set value $(slot)
function ajjguil:compiler/normalize_single_item

# If inside a callback on the same clicked slot, guard against end_widget overwriting it
scoreboard players set #set_s ajjguil -1
$scoreboard players set #set_s ajjguil $(slot)
execute if entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] if score #set_s ajjguil = #slot ajjguil run data modify storage ajjguil:data temp.slot_overridden set value 1b

# Save/preserve callback temp.page if we are NOT already editing the active page
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/get_page

function ajjguil:api/set_slot_apply with storage ajjguil:data temp.args

execute as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/save_page
execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/load_page
execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/load_page

tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
