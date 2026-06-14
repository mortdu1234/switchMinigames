execute if score game game_countdown matches 1 run title @a subtitle [{text:"3",color:"green"}]
execute if score game game_countdown matches 1 run title @a title [{text:" ",color:"green"}]
execute if score game game_countdown matches 1 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
execute if score game game_countdown matches 1 run schedule function game:main/countdown_2 1s