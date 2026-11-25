data modify storage ajjguil:data temp.rb.cand_copy set from storage ajjguil:data temp.rb.candidate
execute if data storage ajjguil:data temp.rb.cand_copy.components.minecraft:custom_data.ajjguil.disabled run data modify storage ajjguil:data temp.rb.candidate set from storage ajjguil:data temp.rb.cand_copy.components.minecraft:custom_data.ajjguil.disabled
execute unless data storage ajjguil:data temp.rb.candidate.count run data modify storage ajjguil:data temp.rb.candidate.count set value 1
data modify storage ajjguil:data temp.rb.candidate.Slot set from storage ajjguil:data temp.rb.cand_copy.Slot
data modify storage ajjguil:data temp.rb.candidate.components.minecraft:custom_data.ajjguil set from storage ajjguil:data temp.rb.cand_copy.components.minecraft:custom_data.ajjguil
data modify storage ajjguil:data temp.rb.candidate.components.minecraft:custom_data.ajjguil.state set value 0
