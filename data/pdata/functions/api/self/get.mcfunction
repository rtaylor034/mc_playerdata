# pdata:api > self/get
#--------------------
# [AS] self
#--------------------
# <- result: PlayerEntry
#--------------------
#> gets the player entry of [self].
#--------------------
#- literal shorthand for calling pdata:api/index/get with [self]'s 'pdata-index' score.
#--------------------
# ...
#--------------------

execute store result storage pdata:in get.index int 1 run scoreboard players get @s pdata-index
function pdata:api/index/get