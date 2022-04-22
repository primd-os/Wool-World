kill @s[y=-20,dy=10]
effect give @s[scores={hub.foodLevel=..19}] minecraft:saturation 1 0 true
execute if block ~ ~ ~ yellow_carpet run effect give @s minecraft:speed 1 9 true
execute if block ~ ~ ~ magenta_carpet run effect give @s minecraft:levitation 1 9 true
execute if block ~ ~ ~ lime_carpet run effect give @s minecraft:jump_boost 1 9 true
execute if block ~ ~ ~ white_carpet run effect clear @s
execute as @s[scores={ww.items=31415}] run function woolworld:main/p_inv_changed

scoreboard players enable @s spawnpoint
execute as @s[scores={spawnpoint=1..}] run function hub:main/death/spawnpoint
execute as @s[scores={spawnpoint=1..}] run scoreboard players set @s spawnpoint 0

scoreboard players enable @s warp_to_spawn
execute as @s[scores={warp_to_spawn=1..}] run tp @s 0 255 0
execute as @s[scores={warp_to_spawn=1..}] run scoreboard players set @s warp_to_spawn 0

scoreboard players enable @s ww_tpa
execute if score @s ww_tpa matches 1 run function woolworld:main/tp_list
execute unless score @s ww_tpa matches 0 run function woolworld:main/tp_request