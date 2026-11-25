execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"placeholder",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/placeholder/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"button",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/button/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"counter",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/counter/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"switch",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/switch/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"radiobutton",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/radiobutton/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"itembin",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/itembin/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"itemslot",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/itemslot/main

execute store success score #bool ajjgui run clear @s *[minecraft:custom_data~{ajjgui:{widget:"scrollbutton",meta:{compiled:1b}}}]
execute if score #bool ajjgui matches 1 run function ajjgui:widget/scrollbutton/main