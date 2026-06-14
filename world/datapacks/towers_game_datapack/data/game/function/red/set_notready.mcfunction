tag @e[type=minecraft:block_display,tag=!notready_red,tag=redsquare] add notready_red
tag @e[type=minecraft:block_display,tag=ready_red,tag=redsquare] remove ready_red
scoreboard players set red team_ready 0
title @a subtitle [{text:"is NOT ready yet.",color:"red"}]
title @a title [{text:"RED TEAM",color:"dark_red"}]
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 0 1
execute as @e[type=minecraft:text_display,tag=ready_red] run data modify entity @s text set value [{text:"Red Team\nNot Ready",bold:true,color:"#F20A0A"}]
execute as @e[type=minecraft:block_display,tag=redsquare] run data modify entity @s block_state set value {Name:"minecraft:redstone_block"}
function game:main/stop_countdown