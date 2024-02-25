# pdata:api > self/merge
#--------------------
# [AS] self
# -> storage: obj
#--------------------
# ...
#--------------------
#> merges the storage of the player entry of [self] with <storage>.
#--------------------
#- literal shorthand for calling pdata:api/index/merge with [self]'s 'pdata-index' score.
#--------------------
# ...
#--------------------

execute store result storage pdata:in merge.index int 1 run scoreboard players get @s pdata-index
function pdata:api/index/merge