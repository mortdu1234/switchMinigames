execute as @a[scores={kills=1..}] run scoreboard players operation @s max_kills = @s kills

execute store result score count max_kills if entity @a[scores={max_kills=0..}]

execute if score count max_kills matches 2.. run function game:gameplay/mvp_elimination