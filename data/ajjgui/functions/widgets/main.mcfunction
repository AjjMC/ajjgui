execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"placeholder",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/placeholder/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"button",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/button/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"counter",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/counter/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"switch",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/switch/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"radiobutton",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/radiobutton/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"itembin",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/itembin/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"itemslot",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/itemslot/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"scrollbutton",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widgets/scrollbutton/main