execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

scoreboard players set #Enabled Hi9_RDly_Var 1

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @a [{"text":"[Hi9_RespawnDelay] システムが有効になりました。\n"},{"text":"  gamerule: doImmediateRespawn (即時リスポーン) が有効になりました。\n","color":"gray"},{"text":"  (使い方は /function hi9_respawndelay:help を参照するかここをクリック)","color":"gray","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function hi9_respawndelay:help"}}]

execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @a [{"text":"[Hi9_RespawnDelay] The system is now activated.\n"},{"text":"  gamerule: doImmediateRespawn has been enabled due to its functionality.\n","color":"gray"},{"text":"  (For usage, run /function hi9_respawndelay:help or click here if you want to save time)","color":"gray","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function hi9_respawndelay:help"}}]

execute as @s run function hi9_respawndelay:help