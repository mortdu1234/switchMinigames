schedule clear game:items/vault_key_spawner
schedule clear game:items/vault_auto_reset

scoreboard players reset @a max_kills

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

tellraw @a [{text:"Game ended!",color:"green"}]

# RESET MAP
tellraw @a {"click_event":{"action":"run_command","command":"function game:map/reset_start"},"color":"#FFBD4A","shadow_color":-8903911,"text":"Click here to reset the game"}