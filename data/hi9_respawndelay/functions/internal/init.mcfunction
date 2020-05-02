scoreboard objectives add Hi9_RDly_Count dummy
scoreboard objectives add Hi9_RDly_Time dummy
scoreboard objectives add Hi9_RDly_ID dummy
scoreboard objectives add Hi9_RDly_DTime minecraft.custom:time_since_death
scoreboard objectives add Hi9_RDly_Var dummy

# Not installed
execute unless score #Rev Hi9_RDly_Var matches 0.. run function hi9_respawndelay:internal/resetconfig

# Installed before but version/rev does not match
execute unless score #Rev Hi9_RDly_Var matches 3.. if score #Rev Hi9_RDly_Var matches 0.. if score #Lang Hi9_RDly_Var matches 0 run tellraw @a ["",{"text":"=== [Hi9_RespawnDelay] 更新 ===========================","color":"gray"},{"text":"\n - Hi9_RespawnDelay が更新されました。\n","color":"gold"},{"text":"> 一部の機能が変更されている場合、一度","color":"white"},{"text":"設定を初期化","color":"red","bold":true},{"text":"しないと使用できない機能があります。\n","color":"white"},{"text":"設定を初期化するには クリック","underlined": true,"color":"white","clickEvent":{"action": "suggest_command","value": "/function hi9_respawndelay:internal/resetconfig"},"hoverEvent": {"action": "show_text","value":[{"text":"問題なければ クリックして Enter で実行します"}]}}]

scoreboard players set #TimeDivS Hi9_RDly_Var 20
scoreboard players set #TimeDivD Hi9_RDly_Var 5

gamerule doImmediateRespawn true
