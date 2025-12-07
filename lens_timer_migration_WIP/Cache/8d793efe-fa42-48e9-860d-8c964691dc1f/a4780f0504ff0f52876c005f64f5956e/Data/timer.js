// -----JS CODE-----

//@input Asset.Texture[] timerTextures
//@input Component.Image[] columns
//@input int time {"label":"Time", "min":0, "max":60, "step":1}

//global.timerUpdate = 0 when timer needs to reset
//1 when it counts down
//2 when it stops
var secondsTens = 0
var secondsOnes = 0
global.complete = 0;
global.isTimer = true;
var timeLeft = script.time;
var timer = script.createEvent("UpdateEvent");

timer.bind(function(eventData){
    
  //  print(global.timerUpdate);

   // print(timeLeft);
    if(global.timerUpdate == 0) {
        global.complete = 0;
        timeLeft = script.time;
        
        if(timeLeft < 10) {
         //   secondsOnes = Number(String(timeLeft).charAt(0));
          //  secondsTens = 0;
            var intTime = Math.floor(timeLeft);
secondsTens = Math.floor(intTime / 10);
secondsOnes = intTime % 10;
        } else if(timeLeft >= 10) {
         //   secondsOnes = Number(String(timeLeft).charAt(1));
         //  print(secondsOnes);
          //  secondsTens = Number(String(timeLeft).charAt(0));
            var intTime = Math.floor(timeLeft);
secondsTens = Math.floor(intTime / 10);
secondsOnes = intTime % 10;
        }
        DisplayTime();
    }
    
    else if(global.timerUpdate == 1) {
        
        if (timeLeft >= 10) {
         //  secondsOnes = Number(String(timeLeft).charAt(1));
         //  secondsTens = Number(String(timeLeft).charAt(0));
          var intTime = Math.floor(timeLeft);
            secondsTens = Math.floor(intTime / 10);
            secondsOnes = intTime % 10;
            timeLeft -= eventData.getDeltaTime();
           DisplayTime();
            
        } else if(timeLeft > 0){
         //   secondsOnes = Number(String(timeLeft).charAt(0));
           // secondsTens = 0;
var intTime = Math.floor(timeLeft);
secondsTens = Math.floor(intTime / 10);
secondsOnes = intTime % 10;            
            timeLeft -= eventData.getDeltaTime();
            DisplayTime();
            
       } else {
           global.complete = 1;
           timeLeft = 0; 
           secondsOnes = 0;
           secondsTens = 0;
           DisplayTime();
       }
    }
});


function DisplayTime() {
    print("Tens: " + secondsTens + " → Texture index " + secondsTens);
    print("Ones: " + secondsOnes + " → Texture index " + secondsOnes);

   script.columns[0].mainPass.baseTex = script.timerTextures[secondsTens];
   script.columns[1].mainPass.baseTex = script.timerTextures[secondsOnes]; 
}



