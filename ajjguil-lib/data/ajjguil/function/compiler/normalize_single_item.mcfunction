execute unless data storage ajjguil:data temp.compile.item.Slot run data modify storage ajjguil:data temp.compile.item.Slot set value 0b
execute unless data storage ajjguil:data temp.compile.item.count run data modify storage ajjguil:data temp.compile.item.count set value 1
execute unless data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil if data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjgui run data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjgui
data remove storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjgui
execute unless data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.widget run data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.widget set value "placeholder"

execute unless data storage ajjguil:data {temp:{compile:{item:{components:{"minecraft:custom_data":{ajjguil:{widget:"placeholder"}}}}}}} unless data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.exit run data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.exit set value 0b
execute unless data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.fixed run data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.fixed set value 0b
execute if data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.page unless data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.relative run data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.relative set value 0b

execute unless data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.command if data storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.run run data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.command set from storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.run

execute if data storage ajjguil:data {temp:{compile:{item:{components:{"minecraft:custom_data":{ajjguil:{widget:"scrollbutton"}}}}}}} run function ajjguil:compiler/compile_scrollbutton

execute store result score #tmp ajjguil run data get storage ajjguil:data temp.compile.item.Slot
execute store result storage ajjguil:data temp.args.slot int 1 run scoreboard players get #tmp ajjguil
function ajjguil:compiler/set_item_slot_meta with storage ajjguil:data temp.args
data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.meta.compiled set value 1b
