// -----JS CODE-----

//@input Asset.Texture[] timerTextures
//@input Component.SpriteVisual[] columns
//@input int time {"label":"Time", "min":0, "max":9999, "step":1}
//@input string variable {"label":"Variable to Track"}

var secondsTens = 0
var secondsOnes = 0
//print(time);
var timer = script.createEvent("UpdateEvent");

timer.bind(function(eventData){
    
    
    if(global.distance > 0) {
        if(script.time == 10) {
           secondsOnes = 0;
           secondsTens = 1;
           
           script.columns[0].mainPass.baseTex = script.timerTextures[secondsTens];
           script.columns[1].mainPass.baseTex = script.timerTextures[secondsOnes];
           script.time -= eventData.getDeltaTime();
        } else if(script.time > 0){
        //    print(script.time);
            secondsOnes = Number(String(script.time).charAt(0));
            secondsTens = Number(String(script.time).charAt(0));
            
           script.columns[0].mainPass.baseTex = script.timerTextures[0];
           script.columns[1].mainPass.baseTex = script.timerTextures[secondsOnes];
        
           script.time -= eventData.getDeltaTime();
       } else{
           script.time = 0;
            print("exercise complete!");
    
       }
    }
});




