//

var modcharts:Bool;
var downRev:Int;
var downscroll:Bool;
var defaultPlayer:Array<Array<Float>> = [];
var defaultOpponent:Array<Array<Float>> = [];
var xlist:Array<Float> = [732, 844, 956, 1068];
var opxlist:Array<Float> = [92, 204, 316, 428];

// quant stuff
var arrowRGBQuantize:Array<Array<FlxColor>> = [
	[0xFFFF0000, 0xFFFFFFFF, 0xFF7F0000],
	[0xFF0000FF, 0xFFFFFFFF, 0xFF00007F],
	[0xFF800080, 0xFFFFFFFF, 0xFF400040],
	[0xFF00FF00, 0xFFFFFFFF, 0xFF007F00],
	[0xFFFFFF00, 0xFFFFFFFF, 0xFF7F7F00],
	[0xFF00FFDD, 0xFFFFFFFF, 0xFF018573],
	[0xFFFF00FF, 0xFFFFFFFF, 0xFF8A018A],
	[0xFFFF7300, 0xFFFFFFFF, 0xFF883D00]
];

var beat:Float = 0;
var dataStuff:Float = 0;
var col = 0xFFFFD700;
var col3 = 0xFFFFD700;
var col2 = 0xFFFFD700;

// extra cameras
var daveCam:FlxCamera;
var noteCam:FlxCamera;
var fakeNoteCam:FlxCamera;

function onCreate()
{

}

function onCreatePost()
{
	modcharts = true;

	// song setup
	downscroll = ClientPrefs.data.downScroll;
	downRev = downscroll ? -1 : 1;

	if (modcharts)
	{
		noteCam = new FlxCamera();
		noteCam.bgColor = 0x00;
		fakeNoteCam = new FlxCamera();
		fakeNoteCam.x = 0;
		fakeNoteCam.y = 0;
		fakeNoteCam.bgColor = 0x00;

		daveCam = new FlxCamera();
		daveCam.bgColor = 0x00;
		dadGroup.cameras = [camGame, daveCam];

		notes.cameras = [noteCam, fakeNoteCam];
		strumLineNotes.cameras = [noteCam, fakeNoteCam];

		FlxG.cameras.remove(camHUD, false);
		FlxG.cameras.remove(camOther, false);

		FlxG.cameras.add(fakeNoteCam, false);
		FlxG.cameras.add(noteCam, false);
		FlxG.cameras.add(camHUD, false);
		FlxG.cameras.add(daveCam, false);
		FlxG.cameras.add(camOther, false);

		daveCam.visible = false;
		fakeNoteCam.visible = false;


		for (i in 0...playerStrums.length)
			defaultPlayer.push([playerStrums.members[i].x, playerStrums.members[i].y]);

		for (i in 0...opponentStrums.length)
		{
			defaultOpponent.push([opponentStrums.members[i].x, opponentStrums.members[i].y]);
		}
	}
}

var frequency:Float = 2; // Speed
var amplitud:Float = 69; // Intensity
var delayBetweenStrum:Float = 0.2; // More than 0

function onUpdate(elapsed)
{

}

function onBeatHit()
{

}

function onStepHit()
{
	if (modcharts)
	{
		if (curStep == 192)
		{
			for (i in 0...8)
			{
				var endPos = (FlxG.height - 150);
				strumLineNotes.members[i].y = endPos;
			}

		}
	}
}

// mod helpers

function con_sin(x:Float):Float
	return Math.sin((x % 1) * 2 * Math.PI);

function round(num:Float, numDecimalPlaces:Int)
{
	var mult = 10 ^ numDecimalPlaces;
	return Math.floor(num * mult + 0.5) / mult;
}

function doQuant(daNote:Note)
{
	var strumTime:Float = 0;
	var currentBPM = PlayState.SONG.bpm;
	strumTime = daNote.strumTime;
	var newTime = strumTime;
	dataStuff = ((currentBPM * (newTime - ClientPrefs.data.noteOffset)) / 1000 / 60);
	beat = round(dataStuff * 48, 0);
	daNote.rgbShader.enabled = true;
	if (!daNote.isSustainNote)
	{
		if (beat % (192 / 4) == 0)
		{
			col = arrowRGBQuantize[0][0];
			col3 = arrowRGBQuantize[0][1];
			col2 = arrowRGBQuantize[0][2];
		}
		else if (beat % (192 / 8) == 0)
		{
			col = arrowRGBQuantize[1][0];
			col3 = arrowRGBQuantize[1][1];
			col2 = arrowRGBQuantize[1][2];
		}
		else if (beat % (192 / 12) == 0)
		{
			col = arrowRGBQuantize[2][0];
			col3 = arrowRGBQuantize[2][1];
			col2 = arrowRGBQuantize[2][2];
		}
		else if (beat % (192 / 16) == 0)
		{
			col = arrowRGBQuantize[3][0];
			col3 = arrowRGBQuantize[3][1];
			col2 = arrowRGBQuantize[3][2];
		}
		else if (beat % (192 / 24) == 0)
		{
			col = arrowRGBQuantize[4][0];
			col3 = arrowRGBQuantize[4][1];
			col2 = arrowRGBQuantize[4][2];
		}
		else if (beat % (192 / 32) == 0)
		{
			col = arrowRGBQuantize[5][0];
			col3 = arrowRGBQuantize[5][1];
			col2 = arrowRGBQuantize[5][2];
		}
		else if (beat % (192 / 48) == 0)
		{
			col = arrowRGBQuantize[6][0];
			col3 = arrowRGBQuantize[6][1];
			col2 = arrowRGBQuantize[6][2];
		}
		else if (beat % (192 / 64) == 0)
		{
			col = arrowRGBQuantize[7][0];
			col3 = arrowRGBQuantize[7][1];
			col2 = arrowRGBQuantize[7][2];
		}
		else
		{
			col = 0xFF7C7C7C;
			col3 = 0xFFFFFFFF;
			col2 = 0xFF3A3A3A;
		}
		daNote.rgbShader.r = col;
		daNote.rgbShader.g = col3;
		daNote.rgbShader.b = col2;
	}
}

function bounce(daNote, val, speed)
{
	return val * Math.abs(Math.sin((daNote.distance * (speed * 0.0001)) * Math.PI));
}
