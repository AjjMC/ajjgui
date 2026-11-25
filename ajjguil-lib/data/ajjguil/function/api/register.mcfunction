# Registers or updates a GUI definition from storage ajjguil:input gui
# Expected fields in ajjguil:input gui:
#   id (string, required)
#   pages (list of page item lists, required)
#   size (int, optional, default 27; supports 3, 5, 9, 27, 54)
#   container (string, optional)
#   vehicle (string, optional)
#   custom_name (text component / string, optional)
#   placeholder (item compound, optional)
#   persistent (byte 0b|1b, optional)
#   prompt (text component / string, optional)
#   callbacks (compound {on_click, on_open, on_close, on_page_change, on_item_insert, on_item_remove, on_tick}, optional)
#   namespace (string, optional)

execute unless data storage ajjguil:input gui.id run return fail
execute unless data storage ajjguil:input gui.pages run return fail

data modify storage ajjguil:data temp.reg_in set from storage ajjguil:input gui
data modify storage ajjguil:data temp.compile.pages set from storage ajjguil:data temp.reg_in.pages

execute if data storage ajjguil:data temp.reg_in.size run data modify storage ajjguil:data temp.compile.size set from storage ajjguil:data temp.reg_in.size
execute unless data storage ajjguil:data temp.reg_in.size run data modify storage ajjguil:data temp.compile.size set value 27

data remove storage ajjguil:data temp.compile.placeholder
execute if data storage ajjguil:data temp.reg_in.placeholder run data modify storage ajjguil:data temp.compile.placeholder set from storage ajjguil:data temp.reg_in.placeholder

function ajjguil:compiler/compile_gui

# Build normalized registry entry
data remove storage ajjguil:data temp.reg_entry
data modify storage ajjguil:data temp.reg_entry.id set from storage ajjguil:data temp.reg_in.id
data modify storage ajjguil:data temp.reg_entry.size set from storage ajjguil:data temp.compile.size
data modify storage ajjguil:data temp.reg_entry.gui set from storage ajjguil:data temp.compiled_pages
data modify storage ajjguil:data temp.reg_entry.raw_pages set from storage ajjguil:data temp.reg_in.pages
data modify storage ajjguil:data temp.reg_entry.placeholder set from storage ajjguil:data temp.compile.placeholder

data modify storage ajjguil:data temp.reg_entry.meta.id set from storage ajjguil:data temp.reg_in.id
data modify storage ajjguil:data temp.reg_entry.meta.size set from storage ajjguil:data temp.compile.size
execute if data storage ajjguil:data temp.reg_in.namespace run data modify storage ajjguil:data temp.reg_entry.meta.namespace set from storage ajjguil:data temp.reg_in.namespace
execute if data storage ajjguil:data temp.reg_in.container run data modify storage ajjguil:data temp.reg_entry.meta.container set from storage ajjguil:data temp.reg_in.container
execute unless data storage ajjguil:data temp.reg_in.container run data modify storage ajjguil:data temp.reg_entry.meta.container set value "chest"

execute if data storage ajjguil:data temp.reg_in.custom_name run data modify storage ajjguil:data temp.reg_entry.custom_name set from storage ajjguil:data temp.reg_in.custom_name
execute if data storage ajjguil:data temp.reg_in.vehicle run data modify storage ajjguil:data temp.reg_entry.vehicle set from storage ajjguil:data temp.reg_in.vehicle
execute if data storage ajjguil:data temp.reg_in.persistent run data modify storage ajjguil:data temp.reg_entry.persistent set from storage ajjguil:data temp.reg_in.persistent
execute unless data storage ajjguil:data temp.reg_in.persistent run data modify storage ajjguil:data temp.reg_entry.persistent set value 0b
execute if data storage ajjguil:data temp.reg_in.prompt run data modify storage ajjguil:data temp.reg_entry.prompt set from storage ajjguil:data temp.reg_in.prompt
execute if data storage ajjguil:data temp.reg_in.callbacks run data modify storage ajjguil:data temp.reg_entry.callbacks set from storage ajjguil:data temp.reg_in.callbacks

data modify storage ajjguil:data temp.args.id set from storage ajjguil:data temp.reg_entry.id
function ajjguil:api/register_upsert with storage ajjguil:data temp.args
data remove storage ajjguil:input gui
