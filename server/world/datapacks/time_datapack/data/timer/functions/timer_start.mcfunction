schedule function timer:timer 1s
scoreboard players set game_running timer 1
execute if score gamemode timer_settings matches 0 run gamemode survival @a
execute if score gamemode timer_settings matches 1 run gamemode creative @a
execute if score gamemode timer_settings matches 2 run gamemode adventure @a