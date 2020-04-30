# Slight optimization: give tag and reduce calculations from (ppl^2) to (ppl!)

tag @e[type=armor_stand,tag=Hi9_ResD] add Hi9_RDly_WIP

# Calculate diff between armor_stand and the dead player
execute as @a[tag=Hi9_RD_Dead] run function hi9_respawndelay:internal/disablemove_int
