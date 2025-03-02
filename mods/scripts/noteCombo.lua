-- Código modificado con las correcciones

local lastMustHit = false
local noteHits = 0
local separatedHits = ''

function onCreatePost()
    if getPropertyFromClass('backend.ClientPrefs', 'data.comboStacking') then
        lastMustHit = mustHitSection
        precacheSound('noteComboSound')

        local x = defaultBoyfriendX / 10 + getProperty('boyfriend.x') / 4
        local y = defaultBoyfriendY / 10 + getProperty('boyfriend.y') / 6 + 300
        if getPropertyFromClass('PlayState', 'isPixelStage') or
            getProperty('camGame.zoom') > 1 then
            x = x - 180
            y = y / 1.3
        end
        makeAnimatedLuaSprite('noteCombo', 'noteCombo', x, y)
        setScrollFactor('noteCombo', 0.5, 0.5)

        addAnimationByPrefix('noteCombo', 'appear', 'appear', 24, false)
        addAnimationByPrefix('noteCombo', 'disappear', 'disappear', 40, false)

        setProperty('noteCombo.visible', false)
        setProperty('noteCombo.active', false)
        setProperty('noteCombo.antialiasing',
                    getPropertyFromClass('backend.ClientPrefs', 'data.antialiasing'))

        addLuaSprite('noteCombo', true)

        -- Esto se repite aproximadamente 4 veces en el código
        for i = 1, 3 do
            local tag = 'noteComboN' .. i
            makeAnimatedLuaSprite(tag, 'noteComboNumbers', x - 170 + i * 160,
                                  y + 110 - i * 50)
            setScrollFactor(tag, 0.5, 0.5)
            scaleObject(tag, 0.99, 0.99)
            for m = 0, 9 do
                addAnimationByPrefix(tag, m .. 'a', m .. '_appear', 24, false)
                addAnimationByPrefix(tag, m .. 'd', m .. '_disappear', 24, false)
            end
            setProperty(tag .. '.visible', false)
            setProperty(tag .. '.active', false)
            addLuaSprite(tag, true)
        end
    end
end

function animBullshit(anim, force)
    if getPropertyFromClass('backend.ClientPrefs', 'data.comboStacking') then
        if force == nil then force = false end
        playAnim('noteCombo', anim, force)

        local ox, oy = 0, 0
        if anim == 'disappear' then ox = -150 end

        setProperty('noteCombo.offset.x', ox)
        setProperty('noteCombo.offset.y', oy)
    end
end

function onUpdate()
    if getPropertyFromClass('backend.ClientPrefs', 'data.comboStacking') then
        if lastMustHit ~= mustHitSection then
            lastMustHit = mustHitSection
            if not lastMustHit and (curBeat % 4 == 0 or curBeat % 6 == 0) and noteHits > 1 then
                playSound('noteComboSound')

                setProperty('noteCombo.visible', true)
                setProperty('noteCombo.active', true)
                animBullshit('appear', true)

                separatedHits = ''
                local wtf = tostring(noteHits)
                for i = 1, 3 do
                    local num = string.sub(wtf, i, i)
                    if num ~= '' then
                        separatedHits = separatedHits .. num
                    else
                        separatedHits = ' ' .. separatedHits
                    end
                end

                for i = 1, 3 do
                    local tag = 'noteComboN' .. i
                    local num = string.sub(separatedHits, i, i)
                    if num ~= '' and num ~= ' ' then
                        setProperty(tag .. '.visible', true)
                        setProperty(tag .. '.active', true)
                        objectPlayAnimation(tag, num .. 'a')
                    else
                        setProperty(tag .. '.visible', false)
                        setProperty(tag .. '.active', false)
                    end
                end

                noteHits = 0
            end
        end
    end

    if getProperty('noteCombo.animation.finished') then
        local ateUrFrame = getProperty('noteCombo.animation.curAnim.name')
        if ateUrFrame == 'appear' then
            animBullshit('disappear')
            for i = 1, 3 do
                local tag = 'noteComboN' .. i
                local num = string.sub(separatedHits, i, i)
                if num ~= '' and num ~= ' ' then
                    objectPlayAnimation(tag, num .. 'd')
                end
            end
        elseif ateUrFrame == 'disappear' then
            setProperty('noteCombo.visible', false)
            setProperty('noteCombo.active', false)
            -- Las longitudes de los fotogramas no son iguales, pero no importa
            for i = 1, 3 do
                local tag = 'noteComboN' .. i
                local num = string.sub(separatedHits, i, i)
                if num ~= '' and num ~= ' ' then
                    setProperty(tag .. '.visible', false)
                    setProperty(tag .. '.active', false)
                end
            end
        end
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if getPropertyFromClass('backend.ClientPrefs', 'data.comboStacking') then
        if not isSustainNote then noteHits = noteHits + 1 end
    end
end

function noteMissPress() 
    if getPropertyFromClass('backend.ClientPrefs', 'data.comboStacking') then
        noteHits = 0 
    end
end

function noteMiss() 
    if getPropertyFromClass('backend.ClientPrefs', 'data.comboStacking') then
        noteHits = 0 
    end
end
