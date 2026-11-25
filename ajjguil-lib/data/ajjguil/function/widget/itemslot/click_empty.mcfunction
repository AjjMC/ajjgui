execute unless data storage ajjguil:data temp.itemslot.in.id run return 0
execute if data storage ajjguil:data {temp:{itemslot:{in:{components:{"minecraft:custom_data":{ajjguil:{meta:{compiled:1b}}}}}}}} run return 0

data modify storage ajjguil:data temp.in set from storage ajjguil:data temp.itemslot.in
data remove storage ajjguil:data temp.in.Slot

function ajjguil:widget/itemslot/add_item
function ajjguil:widget/itemslot/enforce_size
