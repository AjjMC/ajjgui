$clone ~ ~ ~ ~ ~ ~ ~ ~$(dy) ~
$clone ~$(dx) ~ ~$(dz) ~$(dx) ~ ~$(dz) ~$(dx) ~$(dy) ~$(dz)
data remove block ~ ~ ~ Items
$data remove block ~$(dx) ~ ~$(dz) Items
setblock ~ ~ ~ minecraft:air
$setblock ~$(dx) ~ ~$(dz) minecraft:air
$clone ~ ~$(dy) ~ ~ ~$(dy) ~ ~ ~ ~
$clone ~$(dx) ~$(dy) ~$(dz) ~$(dx) ~$(dy) ~$(dz) ~$(dx) ~ ~$(dz)
$data remove block ~ ~$(dy) ~ Items
$data remove block ~$(dx) ~$(dy) ~$(dz) Items
$setblock ~ ~$(dy) ~ minecraft:air
$setblock ~$(dx) ~$(dy) ~$(dz) minecraft:air
