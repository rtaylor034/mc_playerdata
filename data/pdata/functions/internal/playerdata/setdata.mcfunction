#>pdata:internal/playerdata/setdata
# as : player joining
# with : {var -> macro}
#--------------------
# - internal/playerdata/onjoin
#--------------------

$execute store result score @s pdata-player_id run data get storage pdata:data players[{UUID:$(UUID)}].id

$execute positioned $(x) $(y) $(z) run function pdata:internal/playerdata/genname with storage pdata:var macro