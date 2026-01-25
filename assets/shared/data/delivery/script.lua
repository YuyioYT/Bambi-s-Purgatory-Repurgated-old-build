local cambop = false
local grabop = false
local Twister = false
local pixela = false
local pxSize = 0
local shaderName = 'scroll'
local shaderN = 'wiggle'
function onCreatePost()

	addHaxeLibrary("ShaderFilter", "openfl.filters")

runHaxeCode([[
		game.initLuaShader('pixel');

		shader0 = game.createRuntimeShader('pixel');
		shader0.setFloat('pxSize',0.1);

		game.camGame.setFilters([new ShaderFilter(shader0)]);
		game.camHUD.setFilters([new ShaderFilter(shader0)]);
	]])
setProperty('camZooming', true)
 makeLuaSprite("shitsAss","thisIsForTheScreen",-10,-10)
	setObjectCamera("shitsAss",'other')	
addLuaSprite("shitsAss",true)
	makeGraphic("shitsAss",screenWidth+100,screenHeight+100,"000000")
	setProperty("shitsAss.alpha",0)

initLuaShader('wiggle')
 makeLuaSprite('pizzacrust', 'StagesBP/crusti/crusti/pizza',-1400,-600)
setSpriteShader('pizzacrust', shaderN)
 setScrollFactor('pizzacrust', 0.5, 0.5)
scaleObject('pizzacrust', 1.4, 1.4)
setObjectOrder('pizzacrust', 7, false);
setProperty('pizzacrust.alpha',1)
addLuaSprite('pizzacrust' ,false)


makeLuaSprite("gg","thisIsForTheScreen",-15000,-15000)
	setObjectCamera("gg",'camGame') -- 'other' for in front of hud, 'hud' to be on 
	addLuaSprite("gg",true)
	makeGraphic("gg",screenWidth+100,screenHeight+100,"000000")
	setProperty("gg.alpha",0)
 setScrollFactor('gg', 0, 0);
scaleObject('gg', 50, 50)


makeLuaSprite('void', '', -3250, -1600);
makeGraphic("void",screenWidth+100,screenHeight+100,"000000")
	setScrollFactor('void', 0, 0);
	        scaleObject('void', 7, 7)
setProperty("void.alpha",0)
addLuaSprite('void', false);


makeAnimatedLuaSprite('pizzacore', 'hud/delivery/PIzzaCore', -80, -450);
	addAnimationByPrefix('pizzacore', 'idle', 'idle', 16, true);
objectPlayAnimation('pizzacore','idle',true)
	setScrollFactor('pizzacore', 1, 1);
	scaleObject('pizzacore', 1.6, 1.6);
	addLuaSprite('pizzacore', false);
setProperty("pizzacore.alpha",0)

makeLuaSprite('spot','spotlight',690,-730)
setScrollFactor('spot', 1, 1);
	scaleObject('spot', 1, 1.5);
		addLuaSprite('spot',true)
		setProperty('spot.alpha',0)

makeLuaSprite('spot2','spotlight',-150,-680)
setScrollFactor('spot2', 1, 1);
	scaleObject('spot2', 1.2, 1.5);
		addLuaSprite('spot2',true)
		setProperty('spot2.alpha',0)

makeLuaSprite('spotB','boyfriend_spot',685,650)
setScrollFactor('spotB', 1, 1);
	scaleObject('spotB', 2.2, 2.2);
		addLuaSprite('spotB',false)
		setProperty('spotB.alpha',0)

makeLuaSprite('spotC','boyfriend_spot',-175,600)
setScrollFactor('spotC', 1, 1);
	scaleObject('spotC', 2.8, 2.8);
		addLuaSprite('spotC',false)
		setProperty('spotC.alpha',0)


initLuaShader(shaderName)
makeLuaSprite('pizzabar3', 'hud/delivery/pizzabar',560,-40)
 setScrollFactor('pizzabar3', 1, 1)
scaleObject('pizzabar3', 0.55, 0.55)
setSpriteShader('pizzabar3', shaderName)
setObjectCamera('pizzabar3','camhud')
doTweenAngle('turnpizza', 'pizzabar3', 90, 0.1, 'circOut')
setProperty('pizzabar3.alpha',0)
addLuaSprite('pizzabar3' ,false)

initLuaShader(shaderName)
makeLuaSprite('pizzabar', 'hud/delivery/pizzabar',250,-40)
 setScrollFactor('pizzabar', 1, 1)
