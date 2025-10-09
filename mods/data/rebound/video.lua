function onStartCountdown()
    if not playedVideo and not seenCutscene then
        startVideo('reboundcutscene')
        playedVideo = true
        return Function_Stop
    end
end