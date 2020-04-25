# Finds a suitable position for the grave and places it there

execute if entity @e[tag=pg_grave,sort=nearest,limit=1,distance=..2] positioned ~ ~3 ~ run function player_graves:find_pos

# Places grave
execute if block ~ ~ ~ #player_graves:grave_replaceable unless entity @e[tag=pg_grave,sort=nearest,limit=1,distance=..2] run execute positioned ~ ~1 ~ run function player_graves:main

# Finds suitable position upwards
execute unless block ~ ~ ~ #player_graves:grave_replaceable positioned ~ ~1 ~ run function player_graves:find_pos