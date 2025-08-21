// -----JS CODE-----
// @input Component.ScriptComponent sliderScript

const pubSub = require("../PubSubModule");
global.Speed = 0.5

script.SetSpeed = SetSpeed;

  /***
  * Set value of global Speed to value of slider when changed.
  */
  function SetSpeed(){
    var sliderValue = script.sliderScript.sliderValue;
   // print("speed slider value " + sliderValue);
    global.Speed = sliderValue;
 }