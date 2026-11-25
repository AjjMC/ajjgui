scoreboard players set #bonus_xp example 0
execute if data storage ajjguil:event {widget:{state:1}} run scoreboard players set #bonus_xp example 1
tellraw @s [{text:"[Example] ",color:"gold"},{text:"Bonus XP Mode -> ",color:"gray"},{storage:"ajjguil:event",nbt:"widget.state",color:"green"}]
