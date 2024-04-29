#> pdata:_/impl/admin/wipeplayerdata/log
#--------------------
# @api
#--------------------

data merge storage loggr:in {log:{message:{admin_action:{action:"WIPE_PLAYER_DATA",by:""}}, source: "pdata", level:0}}
$data modify storage loggr:in log.message.admin_action.by set from storage pdata:data players[{UUID:$(UUID)}].name
function loggr:api/log