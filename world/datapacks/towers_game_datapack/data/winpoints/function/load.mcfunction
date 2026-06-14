scoreboard objectives add winPoints dummy "Points to Win"

execute unless score TowersGame winPoints matches 0.. run scoreboard players set TowersGame winPoints 0

execute if score TowersGame winPoints matches 0 run function winpoints:display/disabled
execute unless score TowersGame winPoints matches 0 run function winpoints:display/value

execute if score TowersGame winPoints matches 0 run function winpoints:interaction/position_disabled
execute unless score TowersGame winPoints matches 0 run function winpoints:interaction/position_value
