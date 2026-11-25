execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"placeholder",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/placeholder/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"button",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/button/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"counter",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/counter/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"switch",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/switch/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"radiobutton",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/radiobutton/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"itembin",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/itembin/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"itemslot",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/itemslot/main

execute store success score #bool ajjguil run clear @s *[minecraft:custom_data~{ajjguil:{widget:"scrollbutton",meta:{compiled:1b}}}] 0
execute if score #bool ajjguil matches 1 run return run function ajjguil:widget/scrollbutton/main
