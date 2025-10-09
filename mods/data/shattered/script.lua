local cambop = false
local cambop2 = false
local grabop = false
local Twister = false
local shaderName = "lightsrgb"
 local angleshit = 2;
local anglevar = 2;
function onStartCountdown()
triggerEvent('Camera Follow Pos', '800', '-1000')
setProperty("camHUD.alpha",0)
doTweenY('hudud', 'camHUD', 820 , 0.1, 'quadInOut')
end
function onCreatePost()
shaderCoordFix() -- initialize a fix for textureCoord when resizing game window
makeLuaSprite('lightsrgb')
makeGraphic("shaderImage", screenWidth, screenHeight)
      setSpriteShader('shaderImage', 'lightsrgb')
     	addHaxeLibrary("ShaderFilter", "openfl.filters")

setProperty('camZooming', true)

makeLuaSprite('sp', 'hud/shattered/shaders/bambi_spot', -80, 340)
setObjectCamera('sp', 'other')
 scaleObject('sp', 1.8, 1.8)
doTweenAlpha('ssp', 'sp', 0, 0.000001, 'quadInOut');
addLuaSprite('sp', false)

makeLuaSprite('sp2', 'hud/shattered/shaders/boyfriend_spot', 855, 360)
setObjectCamera('sp2', 'other')
 scaleObject('sp2', 1.8, 1.8)
doTweenAlpha('ssp2', 'sp2', 0, 0.000001, 'quadInOut');
addLuaSprite('sp2', false)


makeLuaSprite('sl', 'spotlight',-75, -250)
setObjectCamera('sl', 'other')
scaleObject('sl', 0.8, 0.7)
doTweenAlpha('ssl', 'sl', 0, 0.000001, 'quadInOut');
addLuaSprite('sl', true)

makeLuaSprite('sl2', 'spotlight',850, -230)
setObjectCamera('sl2', 'other')
scaleObject('sl2', 0.8, 0.7)
doTweenAlpha('ssl2', 'sl2', 0, 0.000001, 'quadInOut');
addLuaSprite('sl2', true)

 makeLuaSprite("shitsAss","thisIsForTheScreen",-10,-10)
	setObjectCamera("shitsAss",'other')	
addLuaSprite("shitsAss",true)
	makeGraphic("shitsAss",screenWidth+100,screenHeight+100,"000000")
	setProperty("shitsAss.alpha",0)

makeLuaSprite("gg","thisIsForTheScreen",-15000,-15000)
	setObjectCamera("gg",'camGame')
	addLuaSprite("gg",true)
	makeGraphic("gg",screenWidth+100,screenHeight+100,"000000")
	setProperty("gg.alpha",1)
 setScrollFactor('gg', 0, 0);
scaleObject('gg', 50, 50)


makeLuaSprite("NN1",'hud/shattered/events/nostal/nostal1',0,0)
	setObjectCamera("NN1",'other')
	addLuaSprite("NN1",true)
		setProperty("NN1.alpha",0)

makeLuaSprite("NN2",'hud/shattered/events/nostal/nostal2',-300,-100)
	setObjectCamera("NN2",'other')
	addLuaSprite("NN2",true)
		setProperty("NN2.alpha",0)
scaleObject('NN2', 0.6, 0.6)


makeLuaSprite("NN3",'hud/shattered/events/nostal/nostal3',-350,100)
	setObjectCamera("NN3",'other')
	addLuaSprite("NN3",true)
		setProperty("NN3.alpha",0)
scaleObject('NN3', 0.7, 0.7)


makeLuaSprite("NN4",'hud/shattered/events/nostal/nostal4',0,0)
	setObjectCamera("NN4",'other')
	addLuaSprite("NN4",true)
		setProperty("NN4.alpha",0)

makeLuaSprite("NN5",'hud/shattered/events/nostal/nostal5',100,-400)
	setObjectCamera("NN5",'other')
	addLuaSprite("NN5",true)
		setProperty("NN5.alpha",0)
scaleObject('NN5', 0.8, 0.8)


makeLuaSprite("NN6",'hud/shattered/events/nostal/nostal6',0,0)
	setObjectCamera("NN6",'other')
	addLuaSprite("NN6",true)
		setProperty("NN6.alpha",0)

makeLuaSprite("NN6.5",'hud/shattered/events/nostal/nostal6.5',0,0)
	setObjectCamera("NN6.5",'other')
	addLuaSprite("NN6.5",true)
		setProperty("NN6.5.alpha",0)

makeLuaSprite("NN7",'hud/shattered/events/nostal/nostal7',-400,100)
	setObjectCamera("NN7",'other')
	addLuaSprite("NN7",true)
		setProperty("NN7.alpha",0)
scaleObject('NN7', 0.6, 0.6)


