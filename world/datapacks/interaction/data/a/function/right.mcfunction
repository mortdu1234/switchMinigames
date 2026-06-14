advancement revoke @s only a:right_click



tag @s add this
execute as @e[type=interaction,distance=..6] run function a:find_targeted
tag @s remove this