fill 8 66 1024 8 65 1024 air
fill -8 66 1024 -8 65 1024 air
fill 0 65 1032 0 66 1032 air
execute as @e[type=minecraft:player,team=Blue] run scoreboard players set @s joinBlue 1
execute as @e[type=minecraft:player,team=Red] run scoreboard players set @s joinRed 1
execute as @a[scores={joinBlue=1..}] run function game:blue/join
execute as @a[scores={joinRed=1..}] run function game:red/join
tag @e[tag=RollTeams] remove Rolling
title @a[team=Red] subtitle [{text:"You are on the Red Team!",color:"red"}]
title @a[team=Blue] subtitle [{text:"You are on the Blue Team!",color:"blue"}]
title @a[team=Blue] title [{text:"Teams Rolled!",color:"#F5C400"}]
title @a[team=Red] title [{text:"Teams Rolled!",color:"#F5C400"}]