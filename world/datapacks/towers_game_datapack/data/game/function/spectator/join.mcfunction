scoreboard players enable @s leaveObsRequest
tellraw @s [{text:"Click ",color:"white"},{text:"here",color:"green",bold:true,italic:true,click_event:{"action":"run_command","command":"/trigger leaveObsRequest set 1"}},{text:" to leave Observers.",color:"white"},{text:" (This message will reappear every 30 seconds.)",color:"gray"}]
spawnpoint @s 0 193 1152
gamemode spectator @s
tp @s 0 193 1152
scoreboard players set @s joinObs 0