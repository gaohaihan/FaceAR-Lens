// -----JS CODE-----

//@input Asset.Texture[] timerTextures
//@input Component.Image[] columns
//@input int time {"label":"Time", "min":0, "max":60, "step":1}

const pubSub = require("scripts/PubSubModule");

const TIMER_EVENTS = {
    Start: "TimerStart",
    Continue: "TimerContinue",
    Stop: "TimerStop",
    Reset: "TimerReset",
    Tick: "TimerTick",
    Complete: "TimerComplete",
    Hide: "HideTimer",
    Show: "ShowTimer"
};

var secondsTens = 0;
var secondsOnes = 0;
var timeLeft = script.time;
var timerActive = false;
global.complete = 0;
    global.isTimer = true;

// Subscribe to timer control events
pubSub.subscribe(TIMER_EVENTS.Start, () => {
    timerActive = true;
    global.complete = 0;
    pubSub.publish(TIMER_EVENTS.Reset, timeLeft);
    pubSub.publish(TIMER_EVENTS.Show)    
});

pubSub.subscribe(TIMER_EVENTS.Stop, () => {
        print("stop");
    timerActive = false;
});

pubSub.subscribe(TIMER_EVENTS.Continue, () => {
        print("continue");
    timerActive = true;
});

pubSub.subscribe(TIMER_EVENTS.Reset, () => {
    print("reset");
    updateDisplay(timeLeft);
    timeLeft = script.time;
    timerActive = false;
    pubSub.publish(TIMER_EVENTS.Hide);
});

pubSub.subscribe(TIMER_EVENTS.Hide, () => {
    print("hide");
    script.columns[0].enabled = false;
    script.columns[1].enabled = false;
});

pubSub.subscribe(TIMER_EVENTS.Show, () => {
    print("show");
    script.columns[0].enabled = true;
    script.columns[1].enabled = true;
});

// Timer update event
var timer = script.createEvent("UpdateEvent");
timer.bind(function(eventData){    
    if (!timerActive) { return; }

    if (timeLeft > 0) {
        timeLeft -= eventData.getDeltaTime();
        if (timeLeft < 0) { timeLeft = 0; }
        updateDisplay(timeLeft);
        pubSub.publish(TIMER_EVENTS.Tick, timeLeft);
    }

    if (timeLeft === 0) {
        pubSub.publish(TIMER_EVENTS.Stop, timeLeft);
        updateDisplay(timeLeft);
        global.complete = true;
        pubSub.publish(TIMER_EVENTS.Complete, null);
    }
});

function updateDisplay(time) {
    var intTime = Math.floor(time);
    secondsTens = Math.floor(intTime / 10);
    secondsOnes = intTime % 10;
    script.columns[0].mainPass.baseTex = script.timerTextures[secondsTens];
    script.columns[1].mainPass.baseTex = script.timerTextures[secondsOnes];
    script.columns[0].enabled = true;
    script.columns[1].enabled = true;
}