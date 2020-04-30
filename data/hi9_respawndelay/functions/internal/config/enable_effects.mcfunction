execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

scoreboard players set #DisableEff Hi9_RDly_Var 0

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 効果を有効にしました。\n"},{"text":"  死亡時の音と復活時の音、パーティクルがすべて有効になりました。\n","color":"gray"},{"text":"  ちなみに ... これらの演出は対象以外には見えません。","color":"gray"}]

execute as @s run function hi9_respawndelay:help