scaleObject('pizzabar', 0.55, 0.55)
setSpriteShader('pizzabar', shaderName)
setObjectCamera('pizzabar','camhud')
setProperty('pizzabar.alpha',1)
addLuaSprite('pizzabar' ,false)
doTweenY("barup.tw", "pizzabar", getProperty('pizzabar.y') - 250, 0.1, 'cubeout')

initLuaShader(shaderName)
makeLuaSprite('pizzabar4', 'hud/delivery/pizzabar2',-560,-320)
 setScrollFactor('pizzabar4', 1, 1)
scaleObject('pizzabar4', 1, 1)
setSpriteShader('pizzabar4', shaderName)
setObjectCamera('pizzabar4','camhud')
doTweenAngle('turnpizza2', 'pizzabar4', 90, 0.1, 'circOut')
setProperty('pizzabar4.alpha',0)
addLuaSprite('pizzabar4' ,false)

initLuaShader(shaderName)
makeLuaSprite('pizzabar2', 'hud/delivery/pizzabar2',-230,-320)
 setScrollFactor('pizzabar2', 1, 1)
scaleObject('pizzabar2', 1, 1)
setSpriteShader('pizzabar2', shaderName)
setObjectCamera('pizzabar2','camhud')
setProperty('pizzabar2.alpha',1)
addLuaSprite('pizzabar2' ,false)
doTweenY("bar2up.tw", "pizzabar2", getProperty('pizzabar2.y') + 250, 0.1, 'cubeout')


makeLuaSprite('pizzaring', 'hud/delivery/pizza_ring',760,150)
 setScrollFactor('pizzaring', 1, 1)
scaleObject('pizzaring', 1.4, 1.4)
setObjectCamera('pizzaring','camHUD')
setProperty('pizzaring.alpha',1)
addLuaSprite('pizzaring' ,false)
doTweenX("ringright.tw", "pizzaring", getProperty('pizzaring.x') + 450, 0.1, 'cubeout')



makeLuaSprite('dapizza', 'hud/delivery/DApizza',-450,-500)
 setScrollFactor('dapizza', 1, 1)
scaleObject('dapizza', 1.2, 1.2)
setObjectCamera('dapizza','camHUD')
setProperty('dapizza.alpha',1)
addLuaSprite('dapizza' ,false)
doTweenX("ringleft.tw", "dapizza", getProperty('dapizza.x') - 450, 0.1, 'cubeout')


makeLuaSprite("ggw","",-15000,-15000)
	setObjectCamera("ggw",'camGame')
	addLuaSprite("ggw",true)
	makeGraphic("ggw",screenWidth+100,screenHeight+100,"ffffff")
	setProperty("ggw.alpha",0)
 setScrollFactor('ggw', 0, 0);
scaleObject('ggw', 50, 50)

makeLuaSprite("orangehot","hud/delivery/orangegrad",0,0)
	setObjectCamera("orangehot",'other')
	addLuaSprite("orangehot",true)
		setProperty("orangehot.alpha",0)

makeLuaSprite('whiteout', 'StagesBP/ui/nr', 0, 0)
	setScrollFactor('whiteout', 0, 0)
	setProperty('whiteout.alpha', 0)
	setObjectCamera('whiteout', 'camGAME')
addLuaSprite('whiteout' ,true)

makeLuaSprite('BIGpizza', 'hud/delivery/DApizza',850,-1100)
 setScrollFactor('BIGpizza', 1, 1)
scaleObject('BIGpizza', 3.2, 3.2)
setObjectCamera('BIGpizza','other')
setProperty('BIGpizza.alpha',1)
addLuaSprite('BIGpizza' ,true)

end
function Nb()
for i = 0, 3 do
	        setPropertyFromGroup('playerStrums', i, 'x', _G['defaultPlayerStrumX'..i] - getRandomInt(-50, screenWidth / 7))
	    	setPropertyFromGroup('playerStrums', i, 'y', _G['defaultPlayerStrumY'..i] - getRandomInt(5, screenHeight / 11))

	    	setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultOpponentStrumX'..i] + getRandomInt(-50, screenWidth / 7))
	    	setPropertyFromGroup('opponentStrums', i, 'y',  _G['defaultOpponentStrumY'..i] - getRandomInt(5, screenHeight / 11))

            setPropertyFromGroup('playerStrums', i, 'angle', getRandomInt(-180, 180))
            setPropertyFromGroup('opponentStrums', i, 'angle', getRandomInt(-180, 180))

	    	noteTweenX('playerStrumsX'..i, i + 4, _G['defaultPlayerStrumX' .. i], (crochet/1000), 'circOut')
            noteTweenY('playerStrumsY'..i, i + 4, _G['defaultPlayerStrumY' .. i], (crochet/1000), 'circOut')
		
            noteTweenX('opponentStrumsX'..i, i, _G['defaultOpponentStrumX' .. i], (crochet/1000), 'circOut')
            noteTweenY('opponentStrumsY'..i, i, _G['defaultOpponentStrumY' .. i], (crochet/1000), 'circOut')

            noteTweenAngle('playerStrumsAngle'..i, i + 4, 0, (crochet/1000), 'circOut')
            noteTweenAngle('opponentStrumsAngle'..i, i, 0, (crochet/1000), 'circOut')
