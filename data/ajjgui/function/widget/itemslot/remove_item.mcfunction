data modify storage ajjgui:data temp.itemslot.copy set from storage ajjgui:data widget

data modify storage ajjgui:data widget set from storage ajjgui:data temp.itemslot.copy.components.minecraft:custom_data.ajjgui.placeholder
data modify storage ajjgui:data widget.Slot set from storage ajjgui:data temp.itemslot.copy.Slot
data modify storage ajjgui:data widget.components.minecraft:custom_data.ajjgui set from storage ajjgui:data temp.itemslot.copy.components.minecraft:custom_data.ajjgui
data modify storage ajjgui:data widget.components.minecraft:custom_data.ajjgui.state set value 0