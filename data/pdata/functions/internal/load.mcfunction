#>pdata:internal/load
#--------------------
# @LOAD
#--------------------

#declare storage pdata:var
#declare storage pdata:in
#declare storage pdata:out
#declare storage pdata:data

scoreboard players set *pdata load.status 1

#scoreboards
scoreboard objectives add pdata_var dummy
scoreboard objectives add pdata_data dummy

scoreboard objectives add _pdata-rejoin minecraft.custom:minecraft.leave_game

scoreboard objectives add pdata-index dummy

schedule clear pdata:internal/tick
schedule function pdata:internal/tick 1t