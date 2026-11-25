data modify storage ajjguil:data temp.compile.pages set from storage ajjguil:data temp.open_def.raw_pages
data modify storage ajjguil:data temp.compile.size set value 27
data remove storage ajjguil:data temp.compile.placeholder
execute if data storage ajjguil:data temp.open_def.placeholder run data modify storage ajjguil:data temp.compile.placeholder set from storage ajjguil:data temp.open_def.placeholder
function ajjguil:compiler/compile_gui
data modify storage ajjguil:data temp.open_def.gui set from storage ajjguil:data temp.compiled_pages
data modify storage ajjguil:data temp.open_def.size set value 27
data modify storage ajjguil:data temp.open_def.meta.size set value 27
