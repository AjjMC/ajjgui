$execute if block ~ ~1 ~ minecraft:air if block ~$(dx) ~1 ~$(dz) minecraft:air run return run function ajjguil:gui/origin/close_double_macro {dx:$(dx),dy:1,dz:$(dz)}
$execute if block ~ ~2 ~ minecraft:air if block ~$(dx) ~2 ~$(dz) minecraft:air run return run function ajjguil:gui/origin/close_double_macro {dx:$(dx),dy:2,dz:$(dz)}
$execute if block ~ ~-1 ~ minecraft:air if block ~$(dx) ~-1 ~$(dz) minecraft:air run return run function ajjguil:gui/origin/close_double_macro {dx:$(dx),dy:-1,dz:$(dz)}
