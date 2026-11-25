# Inline macro registration: {id:"...", pages:[[...]]}
# Optional fields may be pre-populated in storage ajjguil:input options before calling
data remove storage ajjguil:input gui
execute if data storage ajjguil:input options run data modify storage ajjguil:input gui set from storage ajjguil:input options
$data modify storage ajjguil:input gui.id set value "$(id)"
$data modify storage ajjguil:input gui.pages set value $(pages)
data remove storage ajjguil:input options
function ajjguil:api/register
