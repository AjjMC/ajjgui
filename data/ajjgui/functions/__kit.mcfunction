clear @s *[minecraft:custom_data~{ajjgui:{kit:1b}}]

give @s minecraft:barrel[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name='{"text":"GUI Target Container","italic":false}',minecraft:lore=['{"text":"Use this as the target GUI container","italic":false}']]
give @s minecraft:chest[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name='{"text":"GUI Page Container","italic":false}',minecraft:lore=['{"text":"Insert the pages here","italic":false}','""','{"text":"Place this on top of the container you want","italic":false}','{"text":"to be using as a GUI and compile by running:","italic":false}','""','{"text":"/function ajjgui:__compile","color":"green","italic":false}','""','{"text":"Likewise, you can decompile a GUI by running:","italic":false}','""','{"text":"/function ajjgui:__decompile","color":"green","italic":false}']]
give @s minecraft:shulker_box[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name='{"text":"GUI Page","italic":false}',minecraft:lore=['{"text":"Insert the widgets here","italic":false}','""','{"text":"You can obtain some premade widgets by running:","italic":false}','""','{"text":"/function ajjgui:__widgetdemo/","color":"green","italic":false}']]

tellraw @a [{"text":"Gave GUI design and compilation kit to "},{"selector":"@s"}]