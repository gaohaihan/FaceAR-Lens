// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expressionRight
// @input string expressionLeft
// @input string displayText
// @input number completedReps
// @input number requiredReps
// @input number minExpressionValue
// @input number expressionIndex

const pubSub = require("./PubSubModule");
//let minExpressionValue = global.ExpressionMinValues[script.expressionRight];
var midRep;
var color;
var sensitivity;
var isRightDetectionOn;
var isLeftDetectionOn;

/***
* Called once when onAwake
*/
function Initialize() {
print("initalized");
// Set initial values
midRep = false;
color = script.target.getMaterial(0).getPass(0).baseColor;
sensitivity = global.Sensitivity;
// Display prompt text
pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.displayText);
SetBilateralDetection();
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
     alpha = GetAdjustedWeight();
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
     //print("raw " + rawWeight)
     if (rawWeight <= script.minExpressionValue && midRep === true){
       midRep = false;
     }
 }

/***
* Publish expressions values for bilateral detection so the UI reflects its values.
*/
function SetBilateralDetection() {
// set values to true for first time.
  if (isLeftDetectionOn == null)
    isLeftDetectionOn = true;
  if (isRightDetectionOn == null)
    isRightDetectionOn = true;

  // enable bilateral controls
  pubSub.publish(pubSub.EVENTS.SetBilateralDetection, true);
  // set right/left buttons on/off
  pubSub.publish(pubSub.EVENTS.SetBilateralDetection_Left, isLeftDetectionOn);
  pubSub.publish(pubSub.EVENTS.SetBilateralDetection_Right, isRightDetectionOn);

 }

/***
* Adjust expression weight for sensitivity.
*/
function GetAdjustedWeight(){
  var weight = GetRawExpressionWeight();
  var adjusted_weight = weight * sensitivity;

  return adjusted_weight;
}

/**
* Gets the raw expression weight for both or one side of the expression.
*/
function GetRawExpressionWeight(){
var leftWeight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionLeft);
var rightWeight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionRight);

if (!isLeftDetectionOn && !isRightDetectionOn ){
  print("an error occured and both left and right side detection is off for expression")
}

if (!isLeftDetectionOn){
  return rightWeight;
}

if (!isRightDetectionOn){
  return leftWeight;
}

var combinedWeight = (leftWeight + rightWeight) / 2
return combinedWeight
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
  if(data == script.expressionIndex)
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

/***
* Determine if should detect left side movement based on UI buttons being toggled
*/
pubSub.subscribe(pubSub.EVENTS.ToggleBilateralDetection_Left, (data) => {
  isLeftDetectionOn = data
  print("left is" + isLeftDetectionOn)
});

/***
* Determine if should detect right side movement based on UI buttons being toggled
*/
pubSub.subscribe(pubSub.EVENTS.ToggleBilateralDetection_Right, (data) => {
  isRightDetectionOn = data
  print("right is" + isRightDetectionOn)
});
