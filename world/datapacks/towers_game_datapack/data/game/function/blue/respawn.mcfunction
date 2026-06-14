tp @s -84 192 1152 270 0
particle large_smoke -84 193 1152 0.4 0.8 0.4 0.04 32
effect give @s minecraft:speed 4 0
effect give @s minecraft:resistance 8 127
effect give @s minecraft:haste 8 127
effect give @s minecraft:strength 2 15
item replace entity @s hotbar.4 with minecraft:baked_potato 8
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={},dyed_color=255,custom_data={delete:1}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color=255,custom_data={delete:1}]
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={},enchantments={"minecraft:projectile_protection":2},dyed_color=255,custom_data={delete:1}]
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={},dyed_color=255,custom_data={delete:1}]
item replace entity @s hotbar.3 with minecraft:blue_stained_glass 16
execute if score CombatMode combatmode matches 18 run attribute @s minecraft:attack_speed base set 100