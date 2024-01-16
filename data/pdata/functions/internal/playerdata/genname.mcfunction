#>pdata:internal/playerdata/genname
# as : player joining
# at : {gssen:settings -> free_block}
# with : {var -> macro}
#--------------------
# - internal/playerdata/setdata
#--------------------

setblock ~ ~ ~ barrel
loot replace block ~ ~ ~ container.0 loot pdata:player/head
$data modify storage pdata:data players[{UUID:$(UUID)}].name set from block ~ ~ ~ Items[0].tag.SkullOwner.Name
setblock ~ ~ ~ bedrock