data modify storage ajjguil:data temp.scroll.grp_w set from storage ajjguil:data temp.scroll.work_widgets[0]
data modify storage ajjguil:data temp.scroll.grp_s set from storage ajjguil:data temp.scroll.work_slots[0]

# Rotate widgets list by step (1 slot rotation, or explicit step)
execute if data storage ajjguil:data temp.scroll.grp_w[0] run data modify storage ajjguil:data temp.scroll.grp_w append from storage ajjguil:data temp.scroll.grp_w[0]
execute if data storage ajjguil:data temp.scroll.grp_w[0] run data remove storage ajjguil:data temp.scroll.grp_w[0]

data modify storage ajjguil:data temp.scroll.out_widgets append from storage ajjguil:data temp.scroll.grp_w

# Place the front widgets into each slot in grp_s
data modify storage ajjguil:data temp.scroll.place_w set from storage ajjguil:data temp.scroll.grp_w
data modify storage ajjguil:data temp.scroll.place_s set from storage ajjguil:data temp.scroll.grp_s
execute if data storage ajjguil:data temp.scroll.place_w[0] if data storage ajjguil:data temp.scroll.place_s[0] run function ajjguil:widget/scrollbutton/apply_slot_step

data remove storage ajjguil:data temp.scroll.work_widgets[0]
data remove storage ajjguil:data temp.scroll.work_slots[0]
execute if data storage ajjguil:data temp.scroll.work_widgets[0] if data storage ajjguil:data temp.scroll.work_slots[0] run function ajjguil:widget/scrollbutton/apply_groups_step
