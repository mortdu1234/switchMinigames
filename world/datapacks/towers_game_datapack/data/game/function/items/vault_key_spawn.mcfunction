summon minecraft:item 0.5 192 1166.5 {NoGravity:1b,Motion:[0.0,0.0,0.0],Health:500s,Invulnerable:1b,fall_distance:0.0,Air:300s,OnGround:0b,PortalCooldown:0,Rotation:[0.0,0.0],Item:{count:1,id:"minecraft:trial_key",components:{"minecraft:item_name":{color:"#FFAB03",shadow_color:-5876992,text:"Towers Vault Key"}}},PickupDelay:0s,Fire:0s,Age:-32768s,Tags:["vault_key"]}

tellraw @a [{text:"✨ ",color:"gold"},{text:"A Vault Key has spawned!",color:"yellow",bold:true}]
playsound minecraft:block.trial_spawner.spawn_item master @a 0.5 192 1166.5 1 1