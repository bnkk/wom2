#Made By Link__HM
#Gets player coords and dimension
execute as @a at @s run function dco:get_coords
#Checks if player died and resets to check again
execute as @a[scores={player_death=1..}] run function dco:chat_msg
execute as @a[scores={player_death=1..}] run scoreboard players remove @s player_death 1