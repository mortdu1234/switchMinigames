scoreboard players set #section map_reset 0

title @a title [{text:"Resetting Map...",color:"gold",bold:true}]
title @a subtitle [{text:"This may take a moment",color:"yellow"}]
tellraw @a [{text:"Map reset in progress...",color:"yellow"}]

tp @a 1 210 1100 0 25
gamemode spectator @a[gamemode=!spectator]

kill @e[type=item,x=-102,y=0,z=1122,dx=207,dy=268,dz=60]
kill @e[type=arrow,x=-102,y=0,z=1122,dx=207,dy=268,dz=60]
kill @e[type=trident,x=-102,y=0,z=1122,dx=207,dy=268,dz=60]
kill @e[type=snowball,x=-102,y=0,z=1122,dx=207,dy=268,dz=60]
kill @e[type=armor_stand,tag=ColdDetector]

kill @e[tag=vault_key]
tp @e[type=horse,x=-5,y=190,z=1145,dx=10,dy=15,dz=15] 0 -100 0
kill @e[type=item,x=-5,y=200,z=1145,dx=10,dy=10,dz=15]

schedule clear game:general/scoreboard_rotation
scoreboard objectives setdisplay sidebar

function game:map/reset_section