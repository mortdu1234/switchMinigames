# MVP
function game:gameplay/calculate_mvp

# STOP TIMER
execute if score TowersGame timer matches 1.. run scoreboard players set paused timer 1

# EFFECTS
title @a subtitle [{text:"IT'S A DRAW",color:"yellow",bold:true}]
title @a times 1s 5s 1s
title @a title [{text:"TIME'S UP!",color:"gold",bold:true}]

execute as @a at @s run playsound minecraft:item.goat_horn.sound.6 master @s ~ ~ ~ 100 2
execute as @a at @s run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16755200,16777215],fade_colors:[I;16755200]}]}}}}

scoreboard players set #rotation scoreboard_timer 0
schedule function game:general/scoreboard_rotation 4s

gamemode spectator @a

# END MATCH
scoreboard players set game game_active 0
schedule function game:main/end_game 6s