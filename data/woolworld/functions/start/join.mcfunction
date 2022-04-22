clear @s

item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:9s},{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b}

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

effect give @s saturation 1 100 true
gamemode survival @s
execute in woolworld:woolworld run tp @s 0 254 0
execute in woolworld:woolworld positioned 0 254 0 run function hub:main/death/spawnpoint
function #rx.playerdb:api/v2/get/self

tag @s add ww.active_player
execute if data storage rx.playerdb:io player.data.primd.wool_world.last_location run summon marker ~ ~ ~ {Tags:["ww.tper"]}
execute as @e[type=marker,x=0,tag=ww.tper] run function woolworld:start/tp_last_location
kill @e[type=marker,x=0,tag=ww.tper]
tag @s remove ww.active_player

team join ww.Team @s