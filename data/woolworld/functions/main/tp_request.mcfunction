scoreboard players operation activeTpID ww.Variables = @s ww_tpa
scoreboard players operation activeTpPlayer ww.Variables = @s hub.UUID1

tag @s add ww.activePlayer
execute as @a[x=0] if score @s hub.UUID1 = activeTpID ww.Variables unless score @s ww.teleportDestination = activeTpPlayer ww.Variables run function woolworld:main/request_permission
execute as @a[x=0] if score @s hub.UUID1 = activeTpID ww.Variables if score @s ww.teleportDestination = activeTpPlayer ww.Variables run function woolworld:main/accept_teleport
tag @s remove ww.activePlayer

scoreboard players set @s ww_tpa 0