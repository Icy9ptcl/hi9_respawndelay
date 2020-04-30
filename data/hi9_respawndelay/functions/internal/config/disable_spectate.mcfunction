execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 0

scoreboard players set #DisableSpec Hi9_RDly_Var 1

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 死亡時の移動を無効にしました。\n"},{"text":"  復活するまでの間、死亡したプレイヤーは移動できません。\n(人が多いと負荷がかかります！)\n","color":"gray"}]

execute as @s run function hi9_respawndelay:help