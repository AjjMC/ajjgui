data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var1
data modify storage ajjgui:data temp.var1 set from storage ajjgui:data temp.var2.components.minecraft:custom_data.ajjgui.disabled
data modify storage ajjgui:data temp.var1.Slot set from storage ajjgui:data temp.var2.Slot
data modify storage ajjgui:data temp.var1.components.minecraft:custom_data.ajjgui set from storage ajjgui:data temp.var2.components.minecraft:custom_data.ajjgui
data modify storage ajjgui:data temp.var1.components.minecraft:custom_data.ajjgui.state set value 0