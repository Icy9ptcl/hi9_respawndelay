execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @s ["",{"text":"[Hi9_RespawnDelay] 全員のリスポーン時間を一括で設定します。"},{"text":"\n\n"},{"text":"  "},{"text":"/scoreboard players set #Global Hi9_RDly_Time <Tick>","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time "},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックでチャット欄にコマンドを入力します"}]}},{"text":"\n"},{"text":"  <Tick>:   ","color":"green"},{"text":"0 を指定すると即時リスポーン、","underlined":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time 0"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックでチャット欄にコマンドを入力します"}]}},{"text":"\n"},{"text":"          "},{"text":"-1 を指定すると個別設定ができます。","underlined":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time -1"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックでチャット欄にコマンドを入力します"}]}}]

function hi9_respawndelay:internal/config/change_global_delay