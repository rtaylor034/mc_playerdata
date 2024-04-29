# pdata:api > index/set
#--------------------
# -> index: int | obj
# -> storage: obj
#--------------------
# ...
#--------------------
#> sets the storage of the player entry at <index> to <storage>.
#--------------------
#- this REPLACES THE ENTIRE storage of the entry with <storage>.
#- meant to be used with pdata:api/index/get, to get the storage, modify just your namespace, and then set the storage back with this function.
#--------------------
# 1 - player entry found.
# 0 - no player entry found under <index>, or <index> matched more than 1 entry.
#--------------------

execute store result score *set pdata_return run function pdata:_/impl/index/set/do with storage pdata:in set

data remove storage pdata:in set

return run scoreboard players get *set pdata_return