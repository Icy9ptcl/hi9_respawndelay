# Summon a thing for respawn point
# I tried to allocate this armor stand to the player's spawn point but it didn't go well since I could not create NBT array in order to copy & apply custom coodinates at once to prevent coodinate updates occuring multiple times
execute at @s run summon armor_stand ~ ~ ~ {Tags:["Hi9_ResD","Hi9_ResDn"],NoGravity:1b,Marker:1b,Invulnerable:1b,PersistenceRequired:1b,Invisible:1b}

# I D
# To link a player and an armor stand to copy its spawnpoint.
scoreboard players add #ID Hi9_RDly_ID 1
scoreboard players operation @s Hi9_RDly_ID = #ID Hi9_RDly_ID
scoreboard players operation @e[type=armor_stand,tag=Hi9_ResDn] Hi9_RDly_ID = #ID Hi9_RDly_ID
tag @e[type=armor_stand,tag=Hi9_ResDn] remove Hi9_ResDn