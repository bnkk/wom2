# Sorts items into minecraft hoppers above the world

# Spawn 8 hopper minecarts recursively
scoreboard players set @s pg_hoppers 9
function player_graves:create_minecarts
execute align xz run summon area_effect_cloud ~0.5 ~300 ~0.5 {Duration:2147483647,Particle:"underwater",Tags:["pg_graveItems"],Radius:0.5}
execute align xz positioned ~0.5 ~300 ~0.5 run scoreboard players operation @e[tag=pg_graveItems,distance=..2,limit=1,sort=nearest] pg_id = @s pg_id

# Tags items and move them above hopper minecarts
tag @e[type=minecraft:item,scores={pg_itemAge=0..1}] add pg_graveItem

# If a hopper minecart exists, teleport all grave items above it
execute positioned ~ ~300 ~ as @e[type=minecraft:hopper_minecart,tag=pg_hopper,sort=nearest,limit=9] at @s run tp @e[type=minecraft:item,tag=pg_graveItem] ~ ~1 ~

# Fix weird bug with items TP in 1.15.
schedule function player_graves:tp_grave_items 2t append
schedule function player_graves:tp_grave_items 4t append

# Places grave "model"
function player_graves:create_grave
