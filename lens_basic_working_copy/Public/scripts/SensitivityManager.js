// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh
// @input Asset.RemoteServiceModule remoteServiceModule
// @input Component.ScriptComponent apiScript

//import module
const Module = require("./button_pressed API Module");
const ApiModule = new Module.ApiModule(script.remoteServiceModule);

const pubSub = require("./PubSubModule");
global.Sensitivity = 0.5;
global.ExpressionMinValues = {};


  /***
  * Toggle setting controls visibility
  */
 script.api.SettingsToggle = function(){
      script.sensitivityUI.enabled = !script.sensitivityUI.enabled;
      script.bilateralUI.enabled = !script.bilateralUI.enabled;
  }

<<<<<<< Updated upstream
=======
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
>>>>>>> Stashed changes

// TODO use to determine user resting expression values.
  /***
  * get the resting value for all expressions
  * 
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

var event = script.createEvent("UpdateEvent");
event.bind(function(eventdata){
    script.apiScript.api.makeRequest()
});



