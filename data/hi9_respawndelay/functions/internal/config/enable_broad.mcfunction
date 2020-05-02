execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

scoreboard players set #DisableBroad Hi9_RDly_Var 0

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 効果を全員に見せるようにしました。\n"},{"text":"  死亡時の音と復活時の音、パーティクルが周りの人にも見えるようになります。\n","color":"gray"}]
execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @a [{"text":"[Hi9_RespawnDelay] Effects are now visible to everyone.\n"},{"text":"  Death sound, respawn sound, and particles are visible to players around you.\n","color":"gray"}]

execute as @s run function hi9_respawndelay:help