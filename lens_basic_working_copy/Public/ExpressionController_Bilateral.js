// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expressionRight
// @input string expressionLeft
// @input string displayText
// @input number completedReps
// @input number requiredReps
// @input number minExpressionValue
// @input bool midRep
// @input bool isRightDetectionOn = true
// @input bool isLeftDetectionOn = true

const pubSub = require("./PubSubModule");
//let minExpressionValue = global.ExpressionMinValues[script.expressionRight];
let color = script.target.getMaterial(0).getPass(0).baseColor;
let sensitivity = global.Sensitivity;
UpdateVisual(script.target);
CountReps();
//print(minExpressionValue);

  /***
  * Update opacity of mask based on expression weight
  */
function UpdateVisual(visualComponent) {
    // Display prompt text
    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, script.displayText);

    // Set alpha of mask
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
     if (adjustedWeight > script.minExpressionValue && script.midRep !== true){
        script.midRep = true;
        script.completedReps += 1
        pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());
     }

     var rawWeight = GetRawExpressionWeight();
     //print("raw " + rawWeight)
     if (rawWeight <= script.minExpressionValue && script.midRep === true){
        script.midRep = false;
     }
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

  if (!script.isLeftDetectionOn && !script.isRightDetectionOn ){
    print("an error occure and both left and right side detection is off for expression")
  }

  if (!script.isLeftDetectionOn){
    return rightWeight;
  }

  if (!script.isRightDetectionOn){
    return leftWeight;
  }

  var combinedWeight = (leftWeight + rightWeight) / 2
  return combinedWeight
}

 /***
  * Always set reps back to 0 when leave a exercise
  */
pubSub.subscribe(pubSub.EVENTS.PreviousButtonClicked, () => {
    script.completedReps = 0;
    pubSub.publish(pubSub.EVENTS.SetExpressionRepText, script.completedReps.toString());
});

/***
  * Determine if should detect left side movement
  */
pubSub.subscribe(pubSub.EVENTS.ToggleBilateralDetection_Left, (data) => {
  script.isLeftDetectionOn = data
  print("left is" + script.isLeftDetectionOn)
});

/***
  * Determine if should detect right side movement
  */
pubSub.subscribe(pubSub.EVENTS.ToggleBilateralDetection_Right, (data) => {
  script.isRightDetectionOn = data
  print("right is" + script.isRightDetectionOn)
});


function WithInRange(input1, input2, deviation)
{
 var deviation = 0.005;
 return Math.abs(input1 - input2) <= deviation;
}