local cambop = false
function onCreatePost()
 makeLuaSprite("shitsAss","thisIsForTheScreen",-10,-10)
	setObjectCamera("shitsAss",'other')	
addLuaSprite("shitsAss",true)
	makeGraphic("shitsAss",screenWidth+100,screenHeight+100,"000000")
	setProperty("shitsAss.alpha",0)
end

function onStartCountdown()
setProperty("dad.alpha",0)
setProperty("iconP2.alpha",0)
 triggerEvent('Change Character', 'dad', '404')
end
function onUpdatePost()
if curStep == 1552 then
   cambop = true
doTweenAlpha('byegf', 'gf', 0, 3, 'quadInOut');
doTweenY('babyegf', 'gf', -1220 , 5, 'quadInOut')

end
if curStep == 2064 then
   cambop = false
doTweenAlpha('byegf', 'gf', 1, 3, 'quadInOut');
doTweenY('babyegf', 'gf', 130 , 1, 'quadInOut')

end
if curStep == 2323 then
doTweenAlpha('shitsAss', 'shitsAss', 1, 2, 'quadInOut');
end
if curStep == 2359 then
doTweenAlpha('byedad', 'dad', 0, 0.000001, 'quadInOut');
doTweenAlpha('shitsAss', 'shitsAss', 0, 1, 'quadInOut');
 doTweenAngle('tilit', 'camGame', 10, 1.05, 'quadin')
doTweenAlpha('byegf', 'gf', 0, 3, 'quadInOut');
doTweenY('babyegf', 'gf', -1220 , 5, 'quadInOut')
end
if curStep == 2386 then
setProperty('camGame.angle', 0)
doTweenAlpha('byedad', 'dad', 1, 0.2, 'quadInOut');
end
if curStep == 2768 then
doTweenAlpha('byegf', 'gf', 1, 0.1, 'quadInOut');
doTweenY('babyegf', 'gf', 130 , 0.1, 'quadInOut')
makeLuaSprite('grayskyold','StagesBP/purgatory/graysky', -600, -200)
        addLuaSprite('grayskyold',false)
	    setScrollFactor('grayskyold', 0, 0);

makeLuaSprite('bgold','StagesBP/purgatory/3d_Objects', -600, -200)
       addLuaSprite('bgold',false)
scaleObject('bgold', 1.25, 1.25);
	    setScrollFactor('bgold', 0.7, 0.7);

makeLuaSprite('bgold2','StagesBP/purgatory/3dBG_Objects', -600, -200)
       addLuaSprite('bgold2',false)
scaleObject('bgold2', 1.2, 1.2);
	    setScrollFactor('bgold2', 0.5, 0.5);
end
if curStep == 3024 then
   cambop = true
end
if curStep == 3472 then
makeLuaSprite('stageback', 'stageback', -600, -300);
    setScrollFactor('stageback', 0.9, 0.9);
    
    makeLuaSprite('stagefront', 'stagefront', -650, 600);
    setScrollFactor('stagefront', 0.9, 0.9);
    scaleObject('stagefront', 1.1, 1.1);

    makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
    setScrollFactor('stagecurtains', 1.3, 1.3);
    scaleObject('stagecurtains', 0.9, 0.9);

    addLuaSprite('stageback', false);
    addLuaSprite('stagefront', false);
    addLuaSprite('stagecurtains', false);

end
if curStep == 3504 then
removeLuaSprite('stageback')
        removeLuaSprite('stagefront')
        removeLuaSprite('stagecurtains')
end
if curStep == 3792 then
   cambop = false
doTweenAlpha('byegf', 'gf', 0, 3, 'quadInOut');
doTweenY('babyegf', 'gf', -1220 , 5, 'quadInOut')
end

end
function onBeatHit()
if cambop == true then
if curBeat % 1 == 0 then
triggerEvent('Add Camera Zoom', '0.05', '0.01')
 else
  triggerEvent('Add Camera Zoom', '0.05', '0.005')
    
end
end
end