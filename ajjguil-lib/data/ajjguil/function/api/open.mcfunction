# Opens a registered GUI for the executing player (@s) as a ported vehicle GUI
# Args: {id:"..."}
# Optional: set storage ajjguil:input page <int> beforehand to open on a specific page
$execute unless data storage ajjguil:registry definitions[{id:"$(id)"}] run return fail

data remove storage ajjguil:data temp.open_init_page
execute if data storage ajjguil:input page run data modify storage ajjguil:data temp.open_init_page set from storage ajjguil:input page
data remove storage ajjguil:input page

$data modify storage ajjguil:data temp.args.id set value "$(id)"
function ajjguil:gui/ported/open with storage ajjguil:data temp.args
