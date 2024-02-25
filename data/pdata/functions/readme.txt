GENERAL USE INFO

depends on Gssentials (gssen)
supports Logger (loggr)

its standard to put all custom player data that your pack adds under {data -> players[].storage.<your namespace>}

-- pdata:data --
{
    players[]: PlayerEntry
}

PlayerEntry: {
    UUID: uuid
    guuid: guuid
    name: string
    index: int
    storage: {
        <namespace...>: obj
    }
}
