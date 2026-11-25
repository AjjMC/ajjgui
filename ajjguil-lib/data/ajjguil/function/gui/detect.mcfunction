# Expects @s = marker (gui_origin)
execute if entity @e[type=minecraft:marker,tag=ajjguil.gui_active] run return 0

# Reject markers whose container size is <= clicked #slot
scoreboard players set #m_size ajjguil 27
execute if data entity @s data.meta.size run execute store result score #m_size ajjguil run data get entity @s data.meta.size
execute if data entity @s data.size run execute store result score #m_size ajjguil run data get entity @s data.size
execute unless score #slot ajjguil < #m_size ajjguil run return 0

# Load marker's expected page into temp.page_source
execute store result storage ajjguil:data temp.args.page int 1 run scoreboard players get @s ajjguil.page
function ajjguil:gui/detect_get_source with storage ajjguil:data temp.args

# Read actual container block items (and lower half if double chest) into temp.page_target
execute at @s run function ajjguil:container/read_block

# Check whether clicked slot (temp.args.slot) is missing, uncompiled, or changed count
execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #slot ajjguil
function ajjguil:gui/detect_check_slot with storage ajjguil:data temp.args
