
execute unless entity @s[tag=dc_teleported] run tag @s add dc_tpPlayer

#TP player to the dimension they died in
execute in the_nether if score @s dc_deathDim matches -1 unless entity @s[tag=dc_teleported] run tp @s 0 10000 0
execute in overworld if score @s dc_deathDim matches 0 unless entity @s[tag=dc_teleported] run tp @s 0 10000 0
execute in the_end if score @s dc_deathDim matches 1 unless entity @s[tag=dc_teleported] run tp @s 0 10000 0

execute if entity @s[tag=dc_teleported] run tellraw @s ["",{"text":"You already teleported once","color":"dark_red","italic":true,"underlined":true}]