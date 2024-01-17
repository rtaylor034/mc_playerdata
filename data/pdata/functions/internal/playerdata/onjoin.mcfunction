#>pdata:internal/playerdata/onjoin
# as : player that joined
# with : @s
#--------------------
# - internal/tick
#--------------------

data modify storage loggr:in log.in.message.player_joined.first_time set value false

#there should never exist 2 {data -> players} entries with the same UUID
$execute unless data storage pdata:data players[{UUID:$(UUID)}] run function pdata:internal/playerdata/register

data modify storage pdata:var macro set from storage gssen:settings free_block
data modify storage pdata:var macro.UUID set from entity @s UUID
function pdata:internal/playerdata/setdata with storage pdata:var macro

#EVENT CALL : on_join
data modify storage pdata:var macro.pass.UUID set from storage pdata:var macro.UUID
data modify storage pdata:var macro.pass.guuid set from storage pdata:var macro.guuid
execute store result storage pdata:var macro.pass.id int 1 run scoreboard players get @s pdata-player_id
function #pdata:events/on_join with storage pdata:var macro.pass

#{loggr}
data modify storage loggr:in log.in merge value {source:"pdata", level:3}
$data modify storage loggr:in log.in.message.player_joined.player set from storage pdata:data players[{UUID:$(UUID)}].name
function loggr:api/log with storage loggr:in log

scoreboard players set @s _pdata-rejoin -1

data remove storage pdata:var macro