makeLuaSprite("NN9",'hud/shattered/events/nostal/nostal9',0,-400)
	setObjectCamera("NN9",'other')
	addLuaSprite("NN9",true)
		setProperty("NN9.alpha",0)
scaleObject('NN9', 0.9, 0.9)


makeLuaSprite("NN10",'hud/shattered/events/nostal/nostal10',0,0)
	setObjectCamera("NN10",'other')
	addLuaSprite("NN10",true)
		setProperty("NN10.alpha",0)

makeLuaSprite("NN11",'hud/shattered/events/nostal/nostal11',-400,100)
	setObjectCamera("NN11",'other')
	addLuaSprite("NN11",true)
		setProperty("NN11.alpha",0)

makeLuaSprite("NN12.5",'hud/shattered/events/nostal/nostal12.5',100,0)
	setObjectCamera("NN12",'other')
	addLuaSprite("NN12.5",true)
		setProperty("NN12.5.alpha",0)


makeLuaSprite("NN12",'hud/shattered/events/nostal/nostal12',200,-250)
	setObjectCamera("NN12",'other')
	addLuaSprite("NN12",true)
		setProperty("NN12.alpha",0)

makeLuaSprite("NN13",'hud/shattered/events/nostal/nostal13',-200,300)
	setObjectCamera("NN13",'other')
	addLuaSprite("NN13",true)
		setProperty("NN13.alpha",0)

makeLuaSprite("NN14",'hud/shattered/events/nostal/nostal14',-200,-250)
	setObjectCamera("NN14",'other')
	addLuaSprite("NN14",true)
		setProperty("NN14.alpha",0)

makeLuaSprite("NN15",'hud/shattered/events/nostal/nostal15',-350,-200)
	setObjectCamera("NN15",'other')
	scaleObject("NN15",2,2)
	screenCenter("NN15")
	addLuaSprite("NN15",true)
	setProperty("NN15.alpha",0)

makeLuaSprite('whiteout', '', 0, 0)
	makeGraphic('whiteout', 2000, 2000, value1)
	setScrollFactor('whiteout', 0, 0)
	setProperty('whiteout.alpha', 0)
addLuaSprite('whiteout',true)
	setObjectCamera('whiteout', 'other')
makeGraphic('whiteout', 2000, 2000, 'ffffff')


makeLuaSprite("ggw","flash",-15000,-15000)
	setObjectCamera("ggw",'camGame')
	addLuaSprite("ggw",true)
	makeGraphic("ggw",screenWidth+100,screenHeight+100,"ffffff")
	setProperty("ggw.alpha",0)
 setScrollFactor('ggw', 0, 0);
scaleObject('ggw', 50, 50)

makeLuaSprite("bluehot","hud/shattered/shaders/bluegrad",-400,-250)
	setObjectCamera("bluehot",'other')
	addLuaSprite("bluehot",true)
		setProperty("bluehot.alpha",0)

makeLuaSprite("greenhot","hud/shattered/shaders/greengrad",-100,-150)
	setObjectCamera("greenhot",'other')
	addLuaSprite("greenhot",true)
		setProperty("greenhot.alpha",0)

end
 function onUpdate(elapsed)
  setShaderFloat("lightsrgb", "iTime", os.clock())
	songPos = getSongPosition(elapsed)
	local currentBeat = (songPos/1000)*(bpm/200)
end
function onUpdatePost()
if curStep == 31 then
doTweenAlpha('yaNN1', 'NN1', 1, 0.5, 'linear')
doTweenX('NN1x', 'NN1.scale', 0, 5)
doTweenY('NN1y', 'NN1.scale', 0, 5)
end

if curStep == 35 then
doTweenAlpha('yaNN1', 'NN1', 0, 10, 'linear')
doTweenAlpha('yaNN2', 'NN2', 1, 0.5, 'linear')
doTweenX('NN2x', 'NN2.scale', 0, 5)
doTweenY('NN2y', 'NN2.scale', 0, 5)
end

if curStep == 39 then
doTweenAlpha('yaNN2', 'NN2', 0, 10, 'linear')
doTweenAlpha('yaNN3', 'NN3', 1, 0.5, 'linear')
doTweenX('NN3x', 'NN3.scale', 0, 5)
doTweenY('NN3y', 'NN3.scale', 0, 5)
end

if curStep == 43 then
doTweenAlpha('yaNN3', 'NN3', 0, 10, 'linear')
doTweenAlpha('yaNN4', 'NN4', 1, 0.5, 'linear')
doTweenX('NN4x', 'NN4.scale', 0, 3)
doTweenY('NN4y', 'NN4.scale', 0, 3)
end

if curStep == 47 then
doTweenAlpha('yaNN4', 'NN4', 0, 10, 'linear')
doTweenAlpha('yaNN5', 'NN5', 1, 0.5, 'linear')
doTweenX('NN5x', 'NN5.scale', 0, 3)
doTweenY('NN5y', 'NN5.scale', 0, 3)
end

