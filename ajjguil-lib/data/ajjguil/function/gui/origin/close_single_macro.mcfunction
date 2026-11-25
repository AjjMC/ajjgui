$clone ~ ~ ~ ~ ~ ~ ~$(bx) ~$(by) ~$(bz)
data remove block ~ ~ ~ Items
setblock ~ ~ ~ minecraft:air
$clone ~$(bx) ~$(by) ~$(bz) ~$(bx) ~$(by) ~$(bz) ~ ~ ~
$data remove block ~$(bx) ~$(by) ~$(bz) Items
$setblock ~$(bx) ~$(by) ~$(bz) minecraft:air
