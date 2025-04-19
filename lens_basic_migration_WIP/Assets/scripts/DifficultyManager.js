// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh

const pubSub = require("./PubSubModule");
global.Difficulty = 0.5;

script.DifficultySlider = SetDifficulty();

  /***
  * Set value of global Difficulty to value of slider when changed.
  */
  function SetDifficulty(){
    var sliderValue = script.sliderScript.currentValue;
   // var sliderValue = script.sliderScript.currentValue;
    // Dont allow to go to 1 bc then the slider says inf and cannot be displayed. 
    if (sliderValue > 0.9){
      sliderValue = 0.9
    }
    // Uncomment for local development
   global.Difficulty = sliderValue;
 }