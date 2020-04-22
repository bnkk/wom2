# Allows players to find an inventory worth of their old items when dying in other dimensions

summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},PickupDelay:100,Tags:["pg_findItems"]}
execute as @e[type=minecraft:hopper_minecart,tag=pg_hopper] at @s run tp @e[type=minecraft:item,tag=pg_findItems] ~ ~-290 ~

execute store result score #pg_findItems pg_x run data get entity @e[tag=pg_findItems,limit=1,sort=nearest] Pos[0]
execute store result score #pg_findItems pg_y run data get entity @e[tag=pg_findItems,limit=1,sort=nearest] Pos[1]
execute store result score #pg_findItems pg_z run data get entity @e[tag=pg_findItems,limit=1,sort=nearest] Pos[2]

tellraw @s ["",{"text":"The items are located at XYZ: ","color":"yellow"},{"score":{"name":"#pg_findItems","objective":"pg_x"}},{"text":" "},{"score":{"name":"#pg_findItems","objective":"pg_y"}},{"text":" "},{"score":{"name":"#pg_findItems","objective":"pg_z"}},{"text":" (Click here)","color":"red","hoverEvent":{"action":"show_text","value":"Click here to insert command"},"clickEvent":{"action":"suggest_command","value":"/execute in overworld run tp @s <coords>"}}]
tellraw @s ["",{"text":"\nNote: Run ","color":"yellow","hoverEvent":{"action":"show_text","value":"Click here to run command"},"clickEvent":{"action":"run_command","value":"/function player_graves:admin/claim_grave","color":"red"}},{"text":"this command","color":"red","hoverEvent":{"action":"show_text","value":"Click here to run command"},"clickEvent":{"action":"run_command","value":"/function player_graves:admin/claim_grave"}},{"text":" to receive the items once you've teleported there.\n\n","color":"yellow","hoverEvent":{"action":"show_text","value":"Click here to run command"},"clickEvent":{"action":"run_command","value":"/function player_graves:admin/claim_grave"}}]
kill @e[tag=pg_findItems]