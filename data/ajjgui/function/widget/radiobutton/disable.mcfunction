data modify storage ajjgui:data temp2 set from storage ajjgui:data temp1
data modify storage ajjgui:data temp1 set from storage ajjgui:data temp2.components.minecraft:custom_data.ajjgui.disabled
data modify storage ajjgui:data temp1.Slot set from storage ajjgui:data temp2.Slot
data modify storage ajjgui:data temp1.components.minecraft:custom_data.ajjgui set from storage ajjgui:data temp2.components.minecraft:custom_data.ajjgui
data modify storage ajjgui:data temp1.components.minecraft:custom_data.ajjgui.state set value 0