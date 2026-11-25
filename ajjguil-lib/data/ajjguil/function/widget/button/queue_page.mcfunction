data modify storage ajjguil:data temp.page_req.has_req set value 1b
data modify storage ajjguil:data temp.page_req.page set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.page
data modify storage ajjguil:data temp.page_req.relative set value 0b
execute if data storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.relative run data modify storage ajjguil:data temp.page_req.relative set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.relative
