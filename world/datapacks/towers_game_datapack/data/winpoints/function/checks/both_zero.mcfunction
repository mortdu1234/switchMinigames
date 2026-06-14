execute if score TowersGame timer matches 0 if score TowersGame winPoints matches 0 run tellraw @a [{text:"[!] ",color:"dark_red",bold:true},{text:"You must select a timer in order to disable point goal!",color:"red"}]

execute if score TowersGame timer matches 0 if score TowersGame winPoints matches 0 run function timer:increment
