# Disable all radiobuttons in the same group across 0..size-1
scoreboard players set #rb_idx ajjguil 0
execute if score #rb_idx ajjguil < #size ajjguil run function ajjguil:widget/radiobutton/disable_step

# Enable the clicked radiobutton
data modify storage ajjguil:data temp.rb.copy set from storage ajjguil:data temp.widget
execute if data storage ajjguil:data temp.rb.copy.components.minecraft:custom_data.ajjguil.enabled run data modify storage ajjguil:data temp.widget set from storage ajjguil:data temp.rb.copy.components.minecraft:custom_data.ajjguil.enabled
execute unless data storage ajjguil:data temp.widget.count run data modify storage ajjguil:data temp.widget.count set value 1
data modify storage ajjguil:data temp.widget.Slot set from storage ajjguil:data temp.rb.copy.Slot
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.rb.copy.components.minecraft:custom_data.ajjguil
data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.state set value 1

data modify storage ajjguil:data temp.widget_updated set value 1b
