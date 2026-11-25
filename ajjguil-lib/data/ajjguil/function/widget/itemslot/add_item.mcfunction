data modify storage ajjguil:data temp.itemslot.copy set from storage ajjguil:data temp.widget
data modify storage ajjguil:data temp.widget set from storage ajjguil:data temp.itemslot.in
execute unless data storage ajjguil:data temp.widget.count run data modify storage ajjguil:data temp.widget.count set value 1
data modify storage ajjguil:data temp.widget.Slot set from storage ajjguil:data temp.itemslot.copy.Slot
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.itemslot.copy.components.minecraft:custom_data.ajjguil
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state set value 1
