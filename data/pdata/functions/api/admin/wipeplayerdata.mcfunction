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

scoreboard players set *maxplayerid pdata_data 0
data remove storage pdata:data players
scoreboard players set @a pdata_rejoin 0

#{loggr}
function loggr:api/log {in:{message:"PLAYER DATA WIPED (pdata:api/wipeplayerdata called).", source: "pdata", level:0}}