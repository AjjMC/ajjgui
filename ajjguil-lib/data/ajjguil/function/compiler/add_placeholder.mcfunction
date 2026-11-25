data modify storage ajjguil:data temp.compile.ph set from storage ajjguil:data temp.compile.placeholder
execute unless data storage ajjguil:data temp.compile.ph.count run data modify storage ajjguil:data temp.compile.ph.count set value 1
execute unless data storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil if data storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjgui run data modify storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjgui
data remove storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjgui
execute unless data storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil.widget run data modify storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil.widget set value "placeholder"
execute unless data storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil.fixed run data modify storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil.fixed set value 0b
$data modify storage ajjguil:data temp.compile.ph.Slot set value $(slot)b
$data modify storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil.meta.slot set value $(slot)b
data modify storage ajjguil:data temp.compile.ph.components.minecraft:custom_data.ajjguil.meta.compiled set value 1b
data modify storage ajjguil:data temp.compile.out_page append from storage ajjguil:data temp.compile.ph
