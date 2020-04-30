#Section: JAPANESE
execute at @s run playsound minecraft:block.wooden_door.open master @s ~ ~ ~ 1 2

tellraw @s ["",{"text":"\n=== [Hi9_RespawnDelay] 設定 ===========================","color":"gray"},{"text":" - 設定の値をクリックすると編集できます。","color":"gray"}]


execute if score #Enabled Hi9_RDly_Var matches 0 run tellraw @s ["",{"text":"システムの有効/無効","color":"white"},{"text":" ........................................ ","color":"dark_gray"},{"text":"[無効]","color":"red","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/enable_system"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで 有効 にします","color":"green"}]}}]

execute if score #Enabled Hi9_RDly_Var matches 1 run tellraw @s ["",{"text":"システムの有効/無効","color":"white"},{"text":" ........................................ ","color":"dark_gray"},{"text":"[有効]","color":"green","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/disable_system"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで 無効 にします","color":"red"}]}}]

execute if score #Global Hi9_RDly_Time matches 0.. run tellraw @s ["",{"text":"全員のリスポーン時間","color":"white"},{"text":" ...................................... ","color":"dark_gray"},{"score":{"name":"#Global","objective":"Hi9_RDly_Time"},"bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/change_global_delay"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで変更","color":"gold"}]}},{"text":" tick","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/change_global_delay"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで変更","color":"gold"}]}}]

execute if score #Global Hi9_RDly_Time matches ..-1 run tellraw @s ["",{"text":"全員のリスポーン時間","color":"white"},{"text":" ...................................... ","color":"dark_gray"},{"text":"個別設定","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/change_global_delay"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで変更","color":"gold"}]}}]

tellraw @s ["",{"text":"個別にリスポーンの時間を設定する","color":"white"},{"text":" ........","color":"dark_gray"},{"text":"→ 入力する","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/change_indiv_delay"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで変更","color":"gold"}]}}]

execute if score #DisableSpec Hi9_RDly_Var matches 0 run tellraw @s ["",{"text":"死亡時の移動を禁止する","color":"white"},{"text":" ................................. ","color":"dark_gray"},{"text":"[無効]","color":"red","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/enable_spectate"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで 有効 にします\n","color":"green"},{"text":"(復活までの間、スペクテイターで自由に移動できるようになります)"}]}}]

execute if score #DisableSpec Hi9_RDly_Var matches 1 run tellraw @s ["",{"text":"死亡時の移動を禁止する","color":"white"},{"text":" ................................. ","color":"dark_gray"},{"text":"[有効]","color":"green","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/config/disable_spectate"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで 無効 にします\n","color":"red"},{"text":"(復活までの間、動けなくなります)"}]}}]
