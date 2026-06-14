# ADD POINTS
scoreboard players add Blue teamPoints 1

# TP PLAYER
tp @s -84 192 1152 270 0

# EFFECTS
execute as @a[team=Red] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute as @a[team=Blue] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1
execute as @a[team=Red] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute as @a[team=Blue] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.498 1

tellraw @a [{selector:"@s",bold:true,color:"blue"},{text:" scored a point for Blue",color:"yellow"}]

# ADD PLAYER POINTS
scoreboard players add @s playerPoints 1

# RESET SCORE PLAYER
scoreboard players set @s scoreBlue 0

# VICTORY CHECK
execute if score Blue teamPoints >= TowersGame winPoints run function game:main/victory_blue