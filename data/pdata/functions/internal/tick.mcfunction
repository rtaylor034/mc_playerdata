#>pdata:internal/tick
#--------------------
# @TICK
#--------------------

#on join
execute as @a unless score @s pdata_rejoin matches -1 run function pdata:internal/playerdata/onjoin with entity @s
