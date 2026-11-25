$execute if data storage ajjguil:registry definitions[{id:"$(id)"}] run return run data modify storage ajjguil:registry definitions[{id:"$(id)"}] set from storage ajjguil:data temp.reg_entry
data modify storage ajjguil:registry definitions append from storage ajjguil:data temp.reg_entry
