effect give @a[distance=..20] minecraft:glowing 30 0
effect give @a[distance=..20] minecraft:blindness 1 0 true

playsound minecraft:entity.allay.death master @a[distance=..20] ~ ~ ~ 5 2
particle minecraft:glow ~ ~ ~ 2 2 2 1 100 force @a
particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 9 0 9 1 30 force @a

kill @s