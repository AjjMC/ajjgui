scoreboard players set #title_toggle example 1
function ajjguil:api/set_title_text {title:"Example GUI (Live Updated)"}
tellraw @s [{text:"[Example] ",color:"gold"},{text:"Updated GUI title via api/set_title_text!",color:"green"}]
