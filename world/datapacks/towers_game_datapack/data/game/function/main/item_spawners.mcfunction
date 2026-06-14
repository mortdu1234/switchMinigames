# LAPISLAZULI
execute if entity @a[x=0,y=204,z=1166,distance=..12,gamemode=survival,limit=1] unless entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},x=0,y=206,z=1166,distance=..3] run particle cloud 0 206 1166 0 0 0 0.1 16
execute if entity @a[x=0,y=204,z=1166,distance=..12,gamemode=survival,limit=1] unless entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},x=0,y=206,z=1166,distance=..3] run summon item 0 206 1166 {Item:{Count:1,id:"minecraft:lapis_lazuli"},Age:5910}
# IRON
execute if entity @a[x=0,y=204,z=1138,distance=..12,gamemode=survival,limit=1] unless entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},x=0,y=206,z=1138,distance=..3] run particle cloud 0 206 1138 0 0 0 0.1 16
execute if entity @a[x=0,y=204,z=1138,distance=..12,gamemode=survival,limit=1] unless entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},x=0,y=206,z=1138,distance=..3] run summon item 0 206 1138 {Item:{Count:1,id:"minecraft:iron_ingot"},Age:5910}

particle cloud -84 200.6 1152 0.8 0 0.8 0.1 3
particle cloud 84 200.6 1152 0.8 0 0.8 0.1 3

schedule function game:main/item_spawners 5s