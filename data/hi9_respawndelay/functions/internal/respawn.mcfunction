execute if score #Gamemode Hi9_RDly_Var matches 0 run gamemode survival @s
execute if score #Gamemode Hi9_RDly_Var matches 1 run gamemode creative @s
execute if score #Gamemode Hi9_RDly_Var matches 2 run gamemode adventure @s

tag @s remove Hi9_RD_Dead

scoreboard objectives remove Hi9_RDly_tmp
scoreboard objectives add Hi9_RDly_tmp dummy

# Calculate diff between armor_stand and the dead player
execute as @e[type=armor_stand,tag=Hi9_ResD] run scoreboard players operation @s Hi9_RDly_tmp = @s Hi9_RDly_ID
scoreboard players operation @e[type=armor_stand,tag=Hi9_ResD] Hi9_RDly_tmp -= @s Hi9_RDly_ID

# No diff!
tp @s @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0},limit=1]

title @s times 10 20 10
execute if score #Lang Hi9_RDly_Var matches 0 run title @s subtitle {"text":"復活しました！","color":"green"}
execute if score #Lang Hi9_RDly_Var matches 1 run title @s subtitle {"text":"You have respawned!","color":"green"}
title @s title ""

execute if score #DisableEff Hi9_RDly_Var matches 0 run effect clear @s blindness

execute if score #DisableEff Hi9_RDly_Var matches 0 run execute at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0
execute if score #DisableEff Hi9_RDly_Var matches 0 run execute at @s run particle poof ~ ~ ~ 0.5 1 0.5 2 50

# um if no armor stand matches...
execute unless entity @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run gamemode survival @s
execute unless entity @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run tellraw @s "Because your armor stand had been killed, could not teleport you to the spawn point!"

kill @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}]
scoreboard players set @s Hi9_RDly_Count 0