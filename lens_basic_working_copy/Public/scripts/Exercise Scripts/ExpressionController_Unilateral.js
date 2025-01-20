// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh
// @input string expression
// @input string displayText
// @input string finishText
// @input number completedSets
// @input number requiredSets
// @input number completedReps
// @input number requiredReps
// @input number baseDifficulty
// @input number expressionIndex

const pubSub = require("../Exercise Scripts/PubSubModule");
var color;
var difficulty;
var midRep;
var currentDifficulty=0 
var minDifficulty = 0; 
// face mask visual disabled by default
script.target.enabled = false;

/***
* Called once when onAwake
*/
 function Initialize() {
   // Set initial values
   pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "please look at the camera for 5s");

   midRep = false;
   color = script.target.getMaterial(0).getPass(0).baseColor;
   difficulty = global.Difficulty;
 
   // Display prompt text
   pubSub.publish(pubSub.EVENTS.SetExpressionRequiredSetText,  script.requiredSets.toString());
   pubSub.publish(pubSub.EVENTS.SetExpressionRequiredRepText,  script.requiredReps.toString());
   DisableBilateralDetection();
   SetEvents();
}

/***
* Set functions to be called every frame
*/
function SetEvents() {
  script.createEvent("UpdateEvent").bind( () => {
    if (timer < 5){
      var temp = GetRawExpressionWeight();
      print("test" + temp.toString());
      minDifficulty = temp + 0.05;
      currentDifficulty = minDifficulty;
      timer += getDeltaTime();
    } else{
      OnUpdate();
    }
  });
}

/***
* Things to be called every frame
*/
function OnUpdate(){
  pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.displayText);
  difficulty = global.Difficulty;
  CountReps();
  UpdateVisual(script.target);
  UpdateCurrentDifficulty();
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
  currentDifficulty = minDifficulty / ( 1 - difficulty);
}

/**
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
    pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString() );
    
    var rawWeight = GetRawExpressionWeight();
    if (rawWeight > currentDifficulty && midRep !== true){
        midRep = true;
        script.completedReps += 1
        // Increment sets when the current set is finished
        if (script.completedReps >= script.requiredReps){
            script.completedSets += 1;
            script.completedReps = 0;
        }
        pubSub.publish(pubSub.EVENTS.SetExpressionSetText,  script.completedSets.toString() );
        pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString() );
    }
    
    var rawWeight = GetRawExpressionWeight();
    if (rawWeight <= currentDifficulty && midRep === true){
        midRep = false;
    }
}

/***
* Disable bilateral UI since it is not applicable to this exercise
*/
function DisableBilateralDetection() {
    pubSub.publish(pubSub.EVENTS.SetBilateralDetection, false);
   }


function GetRawExpressionWeight(){
  var weight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expression);
  DisplayDebug(weight);
  return weight;
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
function DisplayDebug(weight){
  pubSub.publish(pubSub.EVENTS.SetMinExpressionWeightText,  currentDifficulty.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetCombinedText, weight.toFixed(3).toString());
  pubSub.publish(pubSub.EVENTS.SetLeftDebugText,"null");
  pubSub.publish(pubSub.EVENTS.SetRightDebugText, "null");

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
  if (data === script.expressionIndex)
  {
    script.enabled = true;
    script.target.enabled = true;
    script.completedSets = 0;
    script.completedReps = 0;
    pubSub.publish(pubSub.EVENTS.SetExpressionSetText, script.completedSets.toString());
    pubSub.publish(pubSub.EVENTS.SetExpressionRepText, script.completedReps.toString());
    Initialize();
  }
  else
  {
    script.enabled = false;
    script.target.enabled = false;
  }
});
