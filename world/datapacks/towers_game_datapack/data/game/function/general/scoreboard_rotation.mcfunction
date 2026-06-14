scoreboard players add #rotation scoreboard_timer 1

execute if score #rotation scoreboard_timer matches 4.. run scoreboard players set #rotation scoreboard_timer 1

execute if score #rotation scoreboard_timer matches 1 run scoreboard objectives setdisplay sidebar deaths
execute if score #rotation scoreboard_timer matches 2 run scoreboard objectives setdisplay sidebar playerPoints
execute if score #rotation scoreboard_timer matches 3 run scoreboard objectives setdisplay sidebar kills

schedule function game:general/scoreboard_rotation 4s