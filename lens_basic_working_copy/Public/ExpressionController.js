// -----JS CODE-----
// @input Component.ScriptComponent sliderScript
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expression
// @input string displayText
// @input number completedReps
// @input number requiredReps
// @input number minExpressionValue
// @input bool midRep

const pubSub = require("./PubSubModule");
let minExpressionValue = global.ExpressionMinValues[script.expression];
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
     if (adjustedWeight > 0.125 && script.midRep !== true){
        script.midRep = true;
        script.completedReps += 1
        pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());
     }

     var rawWeight = GetRawExpressionWeight();
     // print("raw " + rawWeight)
     if (rawWeight <= 0.125 && script.midRep === true){
        script.midRep = false;
     }
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

 /***
  * Always set reps back to 0 when leave a exercise
  */
pubSub.subscribe(pubSub.EVENTS.PreviousButtonClicked, () => {
    script.completedReps = 0;
    pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  script.completedReps.toString());
});

function WithInRange(input1, input2, deviation)
{
 var deviation = 0.005;
 return Math.abs(input1 - input2) <= deviation;
}