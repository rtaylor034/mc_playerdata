#>pdata:_/playerdata/register
# as : player registering
#--------------------
# ./onjoin
#--------------------

execute unless score *max_index pdata_data matches 0.. run scoreboard players set *max_index pdata_data 0

execute store result storage pdata:var register.index int 1 run scoreboard players get *max_index pdata_data

data modify storage pdata:var register.UUID set from entity @s UUID

data modify storage gssen:in guuid.UUID set from storage pdata:var register.UUID
function gssen:api/meta/guuid

data modify storage pdata:var register.guuid set from storage gssen:out guuid.result

data modify storage pdata:var register.storage set value {}

data modify storage pdata:data players append from storage pdata:var register
data modify storage pdata:var onjoin.entry set from storage pdata:var register

scoreboard players add *max_index pdata_data 1

#resets
data remove storage pdata:var register