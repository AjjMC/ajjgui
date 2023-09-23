execute if score @e[sort=nearest,limit=1] ajjgui.page matches 0 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[0]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 1 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[1]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 2 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[2]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 3 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[3]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 4 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[4]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 5 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[5]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 6 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[6]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 7 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[7]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 8 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[8]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 9 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[9]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 10 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[10]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 11 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[11]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 12 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[12]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 13 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[13]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 14 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[14]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 15 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[15]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 16 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[16]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 17 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[17]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 18 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[18]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 19 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[19]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 20 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[20]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 21 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[21]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 22 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[22]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 23 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[23]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 24 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[24]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 25 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[25]
execute if score @e[sort=nearest,limit=1] ajjgui.page matches 26 run data modify storage ajjgui:gui Temp set from entity @e[sort=nearest,limit=1] data.GUI[26]

data modify storage ajjgui:gui Temp1 set from block ~ ~ ~ Items

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:0b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 0 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:1b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 1 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:2b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 2 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:3b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 3 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:4b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 4 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:5b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 5 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:6b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 6 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:7b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 7 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:8b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 8 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:9b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 9 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:10b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 10 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:11b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 11 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:12b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 12 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:13b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 13 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:14b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 14 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:15b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 15 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:16b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 16 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:17b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 17 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:18b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 18 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:19b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 19 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:20b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 20 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:21b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 21 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:22b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 22 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:23b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 23 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:24b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 24 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:25b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 25 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui unless data storage ajjgui:gui Temp1[{Slot:26b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 26 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:0b}] set from storage ajjgui:gui Temp1[{Slot:0b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 0 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:1b}] set from storage ajjgui:gui Temp1[{Slot:1b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 1 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:2b}] set from storage ajjgui:gui Temp1[{Slot:2b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 2 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:3b}] set from storage ajjgui:gui Temp1[{Slot:3b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 3 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:4b}] set from storage ajjgui:gui Temp1[{Slot:4b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 4 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:5b}] set from storage ajjgui:gui Temp1[{Slot:5b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 5 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:6b}] set from storage ajjgui:gui Temp1[{Slot:6b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 6 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:7b}] set from storage ajjgui:gui Temp1[{Slot:7b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 7 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:8b}] set from storage ajjgui:gui Temp1[{Slot:8b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 8 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:9b}] set from storage ajjgui:gui Temp1[{Slot:9b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 9 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:10b}] set from storage ajjgui:gui Temp1[{Slot:10b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 10 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:11b}] set from storage ajjgui:gui Temp1[{Slot:11b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 11 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:12b}] set from storage ajjgui:gui Temp1[{Slot:12b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 12 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:13b}] set from storage ajjgui:gui Temp1[{Slot:13b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 13 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:14b}] set from storage ajjgui:gui Temp1[{Slot:14b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 14 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:15b}] set from storage ajjgui:gui Temp1[{Slot:15b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 15 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:16b}] set from storage ajjgui:gui Temp1[{Slot:16b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 16 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:17b}] set from storage ajjgui:gui Temp1[{Slot:17b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 17 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:18b}] set from storage ajjgui:gui Temp1[{Slot:18b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 18 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:19b}] set from storage ajjgui:gui Temp1[{Slot:19b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 19 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:20b}] set from storage ajjgui:gui Temp1[{Slot:20b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 20 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:21b}] set from storage ajjgui:gui Temp1[{Slot:21b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 21 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:22b}] set from storage ajjgui:gui Temp1[{Slot:22b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 22 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:23b}] set from storage ajjgui:gui Temp1[{Slot:23b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 23 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:24b}] set from storage ajjgui:gui Temp1[{Slot:24b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 24 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:25b}] set from storage ajjgui:gui Temp1[{Slot:25b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 25 run tag @e[sort=nearest,limit=1] add ajjgui.temp

execute store success score #temp ajjgui run data modify storage ajjgui:gui Temp[{Slot:26b}] set from storage ajjgui:gui Temp1[{Slot:26b}]
execute if score #temp ajjgui matches 1 if score @s[distance=..8] ajjgui.slot matches 26 run tag @e[sort=nearest,limit=1] add ajjgui.temp