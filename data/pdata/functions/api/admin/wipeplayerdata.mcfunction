#> pdata:api > admin/wipeplayerdata
#--------------------
# none
#--------------------
# none
#--------------------
#> deletes all player data and resets player ids
#--------------------
#- all players online will be immediately re-assigned a new player id and empty data
#- wiping player data may cause irreversible damage to dependent packs, even if a backup is made
#- becuase of the above statement, this should be a last resort
#--------------------

#{loggr}
data modify storage pdata:var wipeplayerdata.UUID set value "NONE"
data modify storage pdata:var wipeplayerdata.UUID set from entity @s UUID
function pdata:impl/admin/wipeplayerdata/log with storage pdata:var wipeplayerdata

scoreboard players set *maxplayerid pdata_data 0
data remove storage pdata:data players
scoreboard players set @a _pdata-rejoin 0

data remove storage pdata:var wipeplayerdata