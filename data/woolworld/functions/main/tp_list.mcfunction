tellraw @s {"text": "Player List (use /trigger ww_tpa set player_id to send a teleport request):"}
execute as @a[x=0] run tellraw @a[distance=0] [{"text":"    "},{"selector":"@s"},{"text":" - "},{"score":{"name":"@s","objective": "hub.UUID1"}}]
scoreboard players set @s ww_tpa 0