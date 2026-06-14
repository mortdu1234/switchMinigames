scoreboard players set game game_countdown 1
tellraw @a [{text:"Game starts in 10 seconds",color:"gold"}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
fill -16 65 992 -16 66 992 barrier
fill 16 65 992 16 66 992 barrier
schedule function game:main/countdown_5 5s