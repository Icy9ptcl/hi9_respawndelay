scoreboard players set #Lang Hi9_RDly_Var 0

execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":"[Hi9_RespawnDelay] ","color":"gray"},{"text":"言語を 日本語 に設定しました。\n","color":"gold"},{"text":"詳細な使い方は /function hi9_respawndelay:help や README.md を参照してください。","color":"gray"}]