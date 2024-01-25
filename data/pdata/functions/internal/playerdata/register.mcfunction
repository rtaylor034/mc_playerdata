#>pdata:internal/playerdata/register
# as : player registering
#--------------------
# - internal/playerdata/onjoin
#--------------------

scoreboard players add *maxplayerid pdata_data 1
execute store result storage pdata:var register.id int 1 run scoreboard players get *maxplayerid pdata_data

data modify storage pdata:var register.UUID set from entity @s UUID

data modify storage gssen:in guuid.in.UUID set from storage pdata:var register.UUID
function gssen:api/meta/guuid with storage gssen:in guuid

data modify storage pdata:var register.guuid set from storage gssen:out guuid.result

data modify storage pdata:var register.storage set value {}

data modify storage pdata:data players append from storage pdata:var register

#resets
data remove storage pdata:var register