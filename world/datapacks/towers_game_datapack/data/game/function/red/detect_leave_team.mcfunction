execute if score game game_active matches 1 run return 0
execute as @e[x=16.5,y=65,z=992.5,distance=..0.5,type=minecraft:player,gamemode=!spectator] run scoreboard players set @s leaveRed 1
execute as @a[scores={leaveRed=1..}] run function game:red/leave_team