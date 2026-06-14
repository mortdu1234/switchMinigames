execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{ColdDetector:1}}}}] run tag @s add ColdDetector
execute as @e[type=minecraft:snowball,tag=ColdDetector,tag=!Detected] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["ColdDetector"],Marker:1b,Invisible:1b}
execute as @e[type=minecraft:snowball,tag=ColdDetector,tag=!Detected] run tag @s add Detected
execute as @e[type=minecraft:snowball,tag=ColdDetector] at @s run ride @e[type=minecraft:armor_stand,tag=ColdDetector,sort=nearest,limit=1] mount @s
execute as @e[type=minecraft:armor_stand,tag=ColdDetector] at @s unless entity @e[type=minecraft:snowball,tag=Detected,distance=..0.5] run function game:items/cold_detector_activate