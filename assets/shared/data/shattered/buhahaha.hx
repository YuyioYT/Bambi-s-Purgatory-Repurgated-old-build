import modchart.Manager;

var manager:Manager;

function onCreate() {
}

function onCreatePost() {
    manager = new Manager();
    add(manager);
}

function onStepHit() {
    switch (curStep){
	    case 192:
            bounce();
        case 320:
            sawtooth();
        case 340:
            add();
            bounce2();
            manager.destroy("sawtooth");
    }
}

function bounce() {
    if (manager != null) {
        manager.addModifier("bounce");
        manager.ease('bounce', 0, 0.1, 0.4, FlxEase.circInOut);
    }
}

function bounce2() {
    if (manager != null) {
        manager.addModifier("bounce");
        manager.ease('bounce', 0, 0.01, 0.4, FlxEase.circInOut);
    }
}

function sawtooth() {
    if (manager != null) {
        manager.addModifier("sawtooth");
        manager.ease('sawtooth', 0, 0.1, 0.5, FlxEase.circInOut);
    }
}