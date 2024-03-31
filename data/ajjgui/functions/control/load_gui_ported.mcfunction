$data modify entity @s data.gui set from storage ajjgui:data database[{player:$(player),id:$(id)}].gui
$data modify entity @s data.meta.player set from storage ajjgui:data database[{player:$(player),id:$(id)}].player
$data modify entity @s data.meta.id set from storage ajjgui:data database[{player:$(player),id:$(id)}].id

$execute on vehicle run data modify entity @s CustomName set from storage ajjgui:data database[{player:$(player),id:$(id)}].custom_name