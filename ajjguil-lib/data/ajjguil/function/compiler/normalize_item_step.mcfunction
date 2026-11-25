data modify storage ajjguil:data temp.compile.item set from storage ajjguil:data temp.compile.raw_page[0]
function ajjguil:compiler/normalize_single_item
data modify storage ajjguil:data temp.compile.normalized_page append from storage ajjguil:data temp.compile.item

data remove storage ajjguil:data temp.compile.raw_page[0]
execute if data storage ajjguil:data temp.compile.raw_page[0] run function ajjguil:compiler/normalize_item_step
