data modify storage ajjguil:data temp.scroll.work_widgets set from storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.widgets
data modify storage ajjguil:data temp.scroll.work_slots set from storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.slots
data modify storage ajjguil:data temp.scroll.out_widgets set value []

execute if data storage ajjguil:data temp.scroll.work_widgets[0] if data storage ajjguil:data temp.scroll.work_slots[0] run function ajjguil:compiler/compile_scroll_group_step
data modify storage ajjguil:data temp.compile.item.components.minecraft:custom_data.ajjguil.widgets set from storage ajjguil:data temp.scroll.out_widgets
