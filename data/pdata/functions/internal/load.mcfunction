#>pdata:internal/load
#--------------------
# @LOAD
#--------------------

#declare storage pdata:var
#declare storage pdata:in
#declare storage pdata:out
#declare storage pdata:data

#declare tag/function pdata:events/on_join
#declare tag/function pdata:events/on_register

#scoreboards
scoreboard objectives add pdata_var dummy

scoreboard objectives add _pdata-rejoin minecraft.custom:leave_game

scoreboard objectives add pdata-player_id dummy
