# R I P
# Sync death count
scoreboard players operation @s Hi9_RDly_DeathP = @s Hi9_RDly_Deaths

# Spectator for dead players. Gave up sustaining adventure mode
gamemode spectator @s
tag @s add Hi9_RD_Dead


execute if score #DisableEff Hi9_RDly_Var matches 0 if score #DisableBroad Hi9_RDly_Var matches 0 run execute at @s run playsound entity.dolphin.death player @a[distance=..15] ~ ~ ~ 1 1
execute if score #DisableEff Hi9_RDly_Var matches 0 if score #DisableBroad Hi9_RDly_Var matches 1 run execute at @s run playsound entity.dolphin.death player @s ~ ~ ~ 1 1
execute if score #DisableEff Hi9_RDly_Var matches 0 run effect give @s blindness 1 1 true
execute if score #DisableEff Hi9_RDly_Var matches 0 if score #DisableBroad Hi9_RDly_Var matches 0 run particle minecraft:item gray_concrete ~ ~ ~ 0.4 1.2 0.4 0.08 50 normal @a[distance=..30]
execute if score #DisableEff Hi9_RDly_Var matches 0 if score #DisableBroad Hi9_RDly_Var matches 1 run particle minecraft:item gray_concrete ~ ~ ~ 0.4 1.2 0.4 0.08 50 normal @s
title @s times 0 20 10

#Hi9_RDly_Time
# - !Global

# local
scoreboard players operation @s Hi9_RDly_Count = @s Hi9_RDly_Time

# global
execute if score #Global Hi9_RDly_Time matches 0.. run scoreboard players operation @s Hi9_RDly_Count = #Global Hi9_RDly_Time 

execute unless score #Global Hi9_RDly_Time matches 0.. if score @s Hi9_RDly_Time matches ..-1 if score #Lang Hi9_RDly_Var matches 0 run tellraw @s [{"text":"[Hi9_RespawnDelay] リスポーン時間が設定されていないため、即時にリスポーンします。","color":"red"},{"text":" おそらく 個人設定 が正しく設定されていません。","color":"gray"}]
execute unless score #Global Hi9_RDly_Time matches 0.. if score @s Hi9_RDly_Time matches ..-1 if score #Lang Hi9_RDly_Var matches 1 run tellraw @s [{"text":"[Hi9_RespawnDelay] Because no respawn delay is set, you will respawn immediately.","color":"red"},{"text":" Check Individual Spawn Delay.","color":"gray"}]

execute if score @s Hi9_RDly_Count matches ..0 run function hi9_respawndelay:respawn