title @a title {"text":"TIME'S UP","bold":true,"color":"red"}
execute if score spectator timer_settings matches 1 run gamemode spectator @a
scoreboard players set game_running timer 0