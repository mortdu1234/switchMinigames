tag @e[type=minecraft:block_display,tag=!ready_blue,tag=bluesquare] add ready_blue
tag @e[type=minecraft:block_display,tag=notready_blue,tag=bluesquare] remove notready_blue
scoreboard players set blue team_ready 1
title @a subtitle [{text:"is ready.",color:"blue"}]
title @a title [{text:"BLUE TEAM",color:"dark_blue"}]
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 2 1
execute as @e[type=minecraft:text_display,tag=ready_blue] run data modify entity @s text set value [{text:"Blue Team\nReady",bold:true,color:"#0A0AF2"}]
execute as @e[type=minecraft:block_display,tag=bluesquare] run data modify entity @s block_state set value {Name:"minecraft:emerald_block"}
function game:main/check_both_ready