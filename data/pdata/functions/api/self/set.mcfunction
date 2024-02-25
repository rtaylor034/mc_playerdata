# pdata:api > self/set
#--------------------
# [AS] self
# -> storage: obj
#--------------------
# ...
#--------------------
#> sets the storage of the player entry of [self] to <storage>.
#--------------------
#- literal shorthand for calling pdata:api/index/set with [self]'s 'pdata-index' score.
#--------------------
# ...
#--------------------

execute store result storage pdata:in set.index int 1 run scoreboard players get @s pdata-index
function pdata:api/index/set