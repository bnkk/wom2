
#TP entity to the dimension the player died in
execute in the_nether if score @p[tag=dc_tpPlayer,limit=1] dc_deathDim matches -1 run tp @s 0 10000 0
execute in overworld if score @p[tag=dc_tpPlayer,limit=1] dc_deathDim matches 0 run tp @s 0 10000 0
execute in the_end if score @p[tag=dc_tpPlayer,limit=1] dc_deathDim matches 1 run tp @s 0 10000 0

#Store scoreboard values into entity position
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=dc_tpPlayer,limit=1] dc_deathPosX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=dc_tpPlayer,limit=1] dc_deathPosY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=dc_tpPlayer,limit=1] dc_deathPosZ

#Run TP in the dimension that the player died in
tp @p[tag=dc_tpPlayer] @s

execute if score @p[tag=dc_tpPlayer] dc_tpOnlyOnce matches 1 run tag @p[tag=dc_tpPlayer] add dc_teleported
tag @p[tag=dc_tpPlayer] remove dc_tpPlayer

kill @s