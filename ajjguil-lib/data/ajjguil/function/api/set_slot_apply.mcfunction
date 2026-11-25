$data modify storage ajjguil:data temp.page[{Slot:$(slot)b}] set from storage ajjguil:data temp.compile.item
$execute unless data storage ajjguil:data temp.page[{Slot:$(slot)b}] run data modify storage ajjguil:data temp.page append from storage ajjguil:data temp.compile.item
