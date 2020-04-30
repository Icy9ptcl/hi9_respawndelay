execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 0

scoreboard players set #DisableEff Hi9_RDly_Var 1

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 効果を無効にしました。\n"},{"text":"  死亡時の音と復活時の音、パーティクルがすべて無効になりました。\n","color":"gray"}]
execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @a [{"text":"[Hi9_RespawnDelay] Effect disabled.\n"},{"text":"  Death sound, respawn sound, and particle are all disabled.\n","color":"gray"}]

execute as @s run function hi9_respawndelay:help