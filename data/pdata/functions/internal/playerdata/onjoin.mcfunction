#>pdata:internal/playerdata/onjoin
# as : player that joined
# with : @s
#--------------------
# - internal/tick
#--------------------

#there should never exist 2 {data -> players} entries with the same UUID
$execute unless data storage pdata:data players[{UUID:$(UUID)}] run function pdata:internal/playerdata/register

data modify storage pdata:var macro set from storage gssen:settings free_block
data modify storage pdata:var macro.UUID set from entity @s UUID
function pdata:internal/playerdata/setdata with storage pdata:var macro

scoreboard players set @s pdata_rejoin -1

#RESETS
data remove storage pdata:var macro