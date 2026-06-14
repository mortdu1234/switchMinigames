execute if score game game_active matches 1 run return 0
execute as @e[x=-7.5,y=65,z=1024.5,distance=..0.5,type=minecraft:player,gamemode=!spectator] run scoreboard players set @s joinBlue 1
execute as @a[scores={joinBlue=1..}] run function game:blue/join_team