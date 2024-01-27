#> pdata:api > get_self
#--------------------
# [AS] self
#--------------------
# <- result: PlayerEntry
#--------------------
#> convience shorthand for getting the PlayerEntry of [self]
#--------------------
#- is only recommended if you don't have an already available macro UUID (or other PlayerEntry indexable data) variable.
#--------------------
# ...
#--------------------

function pdata:impl/get_self/do with entity @s