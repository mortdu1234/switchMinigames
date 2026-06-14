execute if score #section map_reset matches 0 run clone -13 0 36 37 268 60 -103 0 1122 replace
execute if score #section map_reset matches 0 run tellraw @a [{text:"Section 1/8",color:"gray"}]

execute if score #section map_reset matches 1 run clone 37 0 36 87 268 60 -53 0 1122 replace
execute if score #section map_reset matches 1 run tellraw @a [{text:"Section 2/8",color:"gray"}]

execute if score #section map_reset matches 2 run clone 87 0 36 137 268 60 -3 0 1122 replace
execute if score #section map_reset matches 2 run tellraw @a [{text:"Section 3/8",color:"gray"}]

execute if score #section map_reset matches 3 run clone 137 0 36 194 268 60 47 0 1122 replace
execute if score #section map_reset matches 3 run tellraw @a [{text:"Section 4/8",color:"gray"}]

execute if score #section map_reset matches 4 run clone -13 0 60 37 268 96 -103 0 1146 replace
execute if score #section map_reset matches 4 run tellraw @a [{text:"Section 5/8",color:"gray"}]

execute if score #section map_reset matches 5 run clone 37 0 60 87 268 96 -53 0 1146 replace
execute if score #section map_reset matches 5 run tellraw @a [{text:"Section 6/8",color:"gray"}]

execute if score #section map_reset matches 6 run clone 87 0 60 137 268 96 -3 0 1146 replace
execute if score #section map_reset matches 6 run tellraw @a [{text:"Section 7/8",color:"gray"}]

execute if score #section map_reset matches 7 run clone 137 0 60 194 268 96 47 0 1146 replace
execute if score #section map_reset matches 7 run tellraw @a [{text:"Section 8/8 - Reset complete!",color:"green"}]

scoreboard players add #section map_reset 1

execute if score #section map_reset matches ..7 run schedule function game:map/reset_section 3t

execute if score #section map_reset matches 8 run function game:map/reset_complete