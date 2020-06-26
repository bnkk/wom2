#Save coordinates upon death
execute as @a at @s unless score @s dc_deaths = @s dc_prevDeaths1 run function death_coords:save_coords

#Display coordinates after respawn
execute as @e[type=player] at @s unless score @s dc_deaths = @s dc_prevDeaths2 run function death_coords:display_coords

#Update player's current dimension
execute as @a store result score @s dc_curDim run data get entity @s Dimension

#Teleport players waiting to teleport
execute as @a[tag=dc_tpPlayer] at @s if score @s dc_deathDim = @s dc_curDim run function death_coords:tp_coords_summon