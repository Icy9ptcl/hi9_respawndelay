execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 1 1

execute if score #Lang Hi9_RDly_Var matches 0 run tellraw @s ["",{"text":"[Hi9_RespawnDelay] 全員のリスポーン時間を一括で設定します。"},{"text":"\n\n"},{"text":"  "},{"text":"/scoreboard players set #Global Hi9_RDly_Time <Tick>","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time "},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックでチャット欄にコマンドを入力します"}]}},{"text":"\n"},{"text":"  <Tick>:   ","color":"green"},{"text":"0 を指定すると即時リスポーン、","underlined":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time 0"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックでチャット欄にコマンドを入力します"}]}},{"text":"\n"},{"text":"          "},{"text":"-1 を指定すると個別設定ができます。","underlined":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time -1"},"hoverEvent":{"action":"show_text","value":["",{"text":"クリックでチャット欄にコマンドを入力します"}]}}]

execute if score #Lang Hi9_RDly_Var matches 1 run tellraw @s ["",{"text":"[Hi9_RespawnDelay] Here you can set the DEFAULT respawn delay. This setting will be applied to everyone unless it is disabled."},{"text":"\n\n"},{"text":"  "},{"text":"/scoreboard players set #Global Hi9_RDly_Time <Length:Tick>","italic":true,"underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time "},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to input the command in your chatbox"}]}},{"text":"\n"},{"text":"  <Tick>:   ","color":"green"},{"text":"Set this 0 to respawn immediately.","underlined":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time 0"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to input the command in your chatbox"}]}},{"text":"\n"},{"text":"          "},{"text":"Set this -1 to DISABLE this feature and set respawn time individually.","underlined":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #Global Hi9_RDly_Time -1"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to input the command in your chatbox"}]}}]