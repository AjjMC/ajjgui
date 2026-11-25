data modify storage ajjguil:data temp.scroll.w set from storage ajjguil:data temp.scroll.place_w[0]
data modify storage ajjguil:data temp.scroll.w.Slot set from storage ajjguil:data temp.scroll.place_s[0]
data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.meta.slot set from storage ajjguil:data temp.scroll.place_s[0]
data modify storage ajjguil:data temp.scroll.w.components.minecraft:custom_data.ajjguil.meta.compiled set value 1b
execute unless data storage ajjguil:data temp.scroll.w.count run data modify storage ajjguil:data temp.scroll.w.count set value 1

execute store result storage ajjguil:data temp.args.slot int 1 run data get storage ajjguil:data temp.scroll.w.Slot
function ajjguil:widget/scrollbutton/set_scroll_slot_macro with storage ajjguil:data temp.args

data remove storage ajjguil:data temp.scroll.place_w[0]
data remove storage ajjguil:data temp.scroll.place_s[0]
execute if data storage ajjguil:data temp.scroll.place_w[0] if data storage ajjguil:data temp.scroll.place_s[0] run function ajjguil:widget/scrollbutton/apply_slot_step
