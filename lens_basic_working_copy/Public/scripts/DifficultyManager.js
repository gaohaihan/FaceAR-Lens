// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh

const pubSub = require("./PubSubModule");
global.Difficulty = 0.5;

script.api.DifficultySlider = function(){
    SetDifficulty();
 }

  /***
  * Set value of global Difficulty to value of slider when changed.
  */
  function SetDifficulty(){
    var sliderValue = script.sliderScript.api.getSliderValue();
    // Dont allow to go to 1 bc then the slider says inf and cannot be displayed. 
    if (sliderValue > 0.9){
      sliderValue = 0.9
    }
    //global.Difficulty = sliderValue;
 }

// TODO use to determine user resting expression values.
  /***
  * get the resting value for all expressions
  */
 function GetExpressionMinValues(){
   let expressionsInSequence = Object.values(pubSub.EXPRESSIONS)
    expressionsInSequence.forEach(element => {
      ExpressionMinValues[element] = script.faceMesh.mesh.control.getExpressionWeightByName(element);
   });
  // print(ExpressionMinValues[pubSub.EXPRESSIONS.BrowsUpCenter]);
 }

pubSub.subscribe(pubSub.EVENTS.StartButtonClicked,
   GetExpressionMinValues
);
