#Based on death dimension, choose which to display
execute as @s at @s if score @s dc_deathDim matches -1 run function death_coords:display_coords_nether
execute as @s at @s if score @s dc_deathDim matches 0 run function death_coords:display_coords_overworld
execute as @s at @s if score @s dc_deathDim matches 1 run function death_coords:display_coords_end

#Display teleport button if enabled
execute as @s if score @s dc_tpEnabled matches 1 run function death_coords:display_teleport