# POINTS - Blue
execute unless score TowersGame winPoints matches 0 if score Blue teamPoints >= TowersGame winPoints run function game:gameplay/victory_blue

# POINTS - Red
execute unless score TowersGame winPoints matches 0 if score Red teamPoints >= TowersGame winPoints run function game:gameplay/victory_red

# TIME - Blue
execute if score Blue teamPoints > Red teamPoints if score h timer matches ..0 if score min timer matches ..0 if score sec timer matches ..0 if score paused timer matches 0 run function game:gameplay/victory_blue

# TIME - Red
execute if score Red teamPoints > Blue teamPoints if score h timer matches ..0 if score min timer matches ..0 if score sec timer matches ..0 if score paused timer matches 0 run function game:gameplay/victory_red

# TIME - DRAW
execute if score Red teamPoints = Blue teamPoints if score h timer matches ..0 if score min timer matches ..0 if score sec timer matches ..0 if score paused timer matches 0 run function game:gameplay/draw