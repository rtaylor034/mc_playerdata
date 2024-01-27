#>pdata:internal/tick
#--------------------
# @TICK
#--------------------

#on join
execute as @a unless score @s _pdata-rejoin matches -1 at @s run function pdata:internal/playerdata/onjoin with entity @s
