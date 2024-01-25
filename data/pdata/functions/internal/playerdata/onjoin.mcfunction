#>pdata:internal/playerdata/onjoin
# as : player that joined
# with : @s
#--------------------
# - internal/tick
#--------------------

$execute store result score *onjoin.exists pdata_var if data storage pdata:data players[{UUID:$(UUID)}]

execute if score *onjoin.exists pdata_var matches 0 run function pdata:internal/playerdata/register

$data modify storage pdata:var onjoin.entry set from storage pdata:data players[{UUID:$(UUID)}]

function pdata:internal/api/get_name
data modify storage pdata:var onjoin.entry.name set from storage pdata:out get_name.result

execute store result score @s pdata-player_id run data get storage pdata:var onjoin.entry.id

#-- EVENT : on_register --
data modify storage gvent:in call.in.event set value "#pdata:event/on_register"
data modify storage gvent:in call.in.info.entry set from storage pdata:var onjoin.entry
data modify storage gvent:in call.in.pass.storage set from storage pdata:var onjoin.entry.storage
function gvent:api/call with storage gvent:in call
#------
data modify storage pdata:var onjoin.entry.storage set from storage gvent:out call.pass.storage

#-- EVENT : on_join --
data modify storage gvent:in call.in.event set value "#pdata:event/on_join"
data modify storage gvent:in call.in.info.entry set from storage pdata:var onjoin.entry
data modify storage gvent:in call.in.pass.storage set from storage pdata:var onjoin.entry.storage
function gvent:api/call with storage gvent:in call
#------

#{loggr}
data modify storage loggr:in log.in merge value {source:"pdata", level:3}
data modify storage loggr:in log.in.message.player_joined.player set from storage pdata:var onjoin.entry.name
execute store result storage loggr:in log.in.message.first_time byte 1 run scoreboard players get *onjoin.exists pdata_var
function loggr:api/log with storage loggr:in log

scoreboard players set @s _pdata-rejoin -1

data remove storage pdata:var onjoin
scoreboard players reset *onjoin.exists pdata_var