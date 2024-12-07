// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh

const pubSub = require("./PubSubModule");
global.Sensitivity = 0.5;
global.ExpressionMinValues = {};

script.api.SensitivitySlider = function(){
    SetSensitivity();
 }

  /***
  * Toggle setting controls visibility
  */
 script.api.SettingsToggle = function(){
      script.sensitivityUI.enabled = !script.sensitivityUI.enabled;
      script.bilateralUI.enabled = !script.bilateralUI.enabled;
  }

  /***
  * Set value of global sensitivity to value of slider when changed.
  */
  function SetSensitivity(){
    var sliderValue = script.sliderScript.api.getSliderValue();
    // Dont allow to go to 1 bc then the slider says inf and cannot be displayed.
    if (sliderValue > 0.9){
      sliderValue = 0.9
    }
    //global.Sensitivity = sliderValue;
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
