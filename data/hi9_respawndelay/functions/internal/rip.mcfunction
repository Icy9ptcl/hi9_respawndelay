# R I P
# Sync deaths
scoreboard players operation @s Hi9_RDly_DeathP = @s Hi9_RDly_Deaths

gamemode spectator @s
# Summon a thing for respawn point
execute at @s run summon armor_stand ~ ~1 ~ {Tags:["Hi9_ResD","Hi9_ResDn"],NoGravity:1b,Marker:1b,Invulnerable:1b,PersistenceRequired:1b,Invisible:1b}

scoreboard players add #ID Hi9_RDly_ID 1
scoreboard players operation @s Hi9_RDly_ID = #ID Hi9_RDly_ID
scoreboard players operation @e[type=armor_stand,tag=Hi9_ResDn] Hi9_RDly_ID = #ID Hi9_RDly_ID
tag @e[type=armor_stand,tag=Hi9_ResDn] remove Hi9_ResDn

execute at @s run playsound entity.bat.death master @s ~ ~ ~ 1 1
title @s times 0 20 10
effect give @s blindness 1 1 true

#Hi9_RDly_Time
# - !Global

# local
scoreboard players operation @s Hi9_RDly_Count = @s Hi9_RDly_Time

# global
execute if score #Global Hi9_RDly_Time matches 0.. run scoreboard players operation @s Hi9_RDly_Count = #Global Hi9_RDly_Time 