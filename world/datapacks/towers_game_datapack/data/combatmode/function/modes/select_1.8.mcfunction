function combatmode:display/1.8

scoreboard players set CombatMode combatmode 18
execute as @a run attribute @s minecraft:attack_speed base set 100.0

execute as @a at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 100 0.7
tellraw @a [{text:"[Combat Mode] ",color:"gold",bold:true},{text:"1.8 Combat Mode activated!",color:"yellow"}]
