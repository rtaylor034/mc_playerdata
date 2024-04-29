# pdata:api > index/merge
#--------------------
# -> index: int | obj
# -> storage: obj
#--------------------
# ...
#--------------------
#> merges the storage of the player entry at <index> with <storage>.
#--------------------
# ...
#--------------------
# 1 - player entry found.
# 0 - no player entry found under <index>, or <index> matched more than 1 entry.
#--------------------

execute store result score *merge pdata_return run function pdata:_/impl/index/merge/do with storage pdata:in merge

data remove storage pdata:in merge

return run scoreboard players get *merge pdata_return