#>pdata:internal/playerdata/register
# as : player registering
#--------------------
# - internal/playerdata/onjoin
#--------------------

scoreboard players add *maxplayerid pdata_data 1
execute store result storage pdata:var register.id int 1 run scoreboard players get *maxplayerid pdata_data

data modify storage pdata:var register.UUID set from entity @s UUID

data modify storage gssen:in guuid.in.UUID set from storage pdata:var register.UUID
function gssen:api/inline/guuid with storage gssen:in guuid

data modify storage pdata:var register.guuid set from storage gssen:out guuid.result

#EVENT CALL : on_register
function #pdata:events/on_register with storage pdata:var register

data modify storage pdata:var register.storage set value {}

data modify storage pdata:data players prepend from storage pdata:var register

#{loggr}
data modify storage pdata:var register.log.in set value {source:"pdata", level:3}
data modify storage pdata:var register.log.in.message."new player registered" set from storage pdata:data players[0]
function loggr:api/log with storage pdata:var register.log

#resets
data remove storage pdata:var register