if curStep == 51 then
doTweenAlpha('yaNN5', 'NN5', 0, 10, 'linear')
doTweenAlpha('yaNN6', 'NN6', 1, 0.5, 'linear')
doTweenX('NN6x', 'NN6.scale', 0, 3)
doTweenY('NN6y', 'NN6.scale', 0, 3)
end

if curStep == 55 then
doTweenAlpha('yaNN6', 'NN6', 0, 10, 'linear')
doTweenAlpha('yaNN6.5', 'NN6.5', 1, 0.5, 'linear')
doTweenX('NN6.5x', 'NN6.5.scale', 0, 3)
doTweenY('NN6.5y', 'NN6.5.scale', 0, 3)
end

if curStep == 59 then
doTweenAlpha('yaNN6.5', 'NN6.5', 0, 10, 'linear')
doTweenAlpha('yaNN7', 'NN7', 1, 0.5, 'linear')
doTweenX('NN7x', 'NN7.scale', 0, 3)
doTweenY('NN7y', 'NN7.scale', 0, 3)
end

if curStep == 63 then
doTweenAlpha('yaNN7', 'NN7', 0, 10, 'linear')
doTweenAlpha('yaNN8', 'NN8', 1, 0.5, 'linear')
doTweenX('NN8x', 'NN8.scale', 0, 3)
doTweenY('NN8y', 'NN8.scale', 0, 3)
end

if curStep == 67 then
doTweenAlpha('yaNN8', 'NN8', 0, 10, 'linear')
doTweenAlpha('yaNN9', 'NN9', 1, 0.5, 'linear')
doTweenX('NN9x', 'NN9.scale', 0, 3)
doTweenY('NN9y', 'NN9.scale', 0, 3)
end

if curStep == 71 then
doTweenAlpha('yaNN9', 'NN9', 0, 10, 'linear')
doTweenAlpha('yaNN10', 'NN10', 1, 0.5, 'linear')
doTweenX('NN10x', 'NN10.scale', 0, 3)
doTweenY('NN10y', 'NN10.scale', 0, 3)
end

if curStep == 75 then
doTweenAlpha('yaNN10', 'NN10', 0, 10, 'linear')
doTweenAlpha('yaNN11', 'NN11', 1, 0.5, 'linear')
doTweenX('NN11x', 'NN11.scale', 0, 3)
doTweenY('NN11y', 'NN11.scale', 0, 3)
end

if curStep == 79 then
doTweenAlpha('yaNN11', 'NN11', 0, 10, 'linear')
doTweenAlpha('yaNN12.5', 'NN12.5', 1, 0.5, 'linear')
doTweenX('NN12.5x', 'NN12.5.scale', 0, 3)
doTweenY('NN12.5y', 'NN12.5.scale', 0, 3)
end

if curStep == 83 then
doTweenAlpha('yaNN12.5', 'NN12.5', 0, 8, 'linear')
doTweenAlpha('yaNN12', 'NN12', 1, 0.5, 'linear')
doTweenX('NN12x', 'NN12.scale', 0, 2)
doTweenY('NN12y', 'NN12.scale', 0, 2)
end

if curStep == 87 then
doTweenAlpha('yaNN12', 'NN12', 0, 8, 'linear')
doTweenAlpha('yaNN13', 'NN13', 1, 0.5, 'linear')
doTweenX('NN13x', 'NN13.scale', 0, 2)
doTweenY('NN13y', 'NN13.scale', 0, 2)
end

if curStep == 91 then
doTweenAlpha('yaNN13', 'NN13', 0, 8, 'linear')
doTweenAlpha('yaNN14', 'NN14', 1, 0.5, 'linear')
doTweenX('NN14x', 'NN14.scale', 0, 2)
doTweenY('NN14y', 'NN14.scale', 0, 2)
end

if curStep == 93 then
doTweenAlpha('yaNN14', 'NN14', 0, 2, 'linear')
doTweenAlpha('yaNN15', 'NN15', 1, 1, 'linear')
doTweenX('NN15x', 'NN15.scale', 0, 5)
doTweenY('NN15y', 'NN15.scale', 0, 5)
doTweenAlpha('wo', 'whiteout', 1, 3, 'linear')

end

if curStep == 128 then
setProperty("gg.alpha",0)
doTweenAlpha('wo', 'whiteout', 0, 1, 'linear')
doTweenY('babyeN15', 'NN15', -100220 , 0.1, 'quadInOut')
end
if curStep == 192 then
 triggerEvent('Camera Follow Pos', '', '')
doTweenY('hudud', 'camHUD', 0 , 1, 'CubeOut')
end

