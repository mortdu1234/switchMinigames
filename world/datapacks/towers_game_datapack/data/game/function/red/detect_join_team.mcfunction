execute if score game game_active matches 1 run return 0
execute as @e[x=8.5,y=65,z=1024.5,distance=..0.5,type=minecraft:player,gamemode=!spectator] run scoreboard players set @s joinRed 1
execute as @a[scores={joinRed=1..}] run function game:red/join_team