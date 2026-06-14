execute if score game game_countdown matches 1 run title @a actionbar [{text:"Countdown stopped",color:"red"}]
execute if score game game_countdown matches 1 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.75 1
scoreboard players set game game_countdown 0
fill -16 65 992 -16 66 992 air
fill 16 65 992 16 66 992 air
schedule clear game:main/countdown_5
schedule clear game:main/countdown_4
schedule clear game:main/countdown_3
schedule clear game:main/countdown_2
schedule clear game:main/countdown_1
schedule clear game:main/start_game