if curStep == 759 then
cambop2 = false
doTweenAlpha('byegg', 'gg', 1, 0.2, 'quadInOut');
end
if curStep == 768 then
doTweenAlpha('byegg', 'gg', 0, 0.1, 'quadInOut');
end
if curStep == 1085 then
doTweenAlpha('byeshitsAss', 'shitsAss', 1, 0.2, 'quadInOut');
end
if curStep == 1099 then
doTweenAlpha('byeshitsAss', 'shitsAss', 0, 0.6, 'quadInOut');
end
if curStep == 1143 then
doTweenAlpha('wo', 'whiteout', 1, 0.6, 'quadInOut');
end
if curStep == 1152 then
doTweenAlpha('wo', 'whiteout', 0, 0.2, 'quadInOut');
end
if curStep == 1312 then
cambop2 = true
end
if curStep == 1408 then
cambop2 = false
end
if curStep == 1411 then
cambop = true
end
if curStep == 1592 then
doTweenAlpha('byegf', 'gf', 0, 3, 'quadInOut');
doTweenY('babyegf', 'gf', -1220 , 5, 'quadInOut')

	end
if curStep == 1792 then
cambop = false
cambop2 = true
grabop = true
Twister = true
doTweenAlpha('ssl', 'sl', 1, 0.1, 'quadInOut');
doTweenAlpha('ssl2', 'sl2', 1, 0.1, 'quadInOut');
doTweenAlpha('ssp', 'sp', 1, 0.1, 'quadInOut');
doTweenAlpha('ssp2', 'sp2', 1, 0.1, 'quadInOut');
 triggerEvent('Camera Follow Pos', '750', '560')
setObjectCamera("boyfriend",'other')
setObjectCamera("dad",'other')
doTweenX('dadgox', 'dad', 55, 0.1)
doTweenY('dadgoy', 'dad', 180, 0.1)
doTweenX('bfgox', 'boyfriend', 880, 0.1)
doTweenY('bfgoy', 'boyfriend', 140, 0.1)
runHaxeCode([[
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        var shader0 = game.createRuntimeShader(shaderName);
        game.camGame.filters = [new ShaderFilter(shader0)];
        game.getLuaObject("lightsrgb").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties)]);
               return;
    ]])
end
if curStep == 1920 then
Twister = false
cambop2 = false
grabop = false
doTweenAlpha('byeshitsAss', 'shitsAss', 0.5, 0.2, 'quadInOut');
end
if curStep == 1984 then
doTweenAlpha('ssl', 'sl', 0, 0.2, 'quadInOut');
doTweenAlpha('ssl2', 'sl2', 0, 0.2, 'quadInOut');
doTweenAlpha('ssp', 'sp', 0, 0.2, 'quadInOut');
doTweenAlpha('ssp2', 'sp2', 0, 0.2, 'quadInOut');
doTweenAlpha('strumShred', 'strumShred', 0, 0.1, 'quadInOut');
setObjectCamera("boyfriend",'camGame')
setObjectCamera("dad",'camGame')
doTweenAlpha('byegf', 'gf', 1, 1, 'quadInOut');
doTweenAlpha('byeshitsAss', 'shitsAss', 0, 0.2, 'quadInOut');
doTweenX('dadgox', 'dad', 280, 0.1)
doTweenY('dadgoy', 'dad', 455, 0.1)
doTweenX('bfgox', 'boyfriend', 780, 0.1)
doTweenY('bfgoy', 'boyfriend', 440, 0.1)
runHaxeCode([[
game.camGame.filters = [];
game.other.filters = [];
	]])

end
if curStep == 1925 then
setProperty("bluehot.alpha",0)
setProperty("greenhot.alpha",0)
end
if curStep == 2042 then
doTweenY('hudud', 'camHUD', 820 , 1, 'quadInOut')
end

end
function onBeatHit()
if cambop == true then
if curBeat % 4 == 0 then
triggerEvent('Add Camera Zoom', '0.05', '0.01')
 else
    
end
end
if cambop2 == true then
if curBeat % 4 == 0 then
triggerEvent('Add Camera Zoom', '0.05', '0.01')
 else
    triggerEvent('Add Camera Zoom', '0.05', '0.01')

end
end
if grabop == true then
if curBeat % 2 == 0 then
doTweenAlpha('bh', 'bluehot', 0.8, 0.1, 'quadInOut');
doTweenAlpha('gh', 'greenhot', 0, 0.3, 'quadInOut');
else
doTweenAlpha('gh', 'greenhot', 0.8, 0.1, 'quadInOut');
doTweenAlpha('bh', 'bluehot', 0, 0.3, 'quadInOut');
end
end
if Twister == true then
	if curBeat % 2 == 0 then 
                setProperty('camGame.angle', 0.5*12)
		doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
	else
                setProperty('camGame.angle', 0.5*-12)
		doTweenAngle('gameTween', 'camGame', 0, 0.5, 'backOut')
end
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