end
end

function onStartCountdown()
setProperty("dad.alpha",0)
setProperty("iconP2.alpha",0)
 triggerEvent('Change Character', 'dad', 'crusti')

end
function onUpdate()
setShaderFloat('pizzacrust', 'uWaveAmplitude', 0.1)
setShaderFloat('pizzacrust', 'uFrequency', 7)
setShaderFloat('pizzacrust', 'uSpeed', 2.25)
	songPos = getSongPosition()
	currentBeat = (songPos/1000)*(bpm/60)
setShaderFloat("pizzabar", "iTime", os.clock() * 5)
setShaderFloat("pizzabar2", "iTime", os.clock() * -5)
setShaderFloat("pizzabar3", "iTime", os.clock() * 5)
setShaderFloat("pizzabar4", "iTime", os.clock() * -5)
	setProperty("pizzacore.angle",currentBeat*35)
	setProperty("pizzaring.angle",currentBeat*50)	
	setProperty("dapizza.angle",currentBeat*-70)
setProperty("BIGpizza.angle",currentBeat*-100)
if pixela == true then
		
		pxSize = pxSize+0.1
	else
		pxSize = 0.01
	end
		runHaxeCode(' shader0.setFloat(\'pxSize\','..pxSize..');')
end
timers = {}
function ezTimer(tag, timer, callback) -- Better
     table.insert(timers,{tag, callback})
     runTimer(tag, timer)
end

function onTimerCompleted(tag)
     for k,v in pairs(timers) do
          if v[1] == tag then
               v[2]()
          end
     end
end

function pixelate(time)
	pixela = true
    togglePixel(true)
	ezTimer('pixelate', time, function() togglePixel(false) end)
end
function togglePixel(bool)
    if bool == true then
        runHaxeCode([[
            game.initLuaShader('pixel');
    
            shader0 = game.createRuntimeShader('pixel');
            shader0.setFloat('pxSize',0.01);
    
            game.camGame.setFilters([new ShaderFilter(shader0)]);
            game.camHUD.setFilters([new ShaderFilter(shader0)]);
        ]])
    else
        pixela = false
        pxSize = 0.01
        runHaxeCode([[
            game.camGame.setFilters([]);
            game.camHUD.setFilters([]);
        ]])
    end
end

function onUpdatePost()
setShaderFloat('pizzacrust', 'uTime', os.clock())
if curStep == 1 then
doTweenAlpha('byeHud', 'camHUD', 0, 0.15, 'quadInOut');
end
if curStep == 49 then
doTweenAlpha('aagg', 'gg', 0, 1, 'quadInOut');
pixela = true
end
if curStep == 64 then
doTweenAlpha('aagg', 'gg', 0, 0.1, 'quadInOut');
setProperty("dad.alpha",1)
setProperty("iconP2.alpha",1)
cambop = true
pixela = false
end
if curStep == 96 then
doTweenAlpha('byeHud', 'camHUD', 1, 0.2, 'quadInOut');
end
if curStep == 295 then
doTweenAlpha('bgblackout', 'void', 0.85, 0.1, 'quadInOut');
doTweenAlpha('byegf', 'gf', 0, 0.1, 'quadInOut');
doTweenAlpha('byebf', 'boyfriend', 0, 0.1, 'quadInOut');
end
if curStep == 299 then
doTweenAlpha('bgblackout', 'void', 0, 0.15, 'quadInOut');
doTweenAlpha('byegf', 'gf', 1, 0.15, 'quadInOut');
doTweenAlpha('byebf', 'boyfriend', 1, 0.15, 'quadInOut');
end
if curStep == 327 then
doTweenAlpha('bgblackout', 'void', 0.85, 0.1, 'quadInOut');
doTweenAlpha('byegf', 'gf', 0, 0.1, 'quadInOut');
doTweenAlpha('byebf', 'dad', 0, 0.1, 'quadInOut');
end
if curStep == 331 then
doTweenAlpha('bgblackout', 'void', 0, 0.15, 'quadInOut');
doTweenAlpha('byegf', 'gf', 1, 0.15, 'quadInOut');
doTweenAlpha('byebf', 'dad', 1, 0.15, 'quadInOut');
end
if curStep == 480 then
cambop = false
doTweenAlpha('bgblackout', 'void', 0.85, 0.1, 'quadInOut');
end

