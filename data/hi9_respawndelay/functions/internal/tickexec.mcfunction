# Just do not create temporary scoreboard constantly.

scoreboard objectives remove Hi9_RDly_tmp
scoreboard objectives add Hi9_RDly_tmp dummy
execute as @a run scoreboard players operation @s Hi9_RDly_tmp = @s Hi9_RDly_Deaths
execute as @a run scoreboard players operation @s Hi9_RDly_tmp -= @s Hi9_RDly_DeathP

# Oh man he/she is dead.
execute as @a[scores={Hi9_RDly_tmp=1..}] run function hi9_respawndelay:internal/rip

execute as @a[scores={Hi9_RDly_Count=1..}] run function hi9_respawndelay:internal/deadproc

execute if entity @a[scores={Hi9_RDly_Count=1..}] if score #DisableSpec Hi9_RDly_Var matches 1 run function hi9_respawndelay:internal/disablemove