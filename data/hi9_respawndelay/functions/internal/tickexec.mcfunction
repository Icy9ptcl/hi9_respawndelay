# Oh man he/she is dead.

# Set 2 tick delay, because of chunk load
# What I thought was: 0 Tick, the player dies - has 0 health.
#                     1 Tick, the player gets respawned after all the commands in datapacks are done
#                     2 Tick, now datapacks can actually interact to the player
# It's kinda weird to me
# Also: this made 0.15 secs lag. #TO/DO
execute as @a[scores={Hi9_RDly_DTime=2}] run function hi9_respawndelay:internal/rip

# I guess I can delete this scoreboard since I have DTime thing. #TO/DO
execute as @a[scores={Hi9_RDly_Count=1..}] run function hi9_respawndelay:internal/deadproc

# Spectating disabled.
execute if entity @a[scores={Hi9_RDly_Count=1..}] if score #DisableSpec Hi9_RDly_Var matches 1 run function hi9_respawndelay:internal/disablemove