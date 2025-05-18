// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expressionRight
// @input string expressionLeft
// @input string displayText
// @input string finishText
// @input number completedReps
// @input number requiredReps
// @input number minExpressionValue
// @input number expressionIndex

const pubSub = require("./PubSubModule");
var color;
script.target.enabled = false;

/***
* Called once when onAwake
*/
function Initialize() {
// Set initial values
color = script.target.getMaterial(0).getPass(0).baseColor;
// Display prompt text
pubSub.publish(pubSub.EVENTS.SetExpressionRequiredRepText,  script.requiredReps.toString());
pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.displayText);
SetEvents();
}

/***
* Set functions to be called every frame
*/
function SetEvents() {
  var updateEvent = script.createEvent("UpdateEvent");
  updateEvent.bind(OnUpdate);
}

/***
* Things to be called every frame
*/
function OnUpdate(){
  UpdateVisual(script.target);
  DetermineBalance();
}

/***
* Update opacity of mask based on expression weight
*/
function UpdateVisual(visualComponent) {
     alpha = GetCombinedExpressionWeight();
     color = visualComponent.getMaterial(0).getPass(0).baseColor;
     visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
 }

/**
* Gets the raw expression weight for both expressions.
*/
function GetCombinedExpressionWeight(){
  var leftWeight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionLeft);
  var rightWeight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionRight);
  var combinedWeight = (leftWeight + rightWeight) / 2
  return combinedWeight
}

/**
 * Calculate balance base on sensitivity
 * Send rotation to platform controller 
 */
function DetermineBalance(){
  var leftWeight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionLeft);
  var rightWeight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionRight);
  var difference = Math.abs(leftWeight - rightWeight) / 0.1
  if (difference <= global.Difficulty){
    if (difference < 0.2) {
      //print( "Sens " +   Math.round( global.Sensitivity*100)/100 +  " diff " +  Math.round(difference*100)/100 + " right " +  Math.round(rightWeight*100)/100 + " left " + Math.round(leftWeight*100)/100  + "balanced");
      pubSub.publish(pubSub.EVENTS.SetPlatformRotation, 0);
    }
    else {
      //print(" Sens " +   Math.round( global.Sensitivity*100)/100  + " diff " + Math.round(difference*100)/100  +  " right " +  Math.round(rightWeight*100)/100 + " left " + Math.round(leftWeight*100)/100  + " imbalanced");
      var rotDeg = (leftWeight - rightWeight) * 100;
      pubSub.publish(pubSub.EVENTS.SetPlatformRotation, rotDeg);
    }
  }

}


/*SUBSCRIPTIONS*/

/***
* Enable this script/exercise. 
* Initialize values
* Enable visuals
* Start detecting on frame update
*/
pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, (data) => {
  if (data == script.expressionIndex)
  {
    script.enabled = true;
    script.target.enabled = true;
    Initialize();
  }
  else
  {
    script.enabled = false;
    script.target.enabled = false;
  }
});

