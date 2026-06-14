team join Red @s
tp @s 19 64 992
effect give @s minecraft:resistance infinite 127 true
spawnpoint @s 19 64 992
tellraw @a [{selector:"@s",bold:true,color:"red"},{text:" joined Red.",bold:false,color:"red"}]
scoreboard players set @s joinRed 0