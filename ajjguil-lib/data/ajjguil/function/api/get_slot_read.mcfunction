$execute if data storage ajjguil:data temp.page[{Slot:$(slot)b}] run data modify storage ajjguil:data result.item set from storage ajjguil:data temp.page[{Slot:$(slot)b}]
execute if data storage ajjguil:data result.item.components.minecraft:custom_data.ajjguil.widget run data modify storage ajjguil:data result.widget set from storage ajjguil:data result.item.components.minecraft:custom_data.ajjguil.widget
execute if data storage ajjguil:data result.item.components.minecraft:custom_data.ajjguil.state run data modify storage ajjguil:data result.state set from storage ajjguil:data result.item.components.minecraft:custom_data.ajjguil.state
execute if data storage ajjguil:data result.item.count run data modify storage ajjguil:data result.count set from storage ajjguil:data result.item.count
