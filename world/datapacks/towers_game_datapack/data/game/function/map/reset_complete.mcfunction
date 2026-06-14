title @a title [{text:"Map Reset Complete!",color:"green",bold:true}]
title @a subtitle [{text:"Ready to play!",color:"yellow"}]
tellraw @a [{text:"✓ Map has been successfully reset!",color:"green",bold:true}]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

summon minecraft:item 0.5 192 1166.5 {NoGravity:1b,Motion:[0.0,0.0,0.0],Health:500s,Invulnerable:1b,fall_distance:0.0,Air:300s,OnGround:0b,PortalCooldown:0,Rotation:[0.0,0.0],Item:{count:1,id:"minecraft:trial_key",components:{"minecraft:item_name":{color:"#FFAB03",shadow_color:-5876992,text:"Towers Vault Key"}}},PickupDelay:0s,Fire:0s,Age:-32768s,Tags:["vault_key"]}

summon minecraft:horse 0.81 197.00 1152.51 {Brain: {memories: {}}, HurtByTimestamp: 0, Tame: 1b, Invulnerable: 0b, FallFlying: 0b, ForcedAge: 0, PortalCooldown: 0, AbsorptionAmount: 0.0f, Bred: 0b, InLove: 0, EatingHaystack: 0b, DeathTime: 0s, PersistenceRequired: 0b, Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 53.0f, equipment: {saddle: {count: 1, id: "minecraft:saddle"}, body: {count: 1, id: "minecraft:golden_horse_armor"}}, LeftHanded: 0b, fall_distance: 0.0d, Air: 300s, OnGround: 1b, Rotation: [301.4784f, 0.0f], drop_chances: {saddle: 2.0f, body: 2.0f, offhand: 0.0f}, Variant: 4, Fire: 0s, Temper: 0, CanPickUpLoot: 0b, attributes: [{id: "minecraft:armor", base: 0.0d}, {id: "minecraft:armor_toughness", base: 0.0d}, {id: "minecraft:movement_speed", base: 0.22499999403953552d}], HurtTime: 0s}

summon minecraft:item 0.5 204.5 1152.5 {NoGravity:1b,Motion:[0.0,0.0,0.0],Invulnerable:0b,fall_distance:0.0,Air:0s,OnGround:1b,PortalCooldown:0,Rotation:[0.0,0.0],Item:{count:1,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:invisibility",custom_effects:[{duration:400,show_icon:1b,id:"minecraft:invisibility"}]}}},PickupDelay:0s,Fire:0s,Age:-32768s}

scoreboard players set @a spawned 0
clear @a
xp set @a 0 levels
xp set @a 0 points
gamemode adventure @a

scoreboard players set Blue teamPoints 0
scoreboard players set Red teamPoints 0
scoreboard players set Red teamKills 0
scoreboard players set Blue teamKills 0

execute if score TowersGame timer matches 0 run function timer:display/none
execute if score TowersGame timer matches 1 run function timer:display/10m
execute if score TowersGame timer matches 2 run function timer:display/20m
execute if score TowersGame timer matches 3 run function timer:display/30m
execute if score TowersGame timer matches 4 run function timer:display/40m
execute if score TowersGame timer matches 5 run function timer:display/50m
execute if score TowersGame timer matches 6 run function timer:display/60m
execute if score TowersGame timer matches 7 run function timer:display/70m
execute if score TowersGame timer matches 8 run function timer:display/80m
execute if score TowersGame timer matches 9 run function timer:display/90m

execute if score TowersGame timer matches 0 run function timer:presets/notimer
execute if score TowersGame timer matches 1 run function timer:presets/10m
execute if score TowersGame timer matches 2 run function timer:presets/20m
execute if score TowersGame timer matches 3 run function timer:presets/30m
execute if score TowersGame timer matches 4 run function timer:presets/40m
execute if score TowersGame timer matches 5 run function timer:presets/50m
execute if score TowersGame timer matches 6 run function timer:presets/60m
execute if score TowersGame timer matches 7 run function timer:presets/70m
execute if score TowersGame timer matches 8 run function timer:presets/80m
execute if score TowersGame timer matches 9 run function timer:presets/90m

execute if score TowersGame timer matches 0 run scoreboard players set TowersGame showTime 0
execute if score TowersGame timer matches 0 run title @a actionbar " "

execute if score TowersGame timer matches 1..9 run scoreboard players set TowersGame showTime 1

execute in minecraft:overworld run tp @a 0.50 64.00 1024.50 -180.00 0.00

scoreboard players set game game_active 0
fill 8 65 1024 8 66 1024 air replace minecraft:barrier
fill -8 66 1024 -8 65 1024 air replace minecraft:barrier
fill -16 65 992 -16 66 992 air replace minecraft:barrier
fill 16 65 992 16 66 992 air replace minecraft:barrier