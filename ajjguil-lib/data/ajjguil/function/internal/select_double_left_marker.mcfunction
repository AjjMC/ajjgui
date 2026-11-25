function ajjguil:container/inspect_block
execute store result storage ajjguil:data temp.args.dx int 1 run data get storage ajjguil:data temp.inspect.origin_dx
execute store result storage ajjguil:data temp.args.dz int 1 run data get storage ajjguil:data temp.inspect.origin_dz
function ajjguil:internal/select_double_left_macro with storage ajjguil:data temp.args
