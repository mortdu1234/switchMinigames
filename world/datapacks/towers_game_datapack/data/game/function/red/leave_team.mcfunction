team join Neutral @s
tp @s 5 64 1024
effect clear @s minecraft:resistance
spawnpoint @s 5 64 1024
tellraw @a [{selector:"@s",bold:true,color:"green"},{text:" left Red.",bold:false,color:"green"}]
scoreboard players set @s leaveRed 0