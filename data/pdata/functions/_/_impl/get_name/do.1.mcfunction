#> pdata:_/_impl/get_name/do.1

setblock ~ ~ ~ barrel
loot replace block ~ ~ ~ container.0 loot pdata:_/head
data modify storage pdata:out get_name.result set from block ~ ~ ~ Items[0].tag.SkullOwner.Name
setblock ~ ~ ~ bedrock