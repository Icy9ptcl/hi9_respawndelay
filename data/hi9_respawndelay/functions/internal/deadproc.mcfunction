#Shorten time
scoreboard players remove @s Hi9_RDly_Count 1

scoreboard players operation #TimeS Hi9_RDly_Var = @s Hi9_RDly_Count
scoreboard players operation #TimeS Hi9_RDly_Var /= #TimeDivS Hi9_RDly_Var

scoreboard players operation #TimeD Hi9_RDly_Var = @s Hi9_RDly_Count
scoreboard players operation #TimeD Hi9_RDly_Var %= #TimeDivS Hi9_RDly_Var
scoreboard players operation #TimeD Hi9_RDly_Var *= #TimeDivD Hi9_RDly_Var

# J A P A N E S E
execute if score #TimeD Hi9_RDly_Var matches 0..9 run execute if score #Lang Hi9_RDly_Var matches 0 run title @s subtitle [{"text":"復活まで ","color":"gold"},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeS"}},{"text":".0"},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeD"}},{"text":" 秒"}]
execute if score #TimeD Hi9_RDly_Var matches 10..99 run execute if score #Lang Hi9_RDly_Var matches 0 run title @s subtitle [{"text":"復活まで ","color":"gold"},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeS"}},{"text":"."},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeD"}},{"text":" 秒"}]
execute if score #Lang Hi9_RDly_Var matches 0 run title @s title [{"text":"死んでしまった！","color":"red"}]

# E N G L I S H
execute if score #TimeD Hi9_RDly_Var matches 0..9 run execute if score #Lang Hi9_RDly_Var matches 1 run title @s subtitle [{"text":"Respawning in ","color":"gold"},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeS"}},{"text":".0"},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeD"}},{"text":" sec..."}]
execute if score #TimeD Hi9_RDly_Var matches 10..99 run execute if score #Lang Hi9_RDly_Var matches 1 run title @s subtitle [{"text":"Respawning in ","color":"gold"},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeS"}},{"text":"."},{"score":{"objective":"Hi9_RDly_Var","name":"#TimeD"}},{"text":" sec..."}]
execute if score #Lang Hi9_RDly_Var matches 1 run title @s title [{"text":"You died!","color":"red"}]

execute if score #TimeD Hi9_RDly_Var matches 0 unless score #TimeS Hi9_RDly_Var matches 0 if score #DisableEff Hi9_RDly_Var matches 0 run execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 0.8 2

execute if score @s Hi9_RDly_Count matches ..0 run function hi9_respawndelay:respawn

