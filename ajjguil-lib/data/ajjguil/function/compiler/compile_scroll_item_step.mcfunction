data modify storage ajjguil:data temp.scroll.w set from storage ajjguil:data temp.scroll.grp_widgets[0]
execute unless data storage ajjguil:data temp.scroll.w.count run data modify storage ajjguil:data temp.scroll.w.count set value 1
execute unless data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil if data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjgui run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjgui
data remove storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjgui
execute unless data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.widget run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.widget set value "placeholder"
execute unless data storage ajjguil:data {temp:{scroll:{w:{components:{"minecraft:custom_data":{ajjguil:{widget:"placeholder"}}}}}}} unless data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.exit run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.exit set value 0b
execute unless data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.fixed run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.fixed set value 0b
execute if data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.page unless data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.relative run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.relative set value 0b
execute unless data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.command if data storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.run run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.command set from storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.run
data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.meta.compiled set value 1b
execute if data storage ajjguil:data temp.scroll.grp_slots[0] run data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.meta.slot set from storage ajjguil:data temp.scroll.grp_slots[0]
execute if data storage ajjguil:data temp.scroll.grp_slots[0] run data modify storage ajjguil:data temp.scroll.w.Slot set from storage ajjguil:data temp.scroll.grp_slots[0]
execute if data storage ajjguil:data temp.scroll.grp_slots[0] run data modify storage ajjguil:data temp.scroll.grp_slots append from storage ajjguil:data temp.scroll.grp_slots[0]
execute if data storage ajjguil:data temp.scroll.grp_slots[0] run data remove storage ajjguil:data temp.scroll.grp_slots[0]

data modify storage ajjguil:data temp.scroll.out_group append from storage ajjguil:data temp.scroll.w
data remove storage ajjguil:data temp.scroll.grp_widgets[0]
execute if data storage ajjguil:data temp.scroll.grp_widgets[0] run function ajjguil:compiler/compile_scroll_item_step
