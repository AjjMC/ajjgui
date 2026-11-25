$execute unless data storage ajjguil:data temp.page_source[{Slot:$(slot)b}] run return 0
$execute unless data storage ajjguil:data temp.page_target[{Slot:$(slot)b,components:{"minecraft:custom_data":{ajjguil:{meta:{compiled:1b}}}}}] run return run tag @s add ajjguil.gui_active

scoreboard players set #src_cnt ajjguil 1
scoreboard players set #tgt_cnt ajjguil 1
$execute if data storage ajjguil:data temp.page_source[{Slot:$(slot)b}].count run execute store result score #src_cnt ajjguil run data get storage ajjguil:data temp.page_source[{Slot:$(slot)b}].count
$execute if data storage ajjguil:data temp.page_target[{Slot:$(slot)b}].count run execute store result score #tgt_cnt ajjguil run data get storage ajjguil:data temp.page_target[{Slot:$(slot)b}].count
execute unless score #src_cnt ajjguil = #tgt_cnt ajjguil run tag @s add ajjguil.gui_active
