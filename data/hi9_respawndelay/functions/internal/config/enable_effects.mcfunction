execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

scoreboard players set #DisableEff Hi9_RDly_Var 0

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 効果を有効にしました。\n"},{"text":"  死亡時の音と復活時の音、パーティクルがすべて有効になりました。\n","color":"gray"},{"text":"  これらの演出を他人に見せるかどうかは設定で変更できます。","color":"gray"}]
execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @a [{"text":"[Hi9_RespawnDelay] Effects enabled.\n"},{"text":"  Death sound, respawn sound, and particles are now enabled.\n","color":"gray"},{"text":"  Note: You can choose whether show the effect to someone else or not.","color":"gray"}]

execute as @s run function hi9_respawndelay:help