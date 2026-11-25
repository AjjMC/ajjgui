data modify storage ajjguil:data temp.inspect set value {valid:0b,size:27,is_double:0b,origin_dx:0,origin_dz:0,pair_dx:0,pair_dz:0,container:"unknown"}

execute if block ~ ~ ~ #ajjguil:double_capable[type=single] run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:27,is_double:0b,container:"chest"}
execute if block ~ ~ ~ #minecraft:copper_chests[type=single] run data modify storage ajjguil:data temp.inspect.container set value "copper_chest"
execute if block ~ ~ ~ minecraft:trapped_chest[type=single] run data modify storage ajjguil:data temp.inspect.container set value "trapped_chest"

execute if block ~ ~ ~ #ajjguil:double_capable[type=right] run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:54,is_double:1b,origin_dx:0,origin_dz:0,container:"double_chest"}
execute if block ~ ~ ~ #ajjguil:double_capable[type=right,facing=north] run data modify storage ajjguil:data temp.inspect merge value {pair_dx:-1,pair_dz:0}
execute if block ~ ~ ~ #ajjguil:double_capable[type=right,facing=south] run data modify storage ajjguil:data temp.inspect merge value {pair_dx:1,pair_dz:0}
execute if block ~ ~ ~ #ajjguil:double_capable[type=right,facing=east] run data modify storage ajjguil:data temp.inspect merge value {pair_dx:0,pair_dz:-1}
execute if block ~ ~ ~ #ajjguil:double_capable[type=right,facing=west] run data modify storage ajjguil:data temp.inspect merge value {pair_dx:0,pair_dz:1}

execute if block ~ ~ ~ #ajjguil:double_capable[type=left] run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:54,is_double:1b,container:"double_chest"}
execute if block ~ ~ ~ #ajjguil:double_capable[type=left,facing=north] run data modify storage ajjguil:data temp.inspect merge value {origin_dx:1,origin_dz:0,pair_dx:-1,pair_dz:0}
execute if block ~ ~ ~ #ajjguil:double_capable[type=left,facing=south] run data modify storage ajjguil:data temp.inspect merge value {origin_dx:-1,origin_dz:0,pair_dx:1,pair_dz:0}
execute if block ~ ~ ~ #ajjguil:double_capable[type=left,facing=east] run data modify storage ajjguil:data temp.inspect merge value {origin_dx:0,origin_dz:1,pair_dx:0,pair_dz:-1}
execute if block ~ ~ ~ #ajjguil:double_capable[type=left,facing=west] run data modify storage ajjguil:data temp.inspect merge value {origin_dx:0,origin_dz:-1,pair_dx:0,pair_dz:1}

execute if block ~ ~ ~ minecraft:barrel run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:27,is_double:0b,container:"barrel"}
execute if block ~ ~ ~ #minecraft:shulker_boxes run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:27,is_double:0b,container:"shulker_box"}

execute if block ~ ~ ~ minecraft:dispenser run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:9,is_double:0b,container:"dispenser"}
execute if block ~ ~ ~ minecraft:dropper run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:9,is_double:0b,container:"dropper"}
execute if block ~ ~ ~ minecraft:crafter run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:9,is_double:0b,container:"crafter"}

execute if block ~ ~ ~ minecraft:hopper run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:5,is_double:0b,container:"hopper"}
execute if block ~ ~ ~ minecraft:brewing_stand run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:5,is_double:0b,container:"brewing_stand"}

execute if block ~ ~ ~ minecraft:furnace run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:3,is_double:0b,container:"furnace"}
execute if block ~ ~ ~ minecraft:blast_furnace run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:3,is_double:0b,container:"blast_furnace"}
execute if block ~ ~ ~ minecraft:smoker run data modify storage ajjguil:data temp.inspect merge value {valid:1b,size:3,is_double:0b,container:"smoker"}
