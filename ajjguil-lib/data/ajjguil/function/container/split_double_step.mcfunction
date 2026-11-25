execute store result score #c_slot ajjguil run data get storage ajjguil:data temp.split_list[0].Slot
execute if score #c_slot ajjguil matches ..26 run data modify storage ajjguil:data temp.upper_page append from storage ajjguil:data temp.split_list[0]
execute if score #c_slot ajjguil matches 27.. run function ajjguil:container/split_lower_item
data remove storage ajjguil:data temp.split_list[0]
execute if data storage ajjguil:data temp.split_list[0] run function ajjguil:container/split_double_step
