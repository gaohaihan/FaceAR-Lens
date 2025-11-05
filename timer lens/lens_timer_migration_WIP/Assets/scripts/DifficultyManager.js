// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh

const pubSub = require("./PubSubModule");
global.Difficulty = 0.2;

script.SetDifficulty = SetDifficulty;

  /***
  * Set value of global Difficulty to value of slider when changed.
  */
  function SetDifficulty(){
    var sliderValue = script.sliderScript.sliderValue;
  //  print("slider value " + sliderValue);
    // Dont allow to go to 1 bc then the slider says inf and cannot be displayed.
    if (sliderValue > 0.9){
      sliderValue = 0.9
    }
    // Uncomment for local development
   global.Difficulty = sliderValue;
 }