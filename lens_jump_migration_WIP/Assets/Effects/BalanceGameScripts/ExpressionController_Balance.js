// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expression
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
  DetermineJump();
}

/***
* Update opacity of mask based on expression weight
*/
function UpdateVisual(visualComponent) {
     alpha = GetAdjustedWeight();
     color = visualComponent.getMaterial(0).getPass(0).baseColor;
     visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
 }

/***
* Adjust expression weight for sensitivity
*/
function GetAdjustedWeight(){
  var weight = GetRawExpressionWeight();
  var adjusted_weight = weight;

  return adjusted_weight;
}

function GetRawExpressionWeight(){
  return script.faceMesh.mesh.control.getExpressionWeightByName(script.expression);
}

/**
 * Calculate jump amount based on sensitivity
 * Send jump to sphere controller 
 */
function DetermineJump(){
  var weight = GetAdjustedWeight();
  pubSub.publish(pubSub.EVENTS.SetJumpAmount, weight); 
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

