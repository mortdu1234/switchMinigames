data merge entity @e[type=minecraft:text_display,tag=RollTeams,limit=1] {text:[{text:"                                 \n",bold:false,color:"#B51212"},{text:"Random Team Mode:",bold:true,color:"#B51212"},{text:"\n\n"},{text:"Roll Teams",bold:true,italic:false,underlined:true,color:"#f58400"},{text:"\n"}]}
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1.5
execute at @e[type=minecraft:interaction,tag=RollTeams] run particle dust_color_transition{from_color:[0.961,0.518,0.000],scale:1,to_color:[0.961,0.000,0.500]} ~ ~ ~.5 .5 .5 .5 2 50 normal
particle dust_color_transition{from_color:[1.000,0.098,0.098],scale:2,to_color:[0.000,0.165,1.000]} 0 66 1024 7 2 7 0 100 normal
schedule function game:random_teams/animation_7 7t