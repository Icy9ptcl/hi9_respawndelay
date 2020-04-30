execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

scoreboard players set #DisableSpec Hi9_RDly_Var 0

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] 死亡時の移動を有効にしました。\n"},{"text":"  復活するまでの間、スペクテイターモードでのすべての機能を使えます。\n","color":"gray"}]


execute as @s run function hi9_respawndelay:help