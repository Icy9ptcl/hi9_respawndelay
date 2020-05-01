scoreboard objectives add Hi9_RDly_Count dummy
scoreboard objectives add Hi9_RDly_Time dummy
scoreboard objectives add Hi9_RDly_ID dummy

scoreboard objectives add Hi9_RDly_DTime minecraft.custom:time_since_death

scoreboard objectives add Hi9_RDly_Var dummy
execute unless score #Rev Hi9_RDly_Var matches 1.. run function hi9_respawndelay:internal/resetconfig

scoreboard players set #TimeDivS Hi9_RDly_Var 20
scoreboard players set #TimeDivD Hi9_RDly_Var 5

gamerule doImmediateRespawn true
