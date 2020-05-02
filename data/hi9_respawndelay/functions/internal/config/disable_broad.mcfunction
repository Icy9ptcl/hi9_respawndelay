execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 0

scoreboard players set #DisableBroad Hi9_RDly_Var 1

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 効果を全員に見せないようにしました。\n"},{"text":"  死亡時の音と復活時の音、パーティクルはその個人にしか見えません。\n","color":"gray"}]
execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @a [{"text":"[Hi9_RespawnDelay] Effects are no longer visible to everyone.\n"},{"text":"  Death sound, respawn sound, and particles are NOT visible to everyone except a dead player.\n","color":"gray"}]

execute as @s run function hi9_respawndelay:help