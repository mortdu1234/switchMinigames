# BLUE TEAM
execute as @a[x=84,y=201,z=1152,distance=..2,team=Blue,scores={scoreBlue=0,health=1..}] run scoreboard players set @s scoreBlue 1
execute as @a[x=83,y=200,z=1151,dx=2,dy=0,dz=2,team=Blue,scores={scoreBlue=0,health=1..}] run scoreboard players set @s scoreBlue 1

# RED TEAM
execute as @a[x=-84,y=201,z=1152,distance=..2,team=Red,scores={scoreRed=0,health=1..}] run scoreboard players set @s scoreRed 1
execute as @a[x=-85,y=200,z=1151,dx=2,dy=0,dz=2,team=Red,scores={scoreRed=0,health=1..}] run scoreboard players set @s scoreRed 1

# POINTS
execute as @a[scores={scoreBlue=1}] run function game:gameplay/score_blue
execute as @a[scores={scoreRed=1}] run function game:gameplay/score_red