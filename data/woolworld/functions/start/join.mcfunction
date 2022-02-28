clear @s

give @s shears{Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1
give @s blue_wool 64
give @s red_wool 64
give @s white_wool 64
give @s black_wool 64
give @s green_wool 64
give @s purple_wool 64
give @s magenta_wool 64
give @s oak_sign 16

give @s brown_wool 64
give @s gray_wool 64
give @s orange_wool 64
give @s light_blue_wool 64
give @s yellow_wool 64
give @s lime_wool 64
give @s pink_wool 64
give @s light_gray_wool 64
give @s cyan_wool 64

effect give @s saturation 1000000 1 true
gamemode survival @s
execute in woolworld:woolworld run tp @s 0 254 0
execute in woolworld:woolworld positioned 0 254 0 run function hub:main/death/spawnpoint
team join ww.Team @s