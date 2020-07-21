#Made By Link__HM
#Gets the player's x, y, and z coords
execute store result score @s dco_x run data get entity @s Pos[0] 1
execute store result score @s dco_y run data get entity @s Pos[1] 1
execute store result score @s dco_z run data get entity @s Pos[2] 1
#Gets the player's dimension
execute store result score @s dco_di run data get entity @s Dimension