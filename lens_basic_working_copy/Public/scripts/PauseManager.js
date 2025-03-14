const pubSub = require("../Exercise Scripts/PubSubModule");
global.Pause = false;

function Pause(){
  global.Pause = true;
}

function UnPause(){
  global.Pause = false;
}


/*SUBSCRIPTIONS*/
pubSub.subscribe(pubSub.EVENTS.Pause, (data) => {
  Pause();
});


pubSub.subscribe(pubSub.EVENTS.UnPause, (data) => {
  UnPause();
});