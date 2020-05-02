#Force respawn due to force reset config.
execute as @a[tag=Hi9_RD_Dead] run function hi9_respawndelay:respawn

scoreboard objectives remove Hi9_RDly_Count
scoreboard objectives remove Hi9_RDly_DeathP
scoreboard objectives remove Hi9_RDly_Deaths
scoreboard objectives remove Hi9_RDly_DTime
scoreboard objectives remove Hi9_RDly_ID
scoreboard objectives remove Hi9_RDly_Time
scoreboard objectives remove Hi9_RDly_tmp
scoreboard objectives remove Hi9_RDly_Var

#These are old scoreboard objectives
scoreboard objectives remove Hi9_RDly_HP

scoreboard objectives add Hi9_RDly_Var dummy
scoreboard objectives add Hi9_RDly_Time dummy

#Revision
scoreboard players set #Rev Hi9_RDly_Var 3

scoreboard players set #Enabled Hi9_RDly_Var 1
scoreboard players set #DisableSpec Hi9_RDly_Var 0
scoreboard players set #DisableEff Hi9_RDly_Var 0
scoreboard players set #DisableBroad Hi9_RDly_Var 0
scoreboard players set #Gamemode Hi9_RDly_Var 0
scoreboard players set #Lang Hi9_RDly_Var 0
scoreboard players set #Global Hi9_RDly_Time 100

scoreboard players set #TimeDivS Hi9_RDly_Var 20
scoreboard players set #TimeDivD Hi9_RDly_Var 5

function hi9_respawndelay:internal/init

tellraw @a [{"text":"[Hi9_RespawnDelay] 設定をリセットしました。\n","color":"green"},{"text":"  Configuration was successfully reset.","color":"yellow"}]

tellraw @a ["",{"text":"[Hi9_RespawnDelay] ","color":"gray"},{"text":" >> インストールが完了しました。言語を選んでください。","color":"green"},{"text":"\n"},{"text":"[日本語]  ","color":"green","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/lang/set_ja"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックで言語を 日本語 に設定します"}]}},{"text":"[English]  ","color":"yellow","clickEvent":{"action":"run_command","value":"/function hi9_respawndelay:internal/lang/set_en"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click me to set the language to: English"}]}}]