$data modify storage ajjguil:data temp.rb.candidate set from storage ajjguil:data temp.page[{Slot:$(slot)b}]
execute unless data storage ajjguil:data {temp:{rb:{candidate:{components:{"minecraft:custom_data":{ajjguil:{widget:"radiobutton"}}}}}}} run return 0

data modify storage ajjguil:data temp.rb.grp set from storage ajjguil:data temp.widget.components.minecraft:custom_data.ajjguil.group
execute store success score #grp_diff ajjguil run data modify storage ajjguil:data temp.rb.grp set from storage ajjguil:data temp.rb.candidate.components.minecraft:custom_data.ajjguil.group
execute if score #grp_diff ajjguil matches 0 run function ajjguil:widget/radiobutton/disable_candidate
$execute if score #grp_diff ajjguil matches 0 run data modify storage ajjguil:data temp.page[{Slot:$(slot)b}] set from storage ajjguil:data temp.rb.candidate
