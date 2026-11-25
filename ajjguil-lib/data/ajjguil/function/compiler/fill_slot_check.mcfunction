$execute if data storage ajjguil:data temp.compile.normalized_page[{Slot:$(slot)b}] run data modify storage ajjguil:data temp.compile.out_page append from storage ajjguil:data temp.compile.normalized_page[{Slot:$(slot)b}]
$execute unless data storage ajjguil:data temp.compile.normalized_page[{Slot:$(slot)b}] run function ajjguil:compiler/add_placeholder with storage ajjguil:data temp.args
