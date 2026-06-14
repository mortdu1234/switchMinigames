xp add @a[scores={tempKills=1..}] 4 levels
execute as @a[scores={tempKills=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1
scoreboard players remove @a[scores={tempKills=1..}] tempKills 1