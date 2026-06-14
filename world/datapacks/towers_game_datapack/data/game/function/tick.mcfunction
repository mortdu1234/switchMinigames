
function game:red/detect_join_team
function game:blue/detect_join_team
function game:red/detect_leave_team
function game:blue/detect_leave_team

function game:spectator/detect_join
function game:spectator/detect_leave

execute if score game game_active matches 1 run function game:blue/detect_respawn
execute if score game game_active matches 1 run function game:red/detect_respawn
execute if score game game_active matches 1 run function game:gameplay/detect_score
execute if score game game_active matches 1 run function game:gameplay/check_victory

execute if score game game_active matches 1 run function game:general/antigrief
execute if score game game_active matches 1 run function game:gameplay/kill_rewards

function game:items/vault_key
execute if score game game_active matches 1 run function game:items/zeus_spear
execute if score game game_active matches 1 run function game:items/cold_detector

function game:spawn/detect
function game:general/cleanup