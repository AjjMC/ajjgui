# Clears a slot back to the GUI's placeholder (or default gray glass pane)
# Args: {slot:0}
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return fail

data modify storage ajjguil:data temp.compile.item set value {id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:custom_data":{ajjguil:{widget:"placeholder"}},"minecraft:tooltip_display":{hide_tooltip:1b}}}
execute if data entity @n[type=minecraft:marker,tag=ajjguil.target] data.placeholder run data modify storage ajjguil:data temp.compile.item set from entity @n[type=minecraft:marker,tag=ajjguil.target] data.placeholder

$data modify storage ajjguil:data temp.compile.item.Slot set value $(slot)b
$data modify storage ajjguil:data temp.args.slot set value $(slot)
function ajjguil:compiler/normalize_single_item

scoreboard players set #clr_s ajjguil -1
$scoreboard players set #clr_s ajjguil $(slot)
execute if entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] if score #clr_s ajjguil = #slot ajjguil run data modify storage ajjguil:data temp.slot_overridden set value 1b

execute unless entity @e[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_active] as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/get_page

function ajjguil:api/set_slot_apply with storage ajjguil:data temp.args

execute as @n[type=minecraft:marker,tag=ajjguil.target] run function ajjguil:gui/save_page
execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] at @s run function ajjguil:gui/origin/load_page
execute as @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] run function ajjguil:gui/ported/load_page

tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
