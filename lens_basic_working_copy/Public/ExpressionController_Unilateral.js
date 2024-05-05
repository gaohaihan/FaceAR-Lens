// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expression
// @input string displayText
// @input number completedReps
// @input number requiredReps
// @input number minExpressionValue
// @input number expressionIndex

const pubSub = require("./PubSubModule");
var minExpressionValue = global.ExpressionMinValues[script.expression];
var color;
var sensitivity;
var midRep;

/***
* Called once when onAwake
*/
function Initialize() {
  // Set initial values
  midRep = false;
  color = script.target.getMaterial(0).getPass(0).baseColor;
  sensitivity = global.Sensitivity;

  // Display prompt text
  pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.displayText);

  DisableBilateralDetection();
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
  // todo is sensitivity a per exercise or global thing?
  sensitivity = global.Sensitivity;
  CountReps();
  UpdateVisual(script.target);
}

/***
* Update opacity of mask based on expression weight
*/
function UpdateVisual(visualComponent) {
     var alpha = GetAdjustedWeight();
     color = visualComponent.getMaterial(0).getPass(0).baseColor;
     visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
 }

// TODO: Still trying to figure out how to count reps when a persons base line values may differ significantly
/***
* Count completed reps, expression must return to base line bf another rep is counted.
*/
function CountReps() {
    // Update rep count text
     pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());

     var adjustedWeight = GetAdjustedWeight();
     //print("adjusted " + adjustedWeight)
     if (adjustedWeight > script.minExpressionValue && midRep !== true){
        midRep = true;
        script.completedReps += 1
        pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());
     }

     var rawWeight = GetRawExpressionWeight();
     // print("raw " + rawWeight)
     if (rawWeight <= script.minExpressionValue && midRep === true){
        midRep = false;
     }
 }

/***
* Disable bilateral UI since it is not applicable to this exercise
*/
function DisableBilateralDetection() {
    pubSub.publish(pubSub.EVENTS.SetBilateralDetection, false);
   }

/***
* Adjust expression weight for sensitivity
*/
function GetAdjustedWeight(){
    var weight = GetRawExpressionWeight();
    var adjusted_weight = weight * sensitivity;

    return adjusted_weight;
}

function GetRawExpressionWeight(){
    return script.faceMesh.mesh.control.getExpressionWeightByName(script.expression);
}


/*SUBSCRIPTIONS*/
/***
* Enable this script/exercise
* Initialize values
* Disable/enable visuals
* Start detecting on frame update
* Always set reps back to 0 when leave a exercise
*/
pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, (data) => {
  if (data == script.expressionIndex)
  {
    script.enabled = true;
    script.target.enabled = true;
    script.completedReps = 0;
    pubSub.publish(pubSub.EVENTS.SetExpressionRepText, script.completedReps.toString());
    Initialize();
  }
  else
  {
    script.enabled = false;
    script.target.enabled = false;
  }
});
