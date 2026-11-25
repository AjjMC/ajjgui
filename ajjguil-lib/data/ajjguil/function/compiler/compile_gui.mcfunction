data modify storage ajjguil:data temp.compiled_pages set value []
data modify storage ajjguil:data temp.compile.work_pages set from storage ajjguil:data temp.compile.pages

execute unless data storage ajjguil:data temp.compile.placeholder run data modify storage ajjguil:data temp.compile.placeholder set value {id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:custom_data":{ajjguil:{widget:"placeholder"}},"minecraft:tooltip_display":{hide_tooltip:1b}}}
execute unless data storage ajjguil:data temp.compile.size run data modify storage ajjguil:data temp.compile.size set value 27

execute store result score #size ajjguil run data get storage ajjguil:data temp.compile.size
execute if data storage ajjguil:data temp.compile.work_pages[0] run function ajjguil:compiler/compile_gui_step
