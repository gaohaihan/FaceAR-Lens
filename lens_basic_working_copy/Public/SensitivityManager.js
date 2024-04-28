// -----JS CODE-----
// @input SceneObject sensitivitySlider
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh

const pubSub = require("./PubSubModule");
global.Sensitivity = 0.5;
global.ExpressionMinValues = {};

script.api.SensitivitySlider = function(){
    //print(global.Sensitivity);
    SetSensitivity();
 }

 // Toggle slider visibility
 script.api.sliderToggle = function(){
    // print("slider toggle");
      script.sensitivitySlider.enabled = !script.sensitivitySlider.enabled;
  }

 // Set value of global sensitivity to value of slider when changed.
  function SetSensitivity(){
    var sliderValue = script.sliderScript.api.getSliderValue();
    global.Sensitivity = sliderValue;
 }

// get the resting value for all expressions
 function GetExpressionMinValues(){
   let expressionsInSequence = Object.values(pubSub.EXPRESSIONS)
    expressionsInSequence.forEach(element => {
      ExpressionMinValues[element] = script.faceMesh.mesh.control.getExpressionWeightByName(element);
   });
   print("wtf");
   print(ExpressionMinValues[pubSub.EXPRESSIONS.BrowsUpCenter]);
 }

pubSub.subscribe(pubSub.EVENTS.StartButtonClicked,
   GetExpressionMinValues
);

