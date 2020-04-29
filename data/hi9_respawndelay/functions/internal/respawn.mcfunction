gamemode survival @s

#Who will respawn ???
tag @s add Hi9_RDly_Resp

scoreboard objectives remove Hi9_RDly_tmp
scoreboard objectives add Hi9_RDly_tmp dummy

# Calculate diff between armor_stand and the dead player
execute as @e[type=armor_stand,tag=Hi9_ResD] run scoreboard players operation @s Hi9_RDly_tmp = @s Hi9_RDly_ID
execute as @e[type=armor_stand,tag=Hi9_ResD] run scoreboard players operation @s Hi9_RDly_tmp -= @a[tag=Hi9_RDly_Resp] Hi9_RDly_ID

# No diff!
execute as @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run tp @a[tag=Hi9_RDly_Resp] @s

title @s times 10 20 10
execute if score #Lang Hi9_RDly_Var matches 0 run title @s subtitle {"text":"復活しました！","color":"green"}
execute if score #Lang Hi9_RDly_Var matches 1 run title @s subtitle {"text":"You have respawned!","color":"green"}
title @s title ""

effect clear @s blindness

execute at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0
execute at @s run particle poof ~ ~ ~ 0.5 1 0.5 2 50

# um if no armor stand matches...
execute unless entity @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run gamemode survival @s
execute unless entity @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run tellraw @s "Because your armor stand had been killed, could not teleport you to the spawn point!"

execute as @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run kill @s
scoreboard players set @s Hi9_RDly_Count 0

tag @s remove Hi9_RDly_Resp
