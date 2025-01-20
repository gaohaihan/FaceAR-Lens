// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh
// @input string expressionRight
// @input string expressionLeft
// @input string displayText
// @input string finishText
// @input number completedSets
// @input number requiredSets
// @input number completedReps
// @input number requiredReps
// @input number baseDifficulty
// @input number expressionIndex

const pubSub = require("../Exercise Scripts/PubSubModule");

var midRep;
var color;
var difficulty;
var leftBaseExpressionValue = 0;
var rightBaseExpressionValue = 0;
var isRightDetectionOn;
var isLeftDetectionOn;
var currentDifficulty = 0;
// face mask visual disabled by default
script.target.enabled = false;

/***
* Called once when onAwake
*/
function StartExercise() {
  // Wait for 3 seconds before executing a function
  var delayedEvent = script.createEvent("DelayedCallbackEvent");
  delayedEvent.bind(function(eventData)
  {
    Initialize();
    SetEvents();
  });
  // Start with a 3 second delay
  delayedEvent.reset(3);
  GetBaseExpressionValue();
}

function Initialize(){
  // Set initial values
  currentDifficulty = (leftBaseExpressionValue + rightBaseExpressionValue) / 2 + 0.05;
  print("test currnt" + currentDifficulty.toString());
  midRep = false;
  color = script.target.getMaterial(0).getPass(0).baseColor;
  difficulty = global.Difficulty;
  SetBilateralDetection();

  // Display prompt text
  pubSub.publish(pubSub.EVENTS.SetExpressionRequiredSetText,  script.requiredSets.toString());
  pubSub.publish(pubSub.EVENTS.SetExpressionRequiredRepText,  script.requiredReps.toString());
  pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.displayText);
}

/***
* Set functions to be called every frame
*/
function SetEvents() {
  var updateEvent = script.createEvent("UpdateEvent");
  updateEvent.bind(OnUpdate);
}

/***
* Grab user base expression values
*/
function GetBaseExpressionValue() {
  pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "Initializing, please not move for 3s");
  leftBaseExpressionValue = GetRawLeftWeight();
  print("test left" + leftBaseExpressionValue.toString())
  rightBaseExpressionValue = GetRawRightWeight();
  print("test right" + rightBaseExpressionValue.toString())
}

/***
* Things to be called every frame
*/
function OnUpdate(){
  difficulty = global.Difficulty;
  CountReps();
  UpdateCurrentDifficulty();
  UpdateVisual(script.target);
}

/***
* Update opacity of mask based on expression weight
*/
function UpdateVisual(visualComponent) {
     alpha = GetRawExpressionWeight();
     color = visualComponent.getMaterial(0).getPass(0).baseColor;
     visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
 }

/***
* Set the current minimum value needed to count an expression display
*/
function UpdateCurrentDifficulty(){
  var currentMinDifficulty;
 
  if (isLeftDetectionOn && isRightDetectionOn ){
    currentMinDifficulty = ((leftBaseExpressionValue + rightBaseExpressionValue)/2) + 0.05
  }
  
  if (!isRightDetectionOn){
    currentMinDifficulty = rightBaseExpressionValue + 0.05
  }

  if (!isLeftDetectionOn){
    currentMinDifficulty = leftBaseExpressionValue + 0.05
  }

  currentDifficulty = currentMinDifficulty / ( 1 - difficulty);

  // cannot be detected over 1
  if (currentDifficulty > 1)
    currentDifficulty = 1;
}

/***
* Count completed reps, expression must return to base line bf another rep is counted.
*/
function CountReps() {

    //stop counting when hit required sets
    if (script.completedSets >= script.requiredSets && script.completedSets >= script.requiredSets){
        Finished();
        return;
    }
    
    // Update rep count text
    pubSub.publish(pubSub.EVENTS.SetExpressionSetText,  script.completedSets.toString() );
     pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());
    
     var rawWeight = GetRawExpressionWeight();
     //print("adjusted " + adjustedWeight)
     if (rawWeight > currentDifficulty && midRep !== true){
        midRep = true;
        script.completedReps += 1
        if (script.completedReps >= script.requiredReps){
            script.completedSets += 1;
            script.completedReps = 0;
        }
        pubSub.publish(pubSub.EVENTS.SetExpressionSetText,  script.completedSets.toString() );
        pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());
     }
    
     var rawWeight = GetRawExpressionWeight();
     //print("raw " + rawWeight)
     if (rawWeight <= currentDifficulty && midRep === true){
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

/**
* Gets the raw expression weight for both or one side of the expression.
* Note that the expression weights are flipped.
* i.e left = on, return right weight.
*/
function GetRawExpressionWeight(){
  var leftWeight = GetRawLeftWeight();
  var rightWeight = GetRawRightWeight();
  var combinedWeight = (leftWeight + rightWeight) / 2
  DisplayDebug(leftWeight, rightWeight, combinedWeight)

  if (!isLeftDetectionOn && !isRightDetectionOn ){
    print("an error has occurred and both left and right side detection is off for expression")
  }

  if (!isRightDetectionOn){
    return rightWeight;
  }

  if (!isLeftDetectionOn){
    return leftWeight;
  }

  return combinedWeight
}

function GetRawLeftWeight(){
  return script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionLeft);
}

function GetRawRightWeight(){
  return  script.faceMesh.mesh.control.getExpressionWeightByName(script.expressionRight);
}
/**
 * Display finished text
 */
function Finished(){
  if (script.completedSets >= script.requiredSets && script.completedSets >= script.requiredSets){
    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.finishText);
  }
}

/**
 * Display value for debugging
 */
function DisplayDebug(leftWeight, rightWeight, combinedWeight){
  if (!isRightDetectionOn){
    leftWeight = 0
  }

  if (!isLeftDetectionOn){
    rightWeight = 0
  }

  pubSub.publish(pubSub.EVENTS.SetMinExpressionWeightText,  currentDifficulty.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetCombinedText, combinedWeight.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetLeftDebugText, rightWeight.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetRightDebugText, leftWeight.toFixed(3).toString());

}

/*SUBSCRIPTIONS*/

/***
* Enable this script/exercise if the parameter matched the expressionIndex value. 
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
    script.completedSets = 0;
    script.completedReps = 0;
    pubSub.publish(pubSub.EVENTS.SetExpressionSetText, script.completedSets.toString());
    pubSub.publish(pubSub.EVENTS.SetExpressionRepText, script.completedReps.toString());
    StartExercise();
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
