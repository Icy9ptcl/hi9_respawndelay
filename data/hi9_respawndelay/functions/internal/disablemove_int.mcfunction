# なんか ごっちゃになってて面白くないので
# as {人 主観} で実行したい
execute as @e[type=armor_stand,tag=Hi9_ResD] run scoreboard players operation @s Hi9_RDly_tmp = @s Hi9_RDly_ID
execute as @e[type=armor_stand,tag=Hi9_ResD] run scoreboard players operation @s Hi9_RDly_tmp -= @a[tag=Hi9_RDly_Resp] Hi9_RDly_ID

# No diff!
execute as @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] run tp @a[tag=Hi9_RDly_Resp] @s

tag @e[type=armor_stand,tag=Hi9_ResD,scores={Hi9_RDly_tmp=0}] remove Hi9_RDly_WIP

#To / do
#
# Hi9_RD_Dead な人が disablemove_int に入る. 
#
#        _________________
#       |  企画作業の負荷 |
# ________________________________
# |  _______   ________          |
# |         |  |      |          |
# |  -------   |      |    |     |
# |         |  |      |  --+--   |
# |  _______   L______」   L__   |
# L_______________________________
#
# すごい むずかしいよね。それがしなりにはこう思います
