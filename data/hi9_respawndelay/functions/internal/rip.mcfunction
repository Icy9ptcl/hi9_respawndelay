# R I P
# Sync deaths
scoreboard players operation @s Hi9_RDly_DeathP = @s Hi9_RDly_Deaths

gamemode spectator @s
tag @s add Hi9_RD_Dead
# Summon a thing for respawn point
execute at @s run summon armor_stand ~ ~1 ~ {Tags:["Hi9_ResD","Hi9_ResDn"],NoGravity:1b,Marker:1b,Invulnerable:1b,PersistenceRequired:1b,Invisible:1b}

scoreboard players add #ID Hi9_RDly_ID 1
scoreboard players operation @s Hi9_RDly_ID = #ID Hi9_RDly_ID
scoreboard players operation @e[type=armor_stand,tag=Hi9_ResDn] Hi9_RDly_ID = #ID Hi9_RDly_ID
tag @e[type=armor_stand,tag=Hi9_ResDn] remove Hi9_ResDn

execute if score #DisableEff Hi9_RDly_Var matches 0 run execute at @s run playsound entity.bat.death master @s ~ ~ ~ 1 1
execute if score #DisableEff Hi9_RDly_Var matches 0 run effect give @s blindness 1 1 true
title @s times 0 20 10

#Hi9_RDly_Time
# - !Global

# local
scoreboard players operation @s Hi9_RDly_Count = @s Hi9_RDly_Time

# global
execute if score #Global Hi9_RDly_Time matches 0.. run scoreboard players operation @s Hi9_RDly_Count = #Global Hi9_RDly_Time 

execute unless score #Global Hi9_RDly_Time matches 0.. if score @s Hi9_RDly_Time matches ..-1 if score #Lang Hi9_RDly_Var matches 0 run tellraw @s [{"text":"[Hi9_RespawnDelay] リスポーン時間が設定されていないため、即時にリスポーンします。","color":"red"},{"text":" おそらく 個人設定 が正しく設定されていません。","color":"gray"}]
execute unless score #Global Hi9_RDly_Time matches 0.. if score @s Hi9_RDly_Time matches ..-1 if score #Lang Hi9_RDly_Var matches 1 run tellraw @s [{"text":"[Hi9_RespawnDelay] Because no respawn delay is set, you will respawn immediately.","color":"red"},{"text":" Check Individual Spawn Delay.","color":"gray"}]

execute if score @s Hi9_RDly_Time matches ..0 run function hi9_respawndelay:internal/respawn