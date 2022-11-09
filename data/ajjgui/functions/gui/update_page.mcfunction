execute if score @s ajjgui.slot matches 0 run data modify storage ajjgui:gui Page[{Slot:0b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 1 run data modify storage ajjgui:gui Page[{Slot:1b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 2 run data modify storage ajjgui:gui Page[{Slot:2b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 3 run data modify storage ajjgui:gui Page[{Slot:3b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 4 run data modify storage ajjgui:gui Page[{Slot:4b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 5 run data modify storage ajjgui:gui Page[{Slot:5b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 6 run data modify storage ajjgui:gui Page[{Slot:6b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 7 run data modify storage ajjgui:gui Page[{Slot:7b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 8 run data modify storage ajjgui:gui Page[{Slot:8b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 9 run data modify storage ajjgui:gui Page[{Slot:9b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 10 run data modify storage ajjgui:gui Page[{Slot:10b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 11 run data modify storage ajjgui:gui Page[{Slot:11b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 12 run data modify storage ajjgui:gui Page[{Slot:12b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 13 run data modify storage ajjgui:gui Page[{Slot:13b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 14 run data modify storage ajjgui:gui Page[{Slot:14b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 15 run data modify storage ajjgui:gui Page[{Slot:15b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 16 run data modify storage ajjgui:gui Page[{Slot:16b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 17 run data modify storage ajjgui:gui Page[{Slot:17b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 18 run data modify storage ajjgui:gui Page[{Slot:18b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 19 run data modify storage ajjgui:gui Page[{Slot:19b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 20 run data modify storage ajjgui:gui Page[{Slot:20b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 21 run data modify storage ajjgui:gui Page[{Slot:21b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 22 run data modify storage ajjgui:gui Page[{Slot:22b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 23 run data modify storage ajjgui:gui Page[{Slot:23b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 24 run data modify storage ajjgui:gui Page[{Slot:24b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 25 run data modify storage ajjgui:gui Page[{Slot:25b}] set from storage ajjgui:gui Widget
execute if score @s ajjgui.slot matches 26 run data modify storage ajjgui:gui Page[{Slot:26b}] set from storage ajjgui:gui Widget

execute as @e[type=minecraft:armor_stand,tag=ajjgui.gui,tag=ajjgui.active_gui] run function ajjgui:gui/save_page

execute if data storage ajjgui:gui Widget.tag.ajjgui.Page as @e[type=minecraft:armor_stand,tag=ajjgui.gui,tag=ajjgui.active_gui,limit=1] run function ajjgui:gui/change_page