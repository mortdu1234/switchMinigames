scoreboard objectives add combatmode dummy "Combat Mode"

execute unless score CombatMode combatmode matches 0.. run scoreboard players set CombatMode combatmode 19

execute if score CombatMode combatmode matches 18 run function combatmode:display/1.8
execute if score CombatMode combatmode matches 19 run function combatmode:display/1.9
