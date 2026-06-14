execute if score paused timer matches 0 run scoreboard players remove bossbartime timer 1
execute store result bossbar minecraft:bossbar value run scoreboard players get bossbartime timer
execute if score paused timer matches 0 run scoreboard players add tic timer 1
execute if score sec timer matches ..0 if score min timer matches ..0 if score h timer matches ..0 run scoreboard players set paused timer 1

execute if score paused timer matches 0 run execute if score tic timer matches 20.. run scoreboard players remove sec timer 1
execute if score paused timer matches 0 run execute if score tic timer matches 20.. run scoreboard players set tic timer 0

execute if score paused timer matches 0 run execute if score sec timer matches ..-1 run scoreboard players remove min timer 1
execute if score paused timer matches 0 run execute if score sec timer matches ..-1 run scoreboard players set sec timer 59

execute if score paused timer matches 0 run execute if score min timer matches ..-1 run scoreboard players remove h timer 1
execute if score paused timer matches 0 run execute if score min timer matches ..-1 run scoreboard players set min timer 59

execute if score paused timer matches 1 if score res settings matches 1 run effect give @a minecraft:resistance 1 200 true
execute if score paused timer matches 1 if score blind settings matches 1 run effect give @a minecraft:blindness 3 200 true
execute if score paused timer matches 1 if score freeze settings matches 1 run effect give @a minecraft:jump_boost 1 200 true
execute if score paused timer matches 1 if score freeze settings matches 1 as @a run attribute @s minecraft:movement_speed base set 0
execute if score paused timer matches 1 if score freeze settings matches 0 as @a run attribute @s minecraft:movement_speed base set 0.1


#TRIGGER
scoreboard players enable @a resume
scoreboard players enable @a pause
scoreboard players enable @a help

execute as @a[scores={resume=1..}] if entity @a[scores={resume=1..}] at @s run function timer:resume
execute as @a[scores={resume=1..}] if entity @a[scores={resume=1..}] at @s run scoreboard players set @s resume 0
execute as @a[scores={pause=1..}] if entity @a[scores={pause=1..}] at @s run function timer:pause
execute as @a[scores={pause=1..}] if entity @a[scores={pause=1..}] at @s run scoreboard players set @s pause 0
execute as @a[scores={help=1..}] if entity @a[scores={help=1..}] at @s run function timer:help
execute as @a[scores={help=1..}] if entity @a[scores={help=1..}] at @s run scoreboard players set @s help 0
#TRIGGER


#DESIGNS
execute if score design settings matches 1 run function timer:designs/basic
execute if score design settings matches 2 run function timer:designs/basic2
execute if score design settings matches 3 run function timer:designs/galaxy
execute if score design settings matches 4 run function timer:designs/toxic
#DESINGS
