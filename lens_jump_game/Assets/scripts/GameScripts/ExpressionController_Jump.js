// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh
// @input string finishText
// @input number baseDifficulty
// @input number expressionIndex
// @input Component.ScriptComponent apiScript

const pubSub = require("../PubSubModule");

global.requiredSets = 3;
global.requiredReps = 5;

var color;
var difficulty;
var midRep;
var currentDifficulty = 0
var BaseExpressionValue = 0;
var expression;
var displayText;
// face mask visual disabled by default
script.target.enabled = false;
global.timerUpdate = 0;

/***
* Called once when onAwake
*/
/***
* Called once when onAwake
*/
function InitializeUserBaseExpressionValue() {
    var functionsToCallAfterDelay = [Initialize, BindFunctionToRunEveryUpdate, UnPause]

    pubSub.publish(pubSub.EVENTS.Pause);

    StartDelay(3, functionsToCallAfterDelay);
    expression = global.Expression.toString();
    displayText = global.Expression.toString();
    GetBaseExpressionValue();

    function UnPause(){
        pubSub.publish(pubSub.EVENTS.UnPause)
    }
}

function Initialize(){
    // Set initial values
    currentDifficulty = BaseExpressionValue + 0.01;
    script.apiScript.sendDataToSite('sensitivity', currentDifficulty);

    midRep = false;
    color = script.target.getMaterial(0).getPass(0).baseColor;
    difficulty = global.Difficulty;
    //print("difficulty" +global.Difficulty);
    DisableBilateralDetection();

    // Display prompt text
    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, displayText);
}

/***
* Set functions to be called every frame
*/
function BindFunctionToRunEveryUpdate(eventName, methodsToBind) {
  var updateEvent = script.createEvent("UpdateEvent");
  updateEvent.bind(OnUpdate);

}

/***
* Grab user base expression values
*/
function GetBaseExpressionValue() {
  pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "Initializing, please not move for 3s");
  BaseExpressionValue = GetRawExpressionWeight();
}

/***
* Start with a delay and invoke methods in list after delay complete
*/
function StartDelay(seconds, functionList){
   var delayedEvent = script.createEvent("DelayedCallbackEvent");
   delayedEvent.bind(function(eventData)
   {
    executeFunctions(eventData, functionList);
   });
   delayedEvent.reset(seconds);

}

/**
 * function that executes all given functions
 */
function executeFunctions(eventData, functions) {
  functions.forEach(func => func(eventData));
}

/***
* Things to be called every frame
*/
function OnUpdate(){
  difficulty = global.Difficulty;

  if (global.Pause == true)
    return;

  UpdateVisual(script.target);
  UpdateCurrentDifficulty();
  DetermineJump();
}

/***
* Update opacity of mask based on expression weight
*/
function UpdateVisual(visualComponent) {
  var alpha = GetRawExpressionWeight();
  color = visualComponent.getMaterial(0).getPass(0).baseColor;
  visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
}

 /***
* Set the current minimum value needed to count an expression display
*/
function UpdateCurrentDifficulty(){

  var minDifficulty = BaseExpressionValue + 0.05
  currentDifficulty = minDifficulty / ( 1 - difficulty);

  // cannot be detected over 1
  if (currentDifficulty > 1)
    currentDifficulty = 1;
}

/***
* Disable bilateral UI since it is not applicable to this exercise
*/
function DisableBilateralDetection() {
  pubSub.publish(pubSub.EVENTS.SetBilateralDetection, false);
}


function GetRawExpressionWeight(){
  var weight = script.faceMesh.mesh.control.getExpressionWeightByName(expression.toString());
  DisplayDebug(weight);
  return weight;
}

/**
 * Display value for debugging
 */
function DisplayDebug(weight){
  pubSub.publish(pubSub.EVENTS.SetMinExpressionWeightText,  currentDifficulty.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetCombinedText, weight.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetLeftDebugText,"null");
  pubSub.publish(pubSub.EVENTS.SetRightDebugText, "null");

}

/**
 * Calculate jump amount based on sensitivity
 * Send jump to sphere controller
 */
function DetermineJump(){
  var weight = GetRawExpressionWeight();
   //  Listened to by sphereController
  pubSub.publish(pubSub.EVENTS.SetJumpAmount, weight);
}


/*SUBSCRIPTIONS*/
/***
* Enable this script/exercise if the parameter matched the expressionIndex value.
* Initialize value
* Disable/enable visuals
* Start detecting on frame update
* Always set reps back to 0 when leave a exercise
*/
pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, (data) => {
  if (data === script.expressionIndex)
  {
    script.enabled = true;
    script.target.enabled = true;
    InitializeUserBaseExpressionValue();
  }
  else
  {
    script.enabled = false;
    script.target.enabled = false;
  }
});

/**
 * Pause exercise and reinit base expression value.
 */
pubSub.subscribe(pubSub.EVENTS.ReInitializeBaseExpression, () => {
  InitializeUserBaseExpressionValue();
});