if curStep == 533 then
pixela = true
doTweenZoom('hegone', 'camGAME', 0.4, 0.8, 'cubeOut')
end
if curStep == 545 then
pixela = false
cambop = true
setProperty('pizzacrust.alpha',0)
doTweenAlpha('bgblackout', 'void', 0, 0.2, 'quadInOut');
doTweenZoom('himgone', 'camGAME', 0.6, 0.1, 'cubeOut')
end
if curStep == 679 then
doTweenAlpha('bgblackout', 'void', 0.85, 0.1, 'quadInOut');
doTweenAlpha('byegf', 'gf', 0, 0.1, 'quadInOut');
doTweenAlpha('byebf', 'boyfriend', 0, 0.1, 'quadInOut');
end
if curStep == 683 then
doTweenAlpha('bgblackout', 'void', 0, 0.15, 'quadInOut');
doTweenAlpha('byegf', 'gf', 1, 0.15, 'quadInOut');
doTweenAlpha('byebf', 'boyfriend', 1, 0.15, 'quadInOut');
end
if curStep == 711 then
doTweenAlpha('bgblackout', 'void', 0.85, 0.1, 'quadInOut');
doTweenAlpha('byegf', 'gf', 0, 0.1, 'quadInOut');
doTweenAlpha('byedad', 'dad', 0, 0.1, 'quadInOut');
end
if curStep == 715 then
doTweenAlpha('bgblackout', 'void', 0, 0.15, 'quadInOut');
doTweenAlpha('byegf', 'gf', 1, 0.15, 'quadInOut');
doTweenAlpha('byedad', 'dad', 1, 0.15, 'quadInOut');
end
if curStep == 736 then
cambop = false
end
if curStep == 752 then
doTweenAlpha('bgwhiteout', 'whiteout', 1, 1, 'quadInOut');
end
if curStep == 768 then
cambop = true
grabop = true
Twister = true
doTweenAlpha('bgwhiteout', 'whiteout', 0, 0.1, 'quadInOut');
doTweenX("ringleft.tw", "dapizza", getProperty('dapizza.x') + 250, 0.55, 'cubeout')
doTweenX("ringright.tw", "pizzaring", getProperty('pizzaring.x') - 250, 0.55, 'cubeout')
doTweenY("barup.tw", "pizzabar", getProperty('pizzabar.y') + 155, 0.55, 'cubeout')
doTweenY("bar2up.tw", "pizzabar2", getProperty('pizzabar2.y') - 150, 0.55, 'cubeout')
doTweenAlpha('bgblackout', 'void', 0.85, 1, 'quadInOut');
doTweenAlpha('byegf', 'gf', 0, 1, 'quadInOut');

	end
if curStep == 888 then
 triggerEvent('Camera Follow Pos', '900', '560')
end

if curStep == 893 then
 triggerEvent('Camera Follow Pos', '', '')
doTweenAlpha('bgwhiteout', 'whiteout', 1, 0.5, 'quadInOut');
end
if curStep == 896 then
grabop = false
Twister = false
doTweenAlpha('byegf', 'gf', 1, 0.15, 'quadInOut');
 triggerEvent('Camera Follow Pos', '', '')
