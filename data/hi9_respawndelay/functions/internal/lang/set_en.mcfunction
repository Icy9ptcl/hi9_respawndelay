scoreboard players set #Lang Hi9_RDly_Var 1

execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":"[Hi9_RespawnDelay] ","color":"gray"},{"text":"The language is now set to English.\n","color":"gold"},{"text":" Please note that the creator is currently on the way learning English. Some translations may be incorrect!\n","color":"gray"},{"text":"For usage, see /function hi9_respawndelay:help or README_en.md .","color":"gray"}]