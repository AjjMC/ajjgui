data modify storage ajjgui:gui Temp2 set from storage ajjgui:gui Temp1
data modify storage ajjgui:gui Temp1 set from storage ajjgui:gui Temp2.tag.ajjgui.OFF
data modify storage ajjgui:gui Temp1.Slot set from storage ajjgui:gui Temp2.Slot
data modify storage ajjgui:gui Temp1.tag.ajjgui set from storage ajjgui:gui Temp2.tag.ajjgui
data modify storage ajjgui:gui Temp1.tag.ajjgui.State set value 0b