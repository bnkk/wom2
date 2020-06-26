#Title + subtitle
title @s title ["",{"text":" YOU DIED! ","color":"dark_red","bold":true,"underlined":true}]

title @s subtitle ["",{"text":" | ","color":"gold"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"dc_deathPosX"}},{"text":" | ","color":"gold"},{"text":"Y: ","color":"green"},{"score":{"name":"@s","objective":"dc_deathPosY"}},{"text":" | ","color":"gold"},{"text":"Z: ","color":"blue"},{"score":{"name":"@s","objective":"dc_deathPosZ"}},{"text":" | ","color":"gold"},{"text":"OVERWORLD","color":"aqua"},{"text":" | ","color":"gold"}]

#Chat
tellraw @s ["",{"text":"--------------------------------\n","color":"gold"},{"text":" YOU DIED! \n\n","color":"dark_red","bold":true,"underlined":true},{"text":" | ","color":"gold"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"dc_deathPosX"}},{"text":" | ","color":"gold"},{"text":"Y: ","color":"green"},{"score":{"name":"@s","objective":"dc_deathPosY"}},{"text":" | ","color":"gold"},{"text":"Z: ","color":"blue"},{"score":{"name":"@s","objective":"dc_deathPosZ"}},{"text":" | ","color":"gold"},{"text":"OVERWORLD","color":"aqua"},{"text":" | ","color":"gold"},{"text":"\n--------------------------------","color":"gold"}]

scoreboard players operation @s dc_prevDeaths2 = @s dc_deaths