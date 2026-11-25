# Rotate button's own icon items if present
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.items[0] run function ajjguil:widget/scrollbutton/rotate_icon

# Rotate and apply all widget groups to target slots
data modify storage ajjguil:data temp.scroll.work_widgets set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.widgets
data modify storage ajjguil:data temp.scroll.work_slots set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.slots
data modify storage ajjguil:data temp.scroll.out_widgets set value []

execute if data storage ajjguil:data temp.scroll.work_widgets[0] if data storage ajjguil:data temp.scroll.work_slots[0] run function ajjguil:widget/scrollbutton/apply_groups_step
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.widgets set from storage ajjguil:data temp.scroll.out_widgets

data modify storage ajjguil:data temp.widget_updated set value 1b
