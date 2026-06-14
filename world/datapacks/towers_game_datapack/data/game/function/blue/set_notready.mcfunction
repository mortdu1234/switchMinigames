tag @e[type=minecraft:block_display,tag=!notready_blue,tag=bluesquare] add notready_blue
tag @e[type=minecraft:block_display,tag=ready_blue,tag=bluesquare] remove ready_blue
scoreboard players set blue team_ready 0
title @a subtitle [{text:"is NOT ready yet.",color:"blue"}]
title @a title [{text:"BLUE TEAM",color:"dark_blue"}]
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 0 1
execute as @e[type=minecraft:text_display,tag=ready_blue] run data modify entity @s text set value [{text:"Blue Team\nNot Ready",bold:true,color:"#0A0AF2"}]
execute as @e[type=minecraft:block_display,tag=bluesquare] run data modify entity @s block_state set value {Name:"minecraft:redstone_block"}
function game:main/stop_countdown