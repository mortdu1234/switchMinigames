tag @e[tag=RollTeams] add Rolling
fill 0 65 1032 0 66 1032 minecraft:barrier
fill 8 66 1024 8 65 1024 minecraft:barrier
fill -8 66 1024 -8 65 1024 minecraft:barrier
team join Neutral @e[type=minecraft:player,team=!Neutral,gamemode=!spectator]
schedule function game:random_teams/animation_1 1t