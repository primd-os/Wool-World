function #rx.playerdb:api/v2/get/self
execute unless data entity @s SpawnX run data remove storage rx.playerdb:io player.data.primd.wool_world.last_spawn
execute if data entity @s SpawnX run data modify storage rx.playerdb:io player.data.primd.wool_world.last_spawn set value [0d,100d,0d]
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.wool_world.last_spawn[0] double 1 run data get entity @s SpawnX
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.wool_world.last_spawn[1] double 1 run data get entity @s SpawnY
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.wool_world.last_spawn[2] double 1 run data get entity @s SpawnZ
data modify storage rx.playerdb:io player.data.primd.wool_world.last_location set from entity @s Pos
function #rx.playerdb:api/v2/save/self