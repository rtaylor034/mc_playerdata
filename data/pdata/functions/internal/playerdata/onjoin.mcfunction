#>pdata:internal/playerdata/onjoin
# as : player that joined
# with : @s
#--------------------
# internal/tick
#--------------------

$data modify storage pdata:var onjoin.entry set from storage pdata:data players[{UUID:$(UUID)}]
execute store result score *onjoin.exists pdata_var if data storage pdata:var onjoin.entry

execute if score *onjoin.exists pdata_var matches 0 run function pdata:internal/playerdata/register

function pdata:internal/api/get_name
data modify storage pdata:var onjoin.entry.name set from storage pdata:out get_name.result

execute store result score @s pdata-index run data get storage pdata:var onjoin.entry.index

#-- EVENT : on_register --
data modify storage gvent:in call.event set value "#pdata:event/on_register"
data modify storage gvent:in call.info.entry set from storage pdata:var onjoin.entry
data modify storage gvent:in call.pass.storage set from storage pdata:var onjoin.entry.storage
function gvent:api/call
#------
data modify storage pdata:var onjoin.entry.storage set from storage gvent:out call.pass.storage

#-- EVENT : on_join --
data modify storage gvent:in call.event set value "#pdata:event/on_join"
data modify storage gvent:in call.info.entry set from storage pdata:var onjoin.entry
data modify storage gvent:in call.pass.storage set from storage pdata:var onjoin.entry.storage
function gvent:api/call
#------
data modify storage pdata:var onjoin.entry.storage set from storage gvent:out call.pass.storage

$data modify storage pdata:data players[{UUID:$(UUID)}] set from storage pdata:var onjoin.entry

#{loggr}
execute if score *loggr load.status matches 1 run function pdata:internal/playerdata/onjoin.log

scoreboard players set @s _pdata-rejoin -1

data remove storage pdata:var onjoin
scoreboard players reset *onjoin.exists pdata_var