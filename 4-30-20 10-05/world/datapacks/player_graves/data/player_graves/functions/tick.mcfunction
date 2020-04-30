# Controls everything to do with Player Graves

# Stores age of items in a scoreboard
execute as @e[type=minecraft:item] at @s run function player_graves:store_age

# Get the coords of the player who died
execute as @a[scores={pg_death=1..}] at @s run function player_graves:get_player_coords

# If a player dies, sort the items into hopper minecarts
execute as @a[scores={pg_death=1..,pg_y=1..}] at @s if entity @e[type=minecraft:item,distance=..2,scores={pg_itemAge=0..1}] run function player_graves:get_grave_pos
execute as @a[scores={pg_death=1..,pg_y=..0}] at @s positioned ~ 1 ~ run function player_graves:get_grave_pos

# Set death cooldown of player to 1 second after dying
scoreboard players set @a[scores={pg_death=1..}] pg_deathCooldown 20
scoreboard players remove @a[scores={pg_deathCooldown=1..}] pg_deathCooldown 1

# If a grave exists, check if a player is sneaking at it
execute as @a[scores={pg_deathCooldown=..0,pg_sneak=1..}] at @s align xz positioned ~0.5 ~ ~0.5 if score @e[type=minecraft:area_effect_cloud,tag=pg_grave,distance=..0.25,dx=0,sort=nearest,limit=1] pg_id = @s pg_id run function player_graves:check_claim
scoreboard players set @a pg_sneak 0

# Toggle death message
execute as @a at @s unless entity @s[scores={pg_deathMessage=0}] run function player_graves:toggle_death_message

# Enable trigger for new joining players
execute as @a[scores={pg_joinedServer=..1}] at @s run function player_graves:setup_player

# Reset player death after everything is run
scoreboard players set @a[scores={pg_death=1..}] pg_death 0
tag @a remove pg_illegalPos
tag @a remove pg_illegalPosUp
tag @a remove pg_illegalPosBlock
