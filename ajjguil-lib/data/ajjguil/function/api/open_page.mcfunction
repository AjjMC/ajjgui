# Opens a registered GUI for the executing player (@s) on a specific page
# Args: {id:"...", page:0}
$data modify storage ajjguil:input page set value $(page)
$function ajjguil:api/open {id:"$(id)"}
