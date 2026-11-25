data modify storage ajjguil:data temp.scroll.grp_widgets set from storage ajjguil:data temp.scroll.work_widgets[0]
data modify storage ajjguil:data temp.scroll.grp_slots set from storage ajjguil:data temp.scroll.work_slots[0]
data modify storage ajjguil:data temp.scroll.out_group set value []

execute if data storage ajjguil:data temp.scroll.grp_widgets[0] run function ajjguil:compiler/compile_scroll_item_step
data modify storage ajjguil:data temp.scroll.out_widgets append from storage ajjguil:data temp.scroll.out_group

data remove storage ajjguil:data temp.scroll.work_widgets[0]
data remove storage ajjguil:data temp.scroll.work_slots[0]
execute if data storage ajjguil:data temp.scroll.work_widgets[0] if data storage ajjguil:data temp.scroll.work_slots[0] run function ajjguil:compiler/compile_scroll_group_step
