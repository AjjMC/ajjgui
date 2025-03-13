clear @s *[minecraft:custom_data~{ajjgui:{kit:1b}}]

give @s minecraft:barrel[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name={text:"GUI Target Container",italic:0b},minecraft:lore=[{text:"Use this as the target GUI container",italic:0b}]]
give @s minecraft:chest[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name={text:"GUI Page Container",italic:0b},minecraft:lore=[{text:"Insert the pages here",italic:0b},{text:""},{text:"Place this on top of the container you want",italic:0b},{text:"to be using as a GUI and compile by running:",italic:0b},{text:""},{text:"/function ajjgui:__compile",color:"green",italic:0b},{text:""},{text:"Likewise, you can decompile a GUI by running:",italic:0b},{text:""},{text:"/function ajjgui:__decompile",color:"green",italic:0b}]]
give @s minecraft:shulker_box[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name={text:"GUI Page",italic:0b},minecraft:lore=[{text:"Insert the widgets here",italic:0b},{text:""},{text:"You can obtain some premade widgets by running:",italic:0b},{text:""},{text:"/function ajjgui:__widgetdemo/",color:"green",italic:0b}]]

tellraw @s {text:"Gave GUI design and compilation kit"}