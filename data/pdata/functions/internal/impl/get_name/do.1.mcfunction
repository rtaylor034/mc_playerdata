#> pdata:internal/impl/get_name/do.1

setblock ~ ~ ~ barrel
loot replace block ~ ~ ~ container.0 loot pdata:player/head
data modify storage pdata:out get_name.result set from block ~ ~ ~ Items[0].tag.SkullOwner.Name
setblock ~ ~ ~ bedrock