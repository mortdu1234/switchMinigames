execute if score TowersGame timer matches ..8 run scoreboard players add TowersGame timer 1

execute as @a at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 0.7 2

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
