execute as @e[x=0,y=65,z=1032.5,distance=..0.7,type=minecraft:player,team=Neutral] run scoreboard players set @s joinObs 1
execute as @a[scores={joinObs=1..}] run function game:spectator/join