# Binds/opens a registered GUI onto the container block at the current position (~ ~ ~)
# Args: {id:"..."}
$execute unless data storage ajjguil:registry definitions[{id:"$(id)"}] run return fail

function ajjguil:container/inspect_block
execute unless data storage ajjguil:data {temp:{inspect:{valid:1b}}} run return fail

$data modify storage ajjguil:data temp.open_def set from storage ajjguil:registry definitions[{id:"$(id)"}]
data remove storage ajjguil:data temp.open_init_page
execute if data storage ajjguil:input page run data modify storage ajjguil:data temp.open_init_page set from storage ajjguil:input page
data remove storage ajjguil:input page

# Redirect automatically to the right-half block if called on the left half of a double chest
execute store result storage ajjguil:data temp.args.dx int 1 run data get storage ajjguil:data temp.inspect.origin_dx
execute store result storage ajjguil:data temp.args.dz int 1 run data get storage ajjguil:data temp.inspect.origin_dz
function ajjguil:api/open_block_dispatch with storage ajjguil:data temp.args
