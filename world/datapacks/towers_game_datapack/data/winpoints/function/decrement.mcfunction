execute unless score TowersGame winPoints matches 0 run scoreboard players remove TowersGame winPoints 1

execute as @a at @s run playsound minecraft:entity.allay.item_thrown master @s ~ ~ ~ 0.7 2

execute if score TowersGame winPoints matches 0 run function winpoints:display/disabled
execute unless score TowersGame winPoints matches 0 run function winpoints:display/value

execute if score TowersGame winPoints matches 0 run function winpoints:interaction/position_disabled
execute unless score TowersGame winPoints matches 0 run function winpoints:interaction/position_value
