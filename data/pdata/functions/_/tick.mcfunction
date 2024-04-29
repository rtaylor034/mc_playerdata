#>pdata:_/tick
#--------------------
# @TICK
#--------------------

#on join
execute as @a unless score @s _pdata-rejoin matches -1 at @s run function pdata:_/playerdata/onjoin with entity @s

schedule function pdata:_/tick 1t