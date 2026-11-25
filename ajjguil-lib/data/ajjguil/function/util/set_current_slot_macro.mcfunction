$data modify storage ajjguil:data temp.widget.Slot set value $(slot)b
$data modify storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.meta.slot set value $(slot)b
$data modify storage ajjguil:data temp.page[{Slot:$(slot)b}] set from storage ajjguil:data temp.widget
$execute unless data storage ajjguil:data temp.page[{Slot:$(slot)b}] run data modify storage ajjguil:data temp.page append from storage ajjguil:data temp.widget
