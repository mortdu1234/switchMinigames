# ADD POINTS
scoreboard players add Red teamPoints 1

# TP PLAYER
tp @s 84 192 1152 90 0

# EFFECTS
execute as @a[team=Blue] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute as @a[team=Red] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1
execute as @a[team=Blue] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute as @a[team=Red] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.498 1

tellraw @a [{selector:"@s",bold:true,color:"red"},{text:" scored a point for Red",color:"yellow"}]

# ADD PLAYER POINTS
scoreboard players add @s playerPoints 1

# RESET SCORE PLAYER
scoreboard players set @s scoreRed 0

# VICTORY CHECK
execute if score Red teamPoints >= TowersGame winPoints run function game:main/victory_red