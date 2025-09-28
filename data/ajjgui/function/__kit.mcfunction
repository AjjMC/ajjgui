clear @s *[minecraft:custom_data~{ajjgui:{kit:1b}}]

give @s minecraft:barrel[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name={text:"GUI",italic:0b},minecraft:lore=[{text:"Use this as the GUI.",color:"gray",italic:0b}]]
give @s minecraft:chest[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name={text:"Page List",italic:0b},minecraft:lore=[{text:"Insert the pages here.",color:"gray",italic:0b},{text:""},{text:"Place this above the GUI container",color:"gray",italic:0b},{text:"and compile it with:",color:"gray",italic:0b},{text:""},{text:"/function ajjgui:__compile",color:"green",italic:0b},{text:""},{text:"Decompile the GUI with:",color:"gray",italic:0b},{text:""},{text:"/function ajjgui:__decompile",color:"green",italic:0b}]]
give @s minecraft:shulker_box[minecraft:custom_data={ajjgui:{kit:1b}},minecraft:custom_name={text:"Page",italic:0b},minecraft:lore=[{text:"Insert the widgets here.",color:"gray",italic:0b},{text:""},{text:"Obtain some premade demo widgets with:",color:"gray",italic:0b},{text:""},{text:"/function ajjgui:__widget/",color:"green",italic:0b}]]

tellraw @s {text:"Gave GUI design and compilation kit"}