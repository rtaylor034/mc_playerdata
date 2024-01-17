#> pdata:impl/admin/wipeplayerdata/log
#--------------------
# @api
#--------------------

data merge storage loggr:in {log:{in:{message:{admin_action:{action:"WIPE_PLAYER_DATA",by:""}}, source: "pdata", level:0}}}
$data modify storage loggr:in log.in.message.admin_action.by set from storage pdata:data players[{UUID:$(UUID)}].name
function loggr:api/log with storage loggr:in log