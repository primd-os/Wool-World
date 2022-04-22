execute in woolworld:woolworld run forceload add -15 -15 15 15
execute in woolworld:woolworld run setblock 0 10 0 bedrock
execute in woolworld:woolworld run forceload remove -15 -15 15 15
scoreboard objectives add ww.Variables dummy
scoreboard objectives add ww.items dummy
scoreboard objectives add spawnpoint trigger
scoreboard objectives add warp_to_spawn trigger

scoreboard objectives add ww_tpa trigger
scoreboard objectives add ww.teleportDestination dummy

team add ww.Team
team modify ww.Team prefix {"text": "Wool World | "}
team modify ww.Team collisionRule always
team modify ww.Team friendlyFire true

schedule function woolworld:main/main 1t replace