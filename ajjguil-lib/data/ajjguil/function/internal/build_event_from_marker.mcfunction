data remove storage ajjguil:event gui
execute if data entity @s data.meta.id run data modify storage ajjguil:event gui.id set from entity @s data.meta.id
execute if data entity @s data.meta.namespace run data modify storage ajjguil:event gui.namespace set from entity @s data.meta.namespace
execute if data entity @s data.meta.container run data modify storage ajjguil:event gui.container set from entity @s data.meta.container
execute unless data entity @s data.meta.container run data modify storage ajjguil:event gui.container set value "chest"

scoreboard players set #ev_size ajjguil 27
execute if data entity @s data.meta.size run execute store result score #ev_size ajjguil run data get entity @s data.meta.size
execute store result storage ajjguil:event gui.slots int 1 run scoreboard players get #ev_size ajjguil

execute if entity @s[tag=ajjguil.gui_origin] run data modify storage ajjguil:event gui.mode set value "origin"
execute if entity @s[tag=ajjguil.gui_ported] run data modify storage ajjguil:event gui.mode set value "ported"

execute store result storage ajjguil:event gui.page int 1 run scoreboard players get @s ajjguil.page
execute store result storage ajjguil:event gui.page_count int 1 run data get entity @s data.gui
data modify storage ajjguil:event gui.locked set value 0b

execute if data storage ajjguil:data temp.event_player run data modify storage ajjguil:event player set from storage ajjguil:data temp.event_player
