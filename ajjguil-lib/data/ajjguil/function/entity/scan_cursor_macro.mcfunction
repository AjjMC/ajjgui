$execute store success score #hit ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{meta:{compiled:1b,slot:$(slot)b}}}] 0
execute if score #hit ajjguil matches 1 run scoreboard players operation @s ajjguil.slot = #scan ajjguil
