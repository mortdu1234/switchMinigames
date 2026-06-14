scoreboard players set game game_countdown 0

scoreboard players set game game_active 1
fill 8 65 1024 8 66 1024 barrier replace air
fill -8 66 1024 -8 65 1024 barrier replace air

clear @a
effect clear @a
xp set @a 0 levels
xp set @a 0 points

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.41 1
execute if score TowersGame timer matches 1.. run scoreboard players set paused timer 0
schedule function game:items/vault_key_spawner 600s
schedule function game:items/vault_auto_reset 30s
data merge block 0 192 1138 {server_data:{rewarded_players:[]}}

spawnpoint @a[team=Blue] -32 64 1024
tp @a[team=Blue] -32 64 1024
gamemode survival @a[team=Blue]
scoreboard players set @a[team=Blue] ingame 1

spawnpoint @a[team=Red] 32 64 1024
tp @a[team=Red] 32 64 1024
gamemode survival @a[team=Red]
scoreboard players set @a[team=Red] ingame 1

scoreboard players set red team_ready 0
scoreboard players set blue team_ready 0
tag @e[type=minecraft:block_display,tag=ready_red] add notready_red
tag @e[type=minecraft:block_display,tag=ready_red] remove ready_red
tag @e[type=minecraft:block_display,tag=ready_blue] add notready_blue
tag @e[type=minecraft:block_display,tag=ready_blue] remove ready_blue
execute as @e[type=minecraft:text_display,tag=ready_red] run data modify entity @s text set value [{text:"Red Team\nNot Ready",bold:true,color:"#F20A0A"}]
execute as @e[type=minecraft:text_display,tag=ready_blue] run data modify entity @s text set value [{text:"Blue Team\nNot Ready",bold:true,color:"#0A0AF2"}]
execute as @e[type=minecraft:block_display,tag=redsquare] run data modify entity @s block_state set value {Name:"minecraft:redstone_block"}
execute as @e[type=minecraft:block_display,tag=bluesquare] run data modify entity @s block_state set value {Name:"minecraft:redstone_block"}