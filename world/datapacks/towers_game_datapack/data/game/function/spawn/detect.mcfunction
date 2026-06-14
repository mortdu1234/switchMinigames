execute as @a unless score @s spawned matches 0.. run scoreboard players set @s spawned 0

execute as @a[scores={spawned=0}] run function game:spawn/setup_player