clear @s
give @s blue_wool 64
give @s red_wool 64
give @s white_wool 64
give @s black_wool 64
give @s green_wool 64
give @s purple_wool 64
give @s magenta_wool 64
give @s shears{Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1
give @s oak_sign 16
effect give @s saturation 1000000 1 true
gamemode survival @s
execute in bridgeworld:bridgeworld run tp @s 0 254 0
execute in bridgeworld:bridgeworld positioned 0 254 0 run function hub:main/death/spawnpoint