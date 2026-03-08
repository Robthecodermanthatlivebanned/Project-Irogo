soundRunning <- true

function PlayRandomSound()
{
    if (!soundRunning)
        return

    local r = RandomInt(1,3)

    if (r == 1)
        EntFire("speaker1","PlaySound")
    else if (r == 2)
        EntFire("speaker2","PlaySound")
    else
        EntFire("speaker3","PlaySound")

    EntFire("script_runner","RunScriptCode","PlayRandomSound()",RandomFloat(2,6))
}

function StopSounds()
{
    soundRunning = false
}