scoreboard players set #bool test 0
execute on target store result score #bool test if entity @s[tag=this]

execute if score #bool test matches 1 at @s if entity @s[tag=red] run function game:red/check_state
execute if score #bool test matches 1 at @s if entity @s[tag=blue] run function game:blue/check_state
execute if score #bool test matches 1 at @s run execute if entity @s[tag=1.8_Combat] run function combatmode:modes/select_1.8
execute if score #bool test matches 1 at @s run execute if entity @s[tag=1.9_Combat] run function combatmode:modes/select_1.9
execute if score #bool test matches 1 at @s if entity @s[tag=RollTeams] unless entity @e[tag=Rolling] run function game:random_teams/start_roll
execute if score #bool test matches 1 at @s run execute if entity @s[tag=winPoints-] run function winpoints:decrement
execute if score #bool test matches 1 at @s run execute if entity @s[tag=winPoints+] run function winpoints:increment
execute if score #bool test matches 1 at @s run execute if entity @s[tag=timer-] run function timer:decrement
execute if score #bool test matches 1 at @s run execute if entity @s[tag=timer+] run function timer:increment

execute if score #bool test matches 1 run data remove entity @s interaction