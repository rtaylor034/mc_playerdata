#> pdata:api > merge_self
#--------------------
# [AS] self
# -> storage: obj
#--------------------
# ...
#--------------------
#> convience shorthand for merging storage to the PlayerEntry of [self]
#--------------------
#- is only recommended if you don't have an already available macro UUID (or other PlayerEntry indexable data) variable.
#--------------------
# ...
#--------------------

function pdata:impl/merge_self/do with entity @s

data remove storage pdata:in merge_self