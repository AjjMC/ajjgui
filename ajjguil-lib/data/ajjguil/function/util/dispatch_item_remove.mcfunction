data modify storage ajjguil:event type set value "item_remove"
function #ajjguil:on_item_remove
execute if data entity @n[type=minecraft:marker,tag=ajjguil.gui_active] data.callbacks.on_item_remove run function ajjguil:util/run_remove_cb
