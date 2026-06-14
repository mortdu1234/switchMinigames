scoreboard objectives add timer dummy "Timer Setting"
scoreboard objectives add showTime dummy "Show Time"

execute unless score TowersGame timer matches 0.. run scoreboard players set TowersGame timer 0
execute unless score TowersGame showTime matches 0.. run scoreboard players set TowersGame showTime 0
