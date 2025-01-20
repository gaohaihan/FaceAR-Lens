// -----JS CODE-----


// Made by Apoc
// Snapchat: apocsnap or brandonrules13
// reddit.com/u/ApocTheLegend
// See most of my lenses on the sub reddit here: https://goo.gl/ZugVBe
// STILL A WORK IN PROGRESS. SEND ME SUGGESTIONS!!!

// How to use:

// STARTING:
// You can start it from any script using global.startTimer(seconds, type)
// the types are strings: 'stopwatch' or 'countdown'
// time must be in seconds

// STOPPING: 
// You can stop the timer at any time using global.stopTimer(callback)
// Callback is optional and can accept up to 5 parameters
// Example callback to start timer again: global.stopTimer(global.startTimer, 10, 'stopwatch')

// GETTING CURRENT TIME:
// To get the current time of the object use global.timerSeconds

// CHECKING IF TIMER IS ACTIVE:
// global.timerActive returns boolean (true or false)

// ---- Start Timer Object Script ----

//@input Asset.Texture[] timerTextures
//@input Component.SpriteVisual[] columns

var maxTime = 0
var timerType = 'countdown'
var time = 0
var minutes = 0
var seconds = 0
var minutesTens = 0
var minutesOnes = 0
var secondsTens = 0
var secondsOnes = 0

global.timerSeconds = 0;
global.timerActive = false;

global.startTimer = function(seconds, type){
    if(!global.timerActive){
    
    if(type === 'stopwatch' || type === 'countdown'){
	timerType = type;
	print(timerType + ' is starting');
            global.timerActive = true;
	updateTime.reset(0);
} else {
	print('type invalid')
}

if(type === 'countdown'){
time = seconds;
global.timerSeconds = time;
} else {
	maxTime = seconds;
	time = 0;
            global.timerSeconds = 0;
}
    } 
    else {
        print('timer already started')
    }
}


global.stopTimer = function(callback){
    if(global.timerActive){
		global.timerActive = false;
    print(timerType + ' finished');
        if(callback){
            callback(arguments[1], arguments[2], arguments[3], arguments[4], arguments[5]);
        }
    }
    else { 
	print('No stopwatch/coundown initialized');
    }
}

var updateTime = script.createEvent("DelayedCallbackEvent");
updateTime.bind(function(eventData, callback, cb)
{  
    minutes = Math.floor(time / 60)
    seconds = time - (minutes * 60)
    
    if(minutes > 9){
     minutesTens = Number(String(minutes).charAt(0));
     minutesOnes = Number(String(minutes).charAt(1));
    }else {
        minutesTens = 0;
        minutesOnes = Number(String(minutes).charAt(0));
    }
    if(seconds > 9){
            secondsTens = Number(String(seconds).charAt(0));
            secondsOnes = Number(String(seconds).charAt(1));
    } else {
        secondsTens = 0;
        secondsOnes = Number(String(seconds).charAt(0));
    }
   // print('second tens ' + secondsTens.toString());
   // print('second ones ' + secondsOnes.toString());
   // print('minute tens ' + minutesTens.toString());
   // print('minute ones ' + minutesOnes.toString());
    updateTimerSprites();
    
    // start change time
	if(global.timerActive){
	if(timerType === 'countdown'){	
		time--;
            global.timerSeconds--;
		if(time >= 0){
			updateTime.reset(1);
		} else {
		global.stopTimer();
		}
		
    } else {
		time++;
            global.timerSeconds++;
		if(time <= maxTime){
			updateTime.reset(1)
		}else {
			global.stopTimer();
		}
	}
	}
});


function updateTimerSprites(){
    script.columns[0].mainPass.baseTex = script.timerTextures[secondsOnes];
    script.columns[1].mainPass.baseTex = script.timerTextures[secondsTens];
    script.columns[2].mainPass.baseTex = script.timerTextures[minutesOnes];
    script.columns[3].mainPass.baseTex = script.timerTextures[minutesTens];
}