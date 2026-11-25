# Writes metadata about the active/target GUI into ajjguil:data result
data remove storage ajjguil:data result
function ajjguil:internal/select_target_marker
execute unless entity @e[type=minecraft:marker,tag=ajjguil.target] run return run data modify storage ajjguil:data result.open set value 0b

data modify storage ajjguil:data result.open set value 1b
execute if data entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.id run data modify storage ajjguil:data result.id set from entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.id
execute if data entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.namespace run data modify storage ajjguil:data result.namespace set from entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.namespace
execute if data entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.container run data modify storage ajjguil:data result.container set from entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.container
execute store result storage ajjguil:data result.size int 1 run data get entity @n[type=minecraft:marker,tag=ajjguil.target] data.meta.size
execute store result storage ajjguil:data result.page int 1 run scoreboard players get @n[type=minecraft:marker,tag=ajjguil.target] ajjguil.page
execute store result storage ajjguil:data result.page_count int 1 run data get entity @n[type=minecraft:marker,tag=ajjguil.target] data.gui
execute if entity @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_origin] run data modify storage ajjguil:data result.mode set value "origin"
execute if entity @n[type=minecraft:marker,tag=ajjguil.target,tag=ajjguil.gui_ported] run data modify storage ajjguil:data result.mode set value "ported"

tag @e[type=minecraft:marker,tag=ajjguil.target] remove ajjguil.target
return 1
