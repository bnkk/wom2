execute unless score pause timer matches 1 run scoreboard players remove seconds timer 1
execute if score seconds timer matches -1 if score minutes timer matches 1.. run function timer:remove_minute
execute if score seconds timer matches -1 if score minutes timer matches 0 run function timer:timer_end
execute if score minutes timer matches 1.. run schedule function timer:timer 1s
execute if score minutes timer matches 0 if score seconds timer matches 0.. unless score pause timer matches 1 run schedule function timer:timer 1s