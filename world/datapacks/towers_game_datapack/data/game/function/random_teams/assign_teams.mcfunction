team join Red @e[type=minecraft:player,sort=random,team=!Red,team=!Blue,gamemode=!spectator,limit=1]
team join Blue @e[type=minecraft:player,sort=random,team=!Red,team=!Blue,gamemode=!spectator,limit=1]
execute if entity @e[type=minecraft:player,team=!Red,team=!Blue,gamemode=!spectator] run schedule function game:random_teams/assign_teams 1t
execute unless entity @e[type=minecraft:player,team=!Red,team=!Blue,gamemode=!spectator] run function game:random_teams/finish_roll