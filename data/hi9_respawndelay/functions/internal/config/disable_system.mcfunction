execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 0

scoreboard players set #Enabled Hi9_RDly_Var 0

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] システムが無効になりました。\n"},{"text":"  gamerule: doImmediateRespawn (即時リスポーン) は有効のままです。\n","color":"gray"},{"text":"  無効にする場合はここをクリックしてください。","color":"gray","underlined":true,"clickEvent":{"action":"suggest_command","value":"/gamerule doImmediateRespawn false"}}]

execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @a [{"text":"[Hi9_RespawnDelay] The system is now disabled.\n"},{"text":"  gamerule: doImmediateRespawn is still enabled!\n","color":"gray"},{"text":"  To disable it, click here.","color":"gray","underlined":true,"clickEvent":{"action":"suggest_command","value":"/gamerule doImmediateRespawn false"}}]