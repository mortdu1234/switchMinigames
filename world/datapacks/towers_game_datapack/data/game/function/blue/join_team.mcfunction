team join Blue @s
tp @s -19 64 992
effect give @s minecraft:resistance infinite 127 true
spawnpoint @s -19 64 992
tellraw @a [{selector:"@s",bold:true,color:"blue"},{text:" joined Blue.",bold:false,color:"blue"}]
scoreboard players set @s joinBlue 0