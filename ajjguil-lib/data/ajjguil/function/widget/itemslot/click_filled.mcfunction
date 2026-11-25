# Case 1: Empty slot now -> player picked up the entire stored item
execute unless data storage ajjguil:data temp.itemslot.in.id run return run function ajjguil:widget/itemslot/take_all

# Case 2: Remainder in slot is still compiled -> right-click split stack
execute if data storage ajjguil:data {temp:{itemslot:{in:{components:{"minecraft:custom_data":{ajjguil:{meta:{compiled:1b}}}}}}}} run return run function ajjguil:widget/itemslot/take_split

# Case 3: Real uncompiled player item in slot -> swap old stored item out and insert new item
data modify storage ajjguil:data temp.itemslot.return_src set from storage ajjguil:data temp.itemslot.out
function ajjguil:widget/itemslot/strip_to_return
data modify storage ajjguil:data temp.out set from storage ajjguil:data temp.return_item

data modify storage ajjguil:data temp.in set from storage ajjguil:data temp.itemslot.in
data remove storage ajjguil:data temp.in.Slot

function ajjguil:widget/itemslot/add_item
function ajjguil:widget/itemslot/enforce_size
