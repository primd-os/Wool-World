kill @s[y=-20,dy=10]
effect give @s[scores={hub.foodLevel=..19}] minecraft:saturation 2 0 true
execute as @s[scores={ww.items=31415}] run function woolworld:main/p_inv_changed

scoreboard players enable @s Spawnpoint
execute as @s[scores={Spawnpoint=1..}] run function hub:main/death/spawnpoint
execute as @s[scores={Spawnpoint=1..}] run scoreboard players set @s Spawnpoint 0