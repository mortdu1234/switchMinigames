function combatmode:display/1.9

scoreboard players set CombatMode combatmode 19
execute as @a run attribute @s minecraft:attack_speed base set 4.0

execute as @a at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 100 0.6
tellraw @a [{text:"[Combat Mode] ",color:"gold",bold:true},{text:"1.9 Combat Mode activated!",color:"yellow"}]
