advancement revoke @s only a:left_click



tag @s add this
execute as @e[type=interaction,distance=..6] run function a:find_attacked
tag @s remove this