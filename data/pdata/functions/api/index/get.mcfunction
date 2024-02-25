# pdata:api > index/get
#--------------------
# -> index: int | obj
#--------------------
# <- result: PlayerEntry
#--------------------
#> gets the player entry that matches <index>.
#--------------------
#- literally just returns {pdata:data -> players[<index>]} (via macro).
#- because of this, one can set <index> to an object (ex: set <index.UUID> to the player's UUID), and this will return the player entry that matches, given there is only 1 match; although this impacts performance significantly more.
#- a player's 'pdata-index' score reflects what index their entry is located at in the players array.
#--------------------
# 1 - player entry found.
# 0 - no player entry found under <index>, or <index> matched more than 1 entry.
#--------------------

data remove storage pdata:out get
execute store result score *get pdata_return run function pdata:impl/index/get/do with storage pdata:in get

data remove storage pdata:in get

return run scoreboard players get *get pdata_return