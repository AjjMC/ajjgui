data modify storage ajjguil:event type set value "item_insert"
function #ajjguil:on_item_insert
execute if data entity @n[type=minecraft:marker,tag=ajjguil.gui_active] data.callbacks.on_item_insert run function ajjguil:util/run_insert_cb
