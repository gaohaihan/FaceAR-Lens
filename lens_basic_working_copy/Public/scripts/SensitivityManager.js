// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.RenderMeshVisual faceMesh

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
