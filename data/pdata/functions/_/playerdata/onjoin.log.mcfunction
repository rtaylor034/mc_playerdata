#> pdata:_/playerdata/onjoin.log

data modify storage loggr:in log merge value {source:"pdata", level:3}
data modify storage loggr:in log.message.player_joined.player set from storage pdata:var onjoin.entry
data remove storage loggr:in log.message.player_joined.player.storage
execute store success storage loggr:in log.message.player_joined.first_time byte 1 unless score *onjoin.exists pdata_var matches 1..
function loggr:api/log