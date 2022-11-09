data modify storage ajjgui:gui Temp3 set from storage ajjgui:gui Widget
data modify storage ajjgui:gui Widget set from storage ajjgui:gui Temp1
data modify storage ajjgui:gui Widget.Slot set from storage ajjgui:gui Temp3.Slot
data modify storage ajjgui:gui Widget.tag.ajjgui set from storage ajjgui:gui Temp3.tag.ajjgui
data modify storage ajjgui:gui Widget.tag.ajjgui.State set value 1b

data modify storage ajjgui:gui Temp2 set from storage ajjgui:gui Temp1.tag.ajjgui