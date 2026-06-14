data merge entity @e[type=minecraft:text_display,tag=RollTeams,limit=1] {text:[{text:"                                 \n",bold:false,color:"#B51212"},{text:"Random Team Mode:",bold:true,color:"#B51212"},{text:"\n\n"},{text:"Roll Teams",bold:false,italic:false,underlined:true,color:"#F5C400"},{text:"\n"}]}
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 2
execute at @e[type=minecraft:interaction,tag=RollTeams] run particle dust_color_transition{from_color:[1.000,1.000,1.000],scale:1,to_color:[1.000,1.000,1.000]} ~ ~ ~.5 .5 .5 .5 2 50 normal
particle flash{color:[1.000,1.000,1.000,1.00]} 0 66 1024 7 2 7 1 50 normal
execute as @a at @s run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 normal @s
schedule function game:random_teams/assign_teams 1t