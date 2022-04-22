data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.wool_world.last_location
execute in woolworld:woolworld positioned as @s run tp @a[tag=ww.active_player] ~ ~ ~
data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.wool_world.last_spawn
execute in woolworld:woolworld positioned as @s as @a[tag=ww.active_player] run function hub:main/death/spawnpoint