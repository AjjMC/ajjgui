data modify storage ajjgui:data temp.var3 set from storage ajjgui:data widget
data modify storage ajjgui:data widget set from storage ajjgui:data temp.var1
data modify storage ajjgui:data widget.Slot set from storage ajjgui:data temp.var3.Slot
data modify storage ajjgui:data widget.components.minecraft:custom_data.ajjgui set from storage ajjgui:data temp.var3.components.minecraft:custom_data.ajjgui
data modify storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.state set value 1

data modify storage ajjgui:data temp.var2 set from storage ajjgui:data temp.var1.components.minecraft:custom_data.ajjgui