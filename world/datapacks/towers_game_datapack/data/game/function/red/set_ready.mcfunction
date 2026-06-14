tag @e[type=minecraft:block_display,tag=!ready_red,tag=redsquare] add ready_red
tag @e[type=minecraft:block_display,tag=notready_red,tag=redsquare] remove notready_red
scoreboard players set red team_ready 1
title @a subtitle [{text:"is ready.",color:"red"}]
title @a title [{text:"RED TEAM",color:"dark_red"}]
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 2 1
execute as @e[type=minecraft:text_display,tag=ready_red] run data modify entity @s text set value [{text:"Red Team\nReady",bold:true,color:"#F20A0A"}]
execute as @e[type=minecraft:block_display,tag=redsquare] run data modify entity @s block_state set value {Name:"minecraft:emerald_block"}
function game:main/check_both_ready