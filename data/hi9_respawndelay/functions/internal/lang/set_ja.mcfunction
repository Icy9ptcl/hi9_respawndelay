scoreboard players set #Lang Hi9_RDly_Var 0

execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":"[Hi9_RespawnDelay] ","color":"gray"},{"text":"言語を 日本語 に設定しました。","color":"gold"}]