doTweenAlpha('bgwhiteout', 'whiteout', 0, 0.1, 'quadInOut');
doTweenAlpha('bgblackout', 'void', 0, 0.1, 'quadInOut');
doTweenX("ringleft.tw", "dapizza", getProperty('dapizza.x') - 250, 0.55, 'cubeout')
doTweenX("ringright.tw", "pizzaring", getProperty('pizzaring.x') + 250, 0.55, 'cubeout')
doTweenY("barup.tw", "pizzabar", getProperty('pizzabar.y') - 155, 0.55, 'cubeout')
doTweenY("bar2up.tw", "pizzabar2", getProperty('pizzabar2.y') + 150, 0.55, 'cubeout')
doTweenY("coredrop.tw", "pizzacore", getProperty('pizzacore.y') + 1855, 4, 'cubeout')
end
if curStep == 905 then
doTweenAlpha('byeHud', 'camHUD', 0, 1, 'quadInOut');
end
if curStep == 959 then
doTweenAlpha('byeHud', 'camHUD', 1, 0.5, 'quadInOut');
end
if curStep == 1024 then
cambop = false
end
if curStep == 1088 then
doTweenAlpha('byegf', 'gf', 0, 1, 'quadInOut');
triggerEvent('Camera Follow Pos', '600', '500')
doTweenAlpha('bgblackout', 'void', 0.85, 1, 'quadInOut');
doTweenAlpha('spot', 'spot', 1, 1, 'quadInOut');
doTweenAlpha('spot2', 'spot2', 1, 1, 'quadInOut');
doTweenAlpha('spotC', 'spotC', 1, 1, 'quadInOut');
doTweenAlpha('spotB', 'spotB', 1, 1, 'quadInOut');
end
if curStep == 1112 then
 triggerEvent('Camera Follow Pos', '1100', '560')
end
if curStep == 1114 then
 triggerEvent('Camera Follow Pos', '300', '500')
end
if curStep == 1116 then
 triggerEvent('Camera Follow Pos', '1100', '560')
end
if curStep == 1118 then
 triggerEvent('Camera Follow Pos', '300', '500')
end
if curStep == 1120 then
triggerEvent('Camera Follow Pos', '600', '500')
doTweenZoom('hegone', 'camHUD', 3, 1.5, 'cubeOut')
doTweenZoom('himgone', 'camGAME', 0.4, 1.5, 'cubeOut')
doTweenAlpha('bgblackout', 'void', 1, 1, 'quadInOut');
end
if curStep == 1124 then
doTweenAlpha('byeHud', 'camHUD', 0, 0.15, 'quadInOut');
end
if curStep == 1130 then
doTweenX("BIGright.tw", "BIGpizza", getProperty('BIGpizza.x') - 2650, 2, 'cubeout')
end
if curStep == 1132 then
doTweenAlpha('fading', 'shitsAss', 1, 0.2, 'quadInOut');
doTweenAlpha('fade', 'gg', 1, 0.2, 'quadInOut');
doTweenAlpha('spot', 'spot', 0, 0.1, 'quadInOut');
doTweenAlpha('spot2', 'spot2', 0, 0.1, 'quadInOut');
doTweenAlpha('spotC', 'spotC', 0, 0.1, 'quadInOut');
doTweenAlpha('spotB', 'spotB', 0, 0.1, 'quadInOut');

end
end
function onBeatHit()
if curBeat % 2 == 0 then
doTweenY('corey', 'pizzacore.scale', 3, 0.15, 'quintOut')
doTweenX('corex', 'pizzacore.scale', 3, 0.15, 'quintOut')
else
runTimer('Corebamp', 0.5, 0.5)

 end

if cambop == true then
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.06', '0.02')
 else
  triggerEvent('Add Camera Zoom', '-0.05', '-0.03')
end
if Twister == true then
	if curBeat % 2 == 0 then 
	  Nb()

	        else
 		setProperty('camHUD.angle', 0.7*angleshit)
		doTweenAngle('hudTween', 'camHUD', 0, 0.5, 'backOut')
		setProperty('camGame.angle', 0.5*angleshit)
		doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
      end
if Twister == true then
	if curBeat % 4 == 0 then
angleshit = 12 
	        else
angleshit = -12 
end
if curBeat % 2 == 0 then
doTweenColor('pizzacolor', 'pizzacore', 'ff4209' , 0.15, 'linear');
	        else
doTweenColor('pizzacolor2', 'pizzacore', '00d9ff' , 0.15, 'linear');
end
if grabop == true then
if curBeat % 2 == 0 then
setProperty("orangehot.alpha",1)
 else
runTimer('Gradbopping', 0.5, 0.5)
end
end
end
end
end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Gradbopping' then
		doTweenAlpha('byegra', 'orangehot', 0, 0.5, 'linear')
	end
if tag == 'Corebamp' then
		doTweenY('corey', 'pizzacore.scale', 1.6, 0.4, 'quintOut')
	doTweenX('corex', 'pizzacore.scale', 1.6, 0.4, 'quintOut')

	end

end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end

