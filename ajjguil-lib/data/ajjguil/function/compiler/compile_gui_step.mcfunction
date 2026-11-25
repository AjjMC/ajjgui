data modify storage ajjguil:data temp.compile.raw_page set from storage ajjguil:data temp.compile.work_pages[0]
function ajjguil:compiler/compile_page
data modify storage ajjguil:data temp.compiled_pages append from storage ajjguil:data temp.compile.out_page

data remove storage ajjguil:data temp.compile.work_pages[0]
execute if data storage ajjguil:data temp.compile.work_pages[0] run function ajjguil:compiler/compile_gui_step
