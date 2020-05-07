execute as @s store result score @s dc_deathPosX run data get entity @s Pos[0]
execute as @s store result score @s dc_deathPosY run data get entity @s Pos[1]
execute as @s store result score @s dc_deathPosZ run data get entity @s Pos[2]
execute as @s store result score @s dc_deathDim run data get entity @s Dimension
tag @s remove dc_teleported
scoreboard players operation @s dc_prevDeaths1 = @s dc_deaths